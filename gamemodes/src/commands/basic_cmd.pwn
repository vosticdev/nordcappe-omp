/*
  _   _  ____  _____  _____   _____          _____  _____  ______    ____  __  __ _____  
 | \ | |/ __ \|  __ \|  __ \ / ____|   /\   |  __ \|  __ \|  ____|  / __ \|  \/  |  __ \ 
 |  \| | |  | | |__) | |  | | |       /  \  | |__) | |__) | |__    | |  | | \  / | |__) |
 | . ` | |  | |  _  /| |  | | |      / /\ \ |  ___/|  ___/|  __|   | |  | | |\/| |  ___/ 
 | |\  | |__| | | \ \| |__| | |____ / ____ \| |    | |    | |____  | |__| | |  | | |     
 |_| \_|\____/|_|  \_\_____/ \_____/_/    \_\_|    |_|    |______|  \____/|_|  |_|_|     

 Developer: vostic
 Project start: 03/02/2025      

    File: basic_cmd.pwn                                                        
                                                                                         
*/

#include <ysilib\YSI_Coding\y_hooks>

// Basic player commands
YCMD:help(playerid, params[], help)
{
    if(!PlayerData[playerid][pLoggedIn]) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");

    Dialog_Show(playerid, DIALOG_HELP, DIALOG_STYLE_LIST, 
        "Help Menu", 
        "General Commands\n\
        Account Commands\n\
        Character Commands\n\
        Update Log", 
        "Select", "Close"
    );
    return 1;
}

Dialog:DIALOG_HELP(playerid, response, listitem, string:inputtext[])
{
    if(!response) return 1;

    switch(listitem)
    {
        case 0: // General Commands
        {
            Dialog_Show(playerid, DIALOG_HELP_GENERAL, DIALOG_STYLE_MSGBOX,
                "General Commands",
                "/help - Show this menu\n\
                /stats - Show your statistics\n\
                /time - Show server time\n\
                /pm [id] [message] - Send private message\n\
                /loc - Show your current location",
                "Back", "Close"
            );
        }
        case 1: // Account Commands
        {
            Dialog_Show(playerid, DIALOG_HELP_ACCOUNT, DIALOG_STYLE_MSGBOX,
                "Account Commands",
                "/playtime - Show your playtime",
                "Back", "Close"
            );
        }
        case 2: // Character Commands
        {
            Dialog_Show(playerid, DIALOG_HELP_CHARACTER, DIALOG_STYLE_MSGBOX,
                "Character Commands",
                "/nameon - Enable nametags\n\
                /nameoff - Disable nametags\n\
                /me [action] - Roleplay action\n\
                /do [description] - Describe environment\n\
                /b [ooc chat] - Out of character chat",
                "Back", "Close"

            );
        }
        case 3: // Update Log
        {
            Dialog_Show(playerid, DIALOG_HELP_UPDATE, DIALOG_STYLE_MSGBOX,
                "Latest Updates",
                "Update 1.0.0 (03/02/2024):\n\
                - Initial release\n\
                - Added basic roleplay commands\n\
                - Added San Fierro spawn points\n\
                - Added accent system\n\n\
                Update 1.0.1 (Coming Soon):\n\
                - New features planned\n\
                - Bug fixes incoming",
                "Back", "Close"
            );
        }
    }
    return 1;
}

// Back button handling for sub-menus
Dialog:DIALOG_HELP_GENERAL(playerid, response, listitem, string:inputtext[])
{
    if(response) // If they click "Back"
    {
        Dialog_Show(playerid, DIALOG_HELP, DIALOG_STYLE_LIST,
            "Help Menu",
            "General Commands\n\
            Account Commands\n\
            Character Commands\n\
            Update Log",
            "Select", "Close"
        );
    }
    return 1;
}

Dialog:DIALOG_HELP_ACCOUNT(playerid, response, listitem, string:inputtext[])
{
    if(!response) return 1;

    Dialog_Show(playerid, DIALOG_HELP_ACCOUNT, DIALOG_STYLE_MSGBOX,
        "Account Commands",
        "/playtime - Show your playtime",
        "Back", "Close"
    );
    return 1;
}

Dialog:DIALOG_HELP_CHARACTER(playerid, response, listitem, string:inputtext[])
{
    if(response)
    {
        Dialog_Show(playerid, DIALOG_HELP, DIALOG_STYLE_LIST,
            "Help Menu",
            "General Commands\n\
            Account Commands\n\
            Character Commands\n\
            Update Log",
            "Select", "Close"
        );
    }
    return 1;
}

Dialog:DIALOG_HELP_UPDATE(playerid, response, listitem, string:inputtext[])
{
    if(response)
    {
        Dialog_Show(playerid, DIALOG_HELP, DIALOG_STYLE_LIST,
            "Help Menu",
            "General Commands\n\
            Account Commands\n\
            Character Commands\n\
            Update Log",
            "Select", "Close"
        );
    }
    return 1;
}

YCMD:stats(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Character Statistics", "Shows your character's information");
        return 1;
    }

    if(!IsPlayerLoggedIn(playerid)) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");

    new accent[32];
    GetPlayerAccent(playerid, accent);
    
    new string[256];
    format(string, sizeof(string), 
        "Character Statistics\n\n\
        Name: %s\n\
        Age: %d\n\
        Gender: %s\n\
        Accent: %s\n\
        Playtime: %d hours",
        ReturnPlayerName(playerid),
        GetPlayerAge(playerid),
        GetPlayerGender(playerid) ? ("Female") : ("Male"),
        accent,
        (gettime() - GetPlayerLoginTime(playerid)) / 3600
    );

    Dialog_Show(playerid, DIALOG_STATS, DIALOG_STYLE_MSGBOX,
        "Statistics",
        string,
        "Close", ""
    );
    return 1;
}

YCMD:time(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Server Time", "Shows the current server time");
        return 1;
    }

    if(!PlayerData[playerid][pLoggedIn]) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");
    
    new hour, minute, second;
    gettime(hour, minute, second);
    SendClientMessage(playerid, -1, "%s[TIME] {FFFFFF}Current time: %s%02d:%02d:%02d", c_green, c_white, hour, minute, second);
    return 1;
}

YCMD:playtime(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Session Time", "Shows how long you've been playing");
        return 1;
    }

    if(!IsPlayerLoggedIn(playerid)) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");
    
    new playtime = (gettime() - GetPlayerLoginTime(playerid)) / 60;
    SendClientMessage(playerid, -1, "{FFFFFF} %s[PLAYTIME] {FFFFFF}Session duration: %s%d hours %sand %s%d minutes", 
        c_green, c_yellow, playtime / 60, c_white, c_yellow, playtime % 60);
    return 1;
}

YCMD:loc(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Location", "Shows your current coordinates");
        return 1;
    }

    if(!PlayerData[playerid][pLoggedIn]) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");
    
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
    SendClientMessage(playerid, -1, "{FFFFFF} %s[LOCATION] {FFFFFF}Position: %sX: %.2f %sY: %.2f %sZ: %.2f", 
        c_green, c_ltblue, x, c_ltblue, y, c_ltblue, z);
    return 1;

}

YCMD:pm(playerid, params[], help)
{
    if(!PlayerData[playerid][pLoggedIn]) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");
    
    new targetid, message[128];
    if(sscanf(params, "us[128]", targetid, message))
        return SendUsageMessage(playerid, "/pm [playerid/name] [message]");
    
    if(!IsPlayerConnected(targetid))
        return SendErrorMessage(playerid, "That player is not connected!");
    
    if(!PlayerData[targetid][pLoggedIn])
        return SendErrorMessage(playerid, "That player is not logged in!");
    
    if(playerid == targetid)
        return SendErrorMessage(playerid, "You cannot PM yourself!");
    
    SendServerMessage(playerid, "PM to %s: %s", ReturnPlayerName(targetid), message);
    SendServerMessage(targetid, "PM from %s: %s", ReturnPlayerName(playerid), message);
    return 1;
}

// Updated chat commands using ProxDetector
YCMD:me(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Roleplay Action", "Shows your character performing an action");
        return 1;
    }

    if(!PlayerData[playerid][pLoggedIn]) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");
    
    new action[128];
    if(sscanf(params, "s[128]", action))
        return SendUsageMessage(playerid, "/me [action]");
    
    new string[144];
    format(string, sizeof(string), "%s* %s %s", c_purple, ReturnPlayerName(playerid), action);
    ProxDetector(playerid, string, x_purple);
    return 1;
}

YCMD:do(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Describe Environment", "Shows a description of the environment or situation");
        return 1;
    }

    if(!PlayerData[playerid][pLoggedIn]) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");
    
    new description[128];
    if(sscanf(params, "s[128]", description))
        return SendUsageMessage(playerid, "/do [description]");
    
    new string[144];
    format(string, sizeof(string), "%s* %s (( %s ))", c_purple, description, ReturnPlayerName(playerid));
    ProxDetector(playerid, string, x_purple);
    return 1;
}

YCMD:b(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Out of Character Chat", "Send a local OOC message");
        return 1;
    }

    if(!PlayerData[playerid][pLoggedIn]) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");
    
    new message[128];
    if(sscanf(params, "s[128]", message))
        return SendUsageMessage(playerid, "/b [ooc message]");
    
    new string[144];
    format(string, sizeof(string), "%s(( %s: %s%s ))", c_grey, ReturnPlayerName(playerid), c_white, message);
    ProxDetector(playerid, string, x_grey);
    return 1;
}

hook OnPlayerLoaded(playerid)
{
    PlayerData[playerid][pLoginTime] = gettime();
    return 1;
}
