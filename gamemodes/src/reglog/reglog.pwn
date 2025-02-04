/*
  _   _  ____  _____  _____   _____          _____  _____  ______    ____  __  __ _____  
 | \ | |/ __ \|  __ \|  __ \ / ____|   /\   |  __ \|  __ \|  ____|  / __ \|  \/  |  __ \ 
 |  \| | |  | | |__) | |  | | |       /  \  | |__) | |__) | |__    | |  | | \  / | |__) |
 | . ` | |  | |  _  /| |  | | |      / /\ \ |  ___/|  ___/|  __|   | |  | | |\/| |  ___/ 
 | |\  | |__| | | \ \| |__| | |____ / ____ \| |    | |    | |____  | |__| | |  | | |     
 |_| \_|\____/|_|  \_\_____/ \_____/_/    \_\_|    |_|    |______|  \____/|_|  |_|_|     

 Developer: vostic
 Project start: 03/02/2025      

    File: reglog.pwn                                                     
                                                                                         
*/

#include <ysilib\YSI_Coding\y_hooks>

// Constants
#define MIN_PASSWORD_LENGTH 6
#define MAX_PASSWORD_LENGTH 32
#define MAX_FAILED_LOGINS 3


// San Fierro spawn locations
new const Float:SF_SpawnPoints[][] = {
    {-1982.7201, 885.2051, 45.2031, 90.0355},    // SF Spawn 1
    {-1941.9919, 867.5630, 38.5078, 282.3432},   // SF Spawn 2
    {-1912.6678, 882.4862, 35.2579, 307.1334}    // SF Spawn 3
};

// Player data
enum E_PLAYER_DATA {
    pID,
    pPassword[MAX_PASSWORD_LENGTH],
    pAge,
    pGender,
    pAccent[32],
    pFailedLogins,
    pLoginTime,
    bool:pLoggedIn
}
new PlayerData[MAX_PLAYERS][E_PLAYER_DATA];

// Available accents array
static const AccentsList[][] = {
    "American",
    "Colombian",
    "British",
    "Russian",
    "Mexican",
    "Italian"
    // Add more as needed
};

// Forward declarations
forward OnPlayerCheckAccount(playerid);
forward OnPasswordHash(playerid, hashid);
forward OnPasswordVerify(playerid, bool:success);
forward CheckPlayerAccount(playerid);
forward LocalLoginPlayer(playerid);
forward DelayedKick(playerid);
forward OnPlayerRegister(playerid);
forward OnLoadPlayerData(playerid);

// Static regex pattern for name validation
static Regex:g_CharNameRegex;

// Name validation function
stock CheckCharNameRegex(const nickname[])
{
    if(!g_CharNameRegex) 
    {
        g_CharNameRegex = Regex_New("^[A-Z][a-z]{2,9}_[A-Z][a-z]+([A-Z][a-z]+)?$");
        if(!g_CharNameRegex)
        {
            printf("[ERROR] Failed to create regex pattern for name validation");
            return 0;
        }
    }
    return Regex_Check(nickname, g_CharNameRegex);
}

// Dialogs
Dialog:DIALOG_LOGIN(playerid, response, listitem, string:inputtext[])
{
    if(!IsPlayerConnected(playerid)) return 0;
    if (!response) return Kick(playerid);
    
    // Store password temporarily for verification
    format(PlayerData[playerid][pPassword], MAX_PASSWORD_LENGTH, "%s", inputtext);
    
    new query[256];
    mysql_format(dbHandler, query, sizeof(query), 
        "SELECT id, password FROM players WHERE name = '%e' LIMIT 1", 
        ReturnPlayerName(playerid)
    );
    mysql_tquery(dbHandler, query, "OnPlayerLogin", "is", playerid, inputtext);
    return 1;
}

// Modified OnPlayerConnect
hook OnPlayerConnect(playerid)
{
    ResetPlayerData(playerid);
    
    if(!CheckCharNameRegex(ReturnPlayerName(playerid)))
    {
        SendServerMessage(playerid, "Invalid name format!");
        SendServerMessage(playerid, "Use: First_Last (e.g., Daniel_McCuffin, Maria_DeSanta)");
        SendServerMessage(playerid, "Rules: First name must be 3-10 characters, surname can have multiple capital parts.");
        SetTimerEx("DelayedKick", 5000, false, "i", playerid);
        return 0;
    }
    
    SetTimerEx("CheckPlayerAccount", 500, false, "i", playerid);
    return 1;
}

// Registration dialog sequence
Dialog:DIALOG_REGISTER_PASSWORD(playerid, response, listitem, string:inputtext[])
{
    if(!response) return Kick(playerid);
    
    if(strlen(inputtext) < MIN_PASSWORD_LENGTH)
    {
        return Dialog_Show(playerid, DIALOG_REGISTER_PASSWORD, DIALOG_STYLE_PASSWORD,
            "Registration - Password",
            "Password too short!\nPlease enter a password (min 6 characters):",
            "Next", "Exit"
        );
    }
    
    format(PlayerData[playerid][pPassword], MAX_PASSWORD_LENGTH, "%s", inputtext);
    
    Dialog_Show(playerid, DIALOG_REGISTER_AGE, DIALOG_STYLE_INPUT,
        "Registration - Age",
        "Please enter your character's age (18-80):",
        "Next", "Back"
    );
    return 1;
}

Dialog:DIALOG_REGISTER_AGE(playerid, response, listitem, string:inputtext[])
{
    if(!response) return Dialog_Show(playerid, DIALOG_REGISTER_PASSWORD, DIALOG_STYLE_PASSWORD,
        "Registration - Password",
        "Please enter a password (min 6 characters):",
        "Next", "Exit"
    );
    
    new age = strval(inputtext);
    if(age < 18 || age > 80)
    {
        return Dialog_Show(playerid, DIALOG_REGISTER_AGE, DIALOG_STYLE_INPUT,
            "Registration - Age",
            "Invalid age! Please enter your character's age (18-80):",
            "Next", "Back"
        );
    }
    
    PlayerData[playerid][pAge] = age;
    
    Dialog_Show(playerid, DIALOG_REGISTER_GENDER, DIALOG_STYLE_LIST,
        "Registration - Gender",
        "Male\nFemale",
        "Next", "Back"
    );
    return 1;
}

Dialog:DIALOG_REGISTER_GENDER(playerid, response, listitem, string:inputtext[])
{
    if(!response) return Dialog_Show(playerid, DIALOG_REGISTER_AGE, DIALOG_STYLE_INPUT,
        "Registration - Age",
        "Please enter your character's age (18-80):",
        "Next", "Back"
    );
    
    PlayerData[playerid][pGender] = listitem;
    
    new string[256];
    for(new i = 0; i < sizeof(AccentsList); i++)
    {
        format(string, sizeof(string), "%s%s\n", string, AccentsList[i]);
    }
    
    Dialog_Show(playerid, DIALOG_REGISTER_ACCENT, DIALOG_STYLE_LIST,
        "Registration - Accent",
        string,
        "Register", "Back"
    );
    return 1;
}

Dialog:DIALOG_REGISTER_ACCENT(playerid, response, listitem, string:inputtext[])
{
    if(!response) return Dialog_Show(playerid, DIALOG_REGISTER_GENDER, DIALOG_STYLE_LIST,
        "Registration - Gender",
        "Male\nFemale",
        "Next", "Back"
    );
    
    format(PlayerData[playerid][pAccent], 32, AccentsList[listitem]);
    
    // Start registration process
    bcrypt_hash(playerid, "OnPasswordHash", PlayerData[playerid][pPassword], BCRYPT_COST);
    return 1;
}

// Callbacks
forward OnPlayerLogin(playerid, const password[]);
public OnPlayerLogin(playerid, const password[])
{
    if (!cache_num_rows()) {
        Dialog_Show(playerid, DIALOG_REGISTER_PASSWORD, DIALOG_STYLE_PASSWORD,
            "Registration",
            "Welcome! Please enter a password to register:",
            "Register", "Exit"
        );
        return 1;
    }
    
    new dbPassword[BCRYPT_HASH_LENGTH];
    cache_get_value_name(0, "password", dbPassword, sizeof(dbPassword));
    cache_get_value_name_int(0, "id", PlayerData[playerid][pID]);
    
    bcrypt_verify(playerid, "OnPasswordVerify", password, dbPassword);
    return 1;
}

forward OnPasswordHash(playerid, hashid);
public OnPasswordHash(playerid, hashid)
{
    new hash[BCRYPT_HASH_LENGTH];
    bcrypt_get_hash(hash);
    
    new query[512], ip[16], gender[7];
    GetPlayerIp(playerid, ip, sizeof(ip));
    
    // Convert internal value to enum string
    format(gender, sizeof(gender), PlayerData[playerid][pGender] ? "Female" : "Male");
    
    mysql_format(dbHandler, query, sizeof(query), 
        "INSERT INTO players (name, password, age, gender, accent, ip, register_date) \
        VALUES ('%e', '%e', %d, '%e', '%e', '%e', NOW())",
        ReturnPlayerName(playerid), hash, PlayerData[playerid][pAge],
        gender,
        PlayerData[playerid][pAccent], ip
    );
    mysql_tquery(dbHandler, query, "OnPlayerRegister", "i", playerid);
}

forward OnPasswordVerify(playerid, bool:success);
public OnPasswordVerify(playerid, bool:success)
{
    if(success)
    {
        PlayerData[playerid][pLoggedIn] = true;
        PlayerData[playerid][pFailedLogins] = 0;
        
        new rand = random(sizeof(SF_SpawnPoints));
        SetSpawnInfo(playerid, 
            NO_TEAM,
            PlayerData[playerid][pGender] ? 192 : 1,
            SF_SpawnPoints[rand][0], 
            SF_SpawnPoints[rand][1], 
            SF_SpawnPoints[rand][2], 
            SF_SpawnPoints[rand][3],
            WEAPON_FIST, 0, WEAPON_FIST, 0, WEAPON_FIST, 0
        );
        
        // Clear chat before spawning
        for(new i = 0; i < 100; i++) SendClientMessage(playerid, -1, " ");
        
        SpawnPlayer(playerid);
        CallLocalFunction("LocalLoginPlayer", "i", playerid);
        SendServerMessage(playerid, "Successfully logged in! Welcome back to San Fierro!");
    }
    else
    {
        PlayerData[playerid][pFailedLogins]++;
        
        if(PlayerData[playerid][pFailedLogins] >= MAX_FAILED_LOGINS)
        {
            Kick(playerid);
            return 1;
        }
        
        Dialog_Show(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD,
            "Login",
            "Wrong password!\nPlease enter your password:",
            "Login", "Exit"
        );
    }
    return 1;
}

// Local function to handle post-login loading
public LocalLoginPlayer(playerid)
{
    LoadPlayerData(playerid);
    CallLocalFunction("OnPlayerLoaded", "i", playerid);
    SendServerMessage(playerid, "Welcome back, %s!", ReturnPlayerName(playerid));
    return 1;
}

// Functions
LoadPlayerData(playerid)
{
    new query[256];
    mysql_format(dbHandler, query, sizeof(query), 
        "SELECT * FROM players WHERE id = %d LIMIT 1", 
        PlayerData[playerid][pID]
    );
    mysql_tquery(dbHandler, query, "OnLoadPlayerData", "i", playerid);
}

// Hooks

hook OnGameModeInit(){
    
    print("Reglog module successfully loaded.");

    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if (PlayerData[playerid][pLoggedIn]) {
        SavePlayerData(playerid);
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

// Add cleanup in OnGameModeExit
hook OnGameModeExit()
{
    if(g_CharNameRegex)
    {
        Regex_Delete(g_CharNameRegex);
        g_CharNameRegex = Regex:0;
    }
    return 1;
}

// Add SavePlayerData function
SavePlayerData(playerid)
{
    if(!PlayerData[playerid][pLoggedIn]) return 0;
    
    new query[128];
    mysql_format(dbHandler, query, sizeof(query), 
        "UPDATE players SET last_login = NOW() WHERE id = %d",
        PlayerData[playerid][pID]
    );
    mysql_tquery(dbHandler, query);
    return 1;
}

// Rename this to be more descriptive
forward OnPlayerCheckAccount(playerid);
public OnPlayerCheckAccount(playerid)
{
    if(cache_num_rows() > 0)
    {
        // Account exists, show login dialog
        Dialog_Show(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD,
            "Login",
            "Welcome back!\nPlease enter your password:",
            "Login", "Exit"
        );
    }
    else
    {
        // No account found, show register dialog
        Dialog_Show(playerid, DIALOG_REGISTER_PASSWORD, DIALOG_STYLE_PASSWORD,
            "Registration",
            "Welcome! Please enter a password to register:",
            "Register", "Exit"
        );
    }
    return 1;
}

// Fix the CheckPlayerAccount function to use dbHandler
forward CheckPlayerAccount(playerid);
public CheckPlayerAccount(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    
    new query[128];
    mysql_format(dbHandler, query, sizeof(query), "SELECT id FROM players WHERE name = '%e' LIMIT 1", ReturnPlayerName(playerid));
    mysql_tquery(dbHandler, query, "OnPlayerCheckAccount", "i", playerid);
    return 1;
}

// Add missing forward for OnPlayerRegister
forward OnPlayerRegister(playerid);
public OnPlayerRegister(playerid)
{
    PlayerData[playerid][pID] = cache_insert_id();
    PlayerData[playerid][pLoggedIn] = true;
    
    new rand = random(sizeof(SF_SpawnPoints));
    SetSpawnInfo(playerid, 
        NO_TEAM,
        PlayerData[playerid][pGender] ? 192 : 1,
        SF_SpawnPoints[rand][0], 
        SF_SpawnPoints[rand][1], 
        SF_SpawnPoints[rand][2], 
        SF_SpawnPoints[rand][3],
        WEAPON_FIST, 0, WEAPON_FIST, 0, WEAPON_FIST, 0
    );
    
    // Clear chat before spawning
    for(new i = 0; i < 100; i++) SendClientMessage(playerid, -1, " ");
    
    SpawnPlayer(playerid);
    CallLocalFunction("LocalLoginPlayer", "i", playerid);
    SendServerMessage(playerid, "Successfully registered! Welcome to San Fierro!");
    return 1;
}

// Add missing forward for OnLoadPlayerData
forward OnLoadPlayerData(playerid);
public OnLoadPlayerData(playerid)
{
    if(cache_num_rows() > 0)
    {
        cache_get_value_name_int(0, "age", PlayerData[playerid][pAge]);
        cache_get_value_name(0, "accent", PlayerData[playerid][pAccent], 32);
        cache_get_value_name_int(0, "gender", PlayerData[playerid][pGender]);
    }
    return 1;
}

// Add error handling for queries
hook OnQueryError(errorid, const error[], const callback[], const query[], connectionHandle)
{
    printf("[MySQL] Error %d in %s: %s", errorid, callback, error);
    printf("[MySQL] Query: %s", query);
    return 1;
}

// Add delayed kick function
forward DelayedKick(playerid);
public DelayedKick(playerid)
{
    Kick(playerid);
    return 1;
}

// Add to your existing hooks
hook OnPlayerRequestClass(playerid, classid)
{
    return 0; // Disable class selection
}

hook OnPlayerRequestSpawn(playerid)
{
    return 0; // Disable manual spawning
}

// Modified OnPlayerSpawn
hook OnPlayerSpawn(playerid)
{
    if(!PlayerData[playerid][pLoggedIn])
    {
        Kick(playerid);
        return 0;
    }
    
    // Set player's spawn properties
    SetPlayerHealth(playerid, 100.0);
    SetPlayerArmour(playerid, 0.0);
    SetCameraBehindPlayer(playerid);
    
    // Optional: Freeze briefly to ensure proper spawn
    TogglePlayerControllable(playerid, false);
    SetTimerEx("UnfreezePlayer", 1000, false, "i", playerid);
    
    return 1;
}

// Add unfreeze function
forward UnfreezePlayer(playerid);
public UnfreezePlayer(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    TogglePlayerControllable(playerid, true);
    return 1;
}

// Getter functions for player data
stock GetPlayerAge(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    return PlayerData[playerid][pAge];
}

stock GetPlayerGender(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    return PlayerData[playerid][pGender];
}

stock GetPlayerAccent(playerid, accent[], size = sizeof(accent))
{
    if(!IsPlayerConnected(playerid)) return 0;
    format(accent, size, PlayerData[playerid][pAccent]);
    return 1;
}

stock GetPlayerLoginTime(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    return PlayerData[playerid][pLoginTime];
}

stock IsPlayerLoggedIn(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    return PlayerData[playerid][pLoggedIn];
}

// Reset function
stock ResetPlayerData(playerid)
{
    PlayerData[playerid][pLoggedIn] = false;
    PlayerData[playerid][pFailedLogins] = 0;
    PlayerData[playerid][pID] = 0;
    PlayerData[playerid][pPassword][0] = EOS;
    PlayerData[playerid][pAge] = 0;
    PlayerData[playerid][pGender] = 0;
    PlayerData[playerid][pAccent][0] = EOS;
    PlayerData[playerid][pLoginTime] = 0;
    return 1;
}
