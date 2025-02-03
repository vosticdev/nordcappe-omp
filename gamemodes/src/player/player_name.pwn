/*
 *
 *  ##     ##    ###    ########  ##    ## ##          ###    ##    ## ########  
 *  ###   ###   ## ##   ##     ##  ##  ##  ##         ## ##   ###   ## ##     ## 
 *  #### ####  ##   ##  ##     ##   ####   ##        ##   ##  ####  ## ##     ## 
 *  ## ### ## ##     ## ########     ##    ##       ##     ## ## ## ## ##     ## 
 *  ##     ## ######### ##   ##      ##    ##       ######### ##  #### ##     ## 
 *  ##     ## ##     ## ##    ##     ##    ##       ##     ## ##   ### ##     ## 
 *  ##     ## ##     ## ##     ##    ##    ######## ##     ## ##    ## ########   
 *
 *  @Author         Vostic
 *  @Date           02th July 2023
 *  @Weburl         https://maryland-ogc.com
 *  @Project        maryland_project
 *
 *  @File           custom_tags.script
 *  @Module         messages
 */

#include <ysilib\YSI_Coding\y_hooks>
 
#define CT_DISTANCE 25.0 // Nametag render distance
 
new Text3D:cNametag[MAX_PLAYERS];
new bool:PlayerNametagsEnabled[MAX_PLAYERS];
 
hook OnGameModeInit()
{
    print("[INFO] Player nametags module loaded.");
    return 1;
}
 
hook OnPlayerConnect(playerid)
{
    cNametag[playerid] = CreateDynamic3DTextLabel("Loading...", -1, 0.0, 0.0, 0.1, CT_DISTANCE, .attachedplayer = playerid, .testlos = 1);
    PlayerNametagsEnabled[playerid] = true;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(IsValidDynamic3DTextLabel(cNametag[playerid]))
        DestroyDynamic3DTextLabel(cNametag[playerid]);
    PlayerNametagsEnabled[playerid] = false;
    return 1;
}

task SyncName[1000]() // Update every second
{
    foreach(new i : Player)
    {
        if(!IsPlayerConnected(i) || !PlayerNametagsEnabled[i] || !IsPlayerLoggedIn(i)) continue;
        
        new nametag[128];
        format(nametag, sizeof(nametag), "%s%s (%i)", c_white, ReturnPlayerName(i), i);
        UpdateDynamic3DTextLabelText(cNametag[i], -1, nametag);
    }   
    return 1;
}

YCMD:nameon(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Nametags", "Enable player nametags");
        return 1;
    }

    if(!IsPlayerLoggedIn(playerid)) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");

    if(PlayerNametagsEnabled[playerid])
        return SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Nametags are already enabled!");

    PlayerNametagsEnabled[playerid] = true;
    SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"You have enabled nametags.");
    return 1;
}

YCMD:nameoff(playerid, params[], help)
{
    if(help)
    {
        SendHelpMessage(playerid, "Nametags", "Disable player nametags");
        return 1;
    }

    if(!IsPlayerLoggedIn(playerid)) 
        return SendErrorMessage(playerid, "You must be logged in to use this command!");

    if(!PlayerNametagsEnabled[playerid])
        return SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Nametags are already disabled!");

    PlayerNametagsEnabled[playerid] = false;
    
    // Hide all nametags
    foreach(new i : Player)
    {
        if(IsValidDynamic3DTextLabel(cNametag[i]))
            UpdateDynamic3DTextLabelText(cNametag[i], -1, " ");
    }

    SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"You have disabled nametags.");
    return 1;
}

stock bool:HasNametagsEnabled(playerid)
{
    if(!IsPlayerConnected(playerid)) return false;
    return PlayerNametagsEnabled[playerid];
}