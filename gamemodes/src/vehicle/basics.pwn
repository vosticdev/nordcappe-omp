/*
  _   _  ____  _____  _____   _____          _____  _____  ______    ____  __  __ _____  
 | \ | |/ __ \|  __ \|  __ \ / ____|   /\   |  __ \|  __ \|  ____|  / __ \|  \/  |  __ \ 
 |  \| | |  | | |__) | |  | | |       /  \  | |__) | |__) | |__    | |  | | \  / | |__) |
 | . ` | |  | |  _  /| |  | | |      / /\ \ |  ___/|  ___/|  __|   | |  | | |\/| |  ___/ 
 | |\  | |__| | | \ \| |__| | |____ / ____ \| |    | |    | |____  | |__| | |  | | |     
 |_| \_|\____/|_|  \_\_____/ \_____/_/    \_\_|    |_|    |______|  \____/|_|  |_|_|     

 Developer: vostic
 Project start: 03/02/2025      

    File: basics.pwn                                                         
                                                                                         
*/

#include <ysilib\YSI_Coding\y_hooks>

// Vehicle states
enum E_VEHICLE_STATES
{
    bool:v_Engine,
    bool:v_Lights,
    bool:v_Hood,
    bool:v_Trunk,
    bool:v_Locked,
    bool:v_Alarm
}
new VehicleStates[MAX_VEHICLES][E_VEHICLE_STATES];

// Player states
enum E_PLAYER_VEHICLE_STATES
{
    bool:pv_Seatbelt,
    pv_LastVehicle
}
new PlayerVehicleStates[MAX_PLAYERS][E_PLAYER_VEHICLE_STATES];


// Key handling for engine and panel
hook OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys)
{
    if(IsPlayerInAnyVehicle(playerid))
    {
        new vehicleid = GetPlayerVehicleID(playerid);
        new modelid = GetVehicleModel(vehicleid);

        // Engine control (KEY_FIRE)
        if(PRESSED(KEY_FIRE) && GetPlayerVehicleSeat(playerid) == 0)
        {
            // Bicycles always have "engine on"
            if(IsVehicleBicycle(modelid))
            {
                VehicleStates[vehicleid][v_Engine] = true;
                return 1;
            }
            
            // Regular engine control for other vehicles
            if(!IsVehicleBicycle(modelid))
            {
                if(!VehicleStates[vehicleid][v_Engine])
                {
                    // 30% chance to fail starting (not for bikes)
                    if(!IsVehicleMotorbike(modelid) && random(100) < 30)
                    {
                        SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_red"Vehicle failed to start. Try again!");
                        PlayerPlaySound(playerid, 1085, 0.0, 0.0, 0.0);
                        return 1;
                    }
                    
                    VehicleStates[vehicleid][v_Engine] = true;
                    SetVehicleParamsEx(vehicleid, 1, VehicleStates[vehicleid][v_Lights], 0, VehicleStates[vehicleid][v_Locked], 0, 0, 0);
                    SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Engine started.");
                    PlayerPlaySound(playerid, 1134, 0.0, 0.0, 0.0);
                }
                else
                {
                    VehicleStates[vehicleid][v_Engine] = false;
                    SetVehicleParamsEx(vehicleid, 0, VehicleStates[vehicleid][v_Lights], 0, VehicleStates[vehicleid][v_Locked], 0, 0, 0);
                    SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Engine stopped.");
                    PlayerPlaySound(playerid, 1085, 0.0, 0.0, 0.0);
                }
            }
        }
        
        // Vehicle panel (KEY_YES) - Not for bicycles
        if(PRESSED(KEY_YES) && !IsVehicleBicycle(modelid))
        {
            new menuText[256];
            
            if(IsVehicleMotorbike(modelid))
            {
                format(menuText, sizeof(menuText),
                    "Toggle Lights\n\
                    Toggle Lock\n\
                    Vehicle Status"
                );
            }
            else
            {
                format(menuText, sizeof(menuText),
                    "Toggle Lights\n\
                    Toggle Hood\n\
                    Toggle Trunk\n\
                    Toggle Lock\n\
                    Toggle Seatbelt\n\
                    Vehicle Status"
                );
            }
            
            Dialog_Show(playerid, DIALOG_VEHICLE_PANEL, DIALOG_STYLE_LIST, 
                ""c_server2"Vehicle Control Panel",
                menuText,
                "Select", "Close"
            );
        }
    }
    return 1;
}

// Vehicle panel dialog
Dialog:DIALOG_VEHICLE_PANEL(playerid, response, listitem, string:inputtext[])
{
    if(!response) return 1;
    if(!IsPlayerInAnyVehicle(playerid)) return SendErrorMessage(playerid, "You must be in a vehicle!");

    new vehicleid = GetPlayerVehicleID(playerid);
    new modelid = GetVehicleModel(vehicleid);
    new isMotorbike = IsVehicleMotorbike(modelid);

    // Adjust listitem for motorbikes (they have fewer options)
    if(isMotorbike && listitem > 0) listitem += 2;

    switch(listitem)
    {
        case 0: // Lights (all vehicles except bicycles)
        {
            if(IsVehicleBicycle(modelid)) return 1;
            VehicleStates[vehicleid][v_Lights] = !VehicleStates[vehicleid][v_Lights];
            SetVehicleParamsEx(vehicleid, VehicleStates[vehicleid][v_Engine], VehicleStates[vehicleid][v_Lights], 0, VehicleStates[vehicleid][v_Locked], 0, 0, 0);
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Vehicle lights %s.", VehicleStates[vehicleid][v_Lights] ? ("on") : ("off"));
        }
        case 1: // Hood (cars only)
        {
            if(isMotorbike) return 1;
            VehicleStates[vehicleid][v_Hood] = !VehicleStates[vehicleid][v_Hood];
            SetVehicleParamsEx(vehicleid, VehicleStates[vehicleid][v_Engine], VehicleStates[vehicleid][v_Lights], 0, VehicleStates[vehicleid][v_Locked], VehicleStates[vehicleid][v_Hood], 0, 0);
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Vehicle hood %s.", VehicleStates[vehicleid][v_Hood] ? ("opened") : ("closed"));
        }
        case 2: // Trunk (cars only)
        {
            if(isMotorbike) return 1;
            VehicleStates[vehicleid][v_Trunk] = !VehicleStates[vehicleid][v_Trunk];
            SetVehicleParamsEx(vehicleid, VehicleStates[vehicleid][v_Engine], VehicleStates[vehicleid][v_Lights], 0, VehicleStates[vehicleid][v_Locked], 0, VehicleStates[vehicleid][v_Trunk], 0);
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Vehicle trunk %s.", VehicleStates[vehicleid][v_Trunk] ? ("opened") : ("closed"));
        }
        case 3: // Lock (all except bicycles)
        {
            if(IsVehicleBicycle(modelid)) return 1;
            VehicleStates[vehicleid][v_Locked] = !VehicleStates[vehicleid][v_Locked];
            SetVehicleParamsEx(vehicleid, VehicleStates[vehicleid][v_Engine], VehicleStates[vehicleid][v_Lights], 0, VehicleStates[vehicleid][v_Locked], 0, 0, 0);
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Vehicle %s.", VehicleStates[vehicleid][v_Locked] ? ("locked") : ("unlocked"));
        }
        case 4: // Seatbelt (cars only)
        {
            if(isMotorbike) return 1;
            PlayerVehicleStates[playerid][pv_Seatbelt] = !PlayerVehicleStates[playerid][pv_Seatbelt];
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Seatbelt %s.", PlayerVehicleStates[playerid][pv_Seatbelt] ? ("fastened") : ("unfastened"));
            PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0);
        }
        case 5: // Status
        {
            new status[256];
            
            if(IsVehicleMotorbike(modelid))
            {
                format(status, sizeof(status),
                    "Vehicle Status\n\n\
                    Type: %sMotorbike\n\
                    Engine: %s\n\
                    Lights: %s\n\
                    Lock: %s",
                    c_green,
                    VehicleStates[vehicleid][v_Engine] ? (""c_green"ON") : (""c_red"OFF"),
                    VehicleStates[vehicleid][v_Lights] ? (""c_green"ON") : (""c_red"OFF"),
                    VehicleStates[vehicleid][v_Locked] ? (""c_green"LOCKED") : (""c_red"UNLOCKED")
                );
            }
            else if(IsVehicleBicycle(modelid))
            {
                format(status, sizeof(status),
                    "Vehicle Status\n\n\
                    Type: %sBicycle",
                    c_green
                );
            }
            else
            {
                format(status, sizeof(status),
                    "Vehicle Status\n\n\
                    Engine: %s\n\
                    Lights: %s\n\
                    Hood: %s\n\
                    Trunk: %s\n\
                    Locks: %s\n\
                    Seatbelt: %s",
                    VehicleStates[vehicleid][v_Engine] ? (""c_green"ON") : (""c_red"OFF"),
                    VehicleStates[vehicleid][v_Lights] ? (""c_green"ON") : (""c_red"OFF"),
                    VehicleStates[vehicleid][v_Hood] ? (""c_green"OPEN") : (""c_red"CLOSED"),
                    VehicleStates[vehicleid][v_Trunk] ? (""c_green"OPEN") : (""c_red"CLOSED"),
                    VehicleStates[vehicleid][v_Locked] ? (""c_green"LOCKED") : (""c_red"UNLOCKED"),
                    PlayerVehicleStates[playerid][pv_Seatbelt] ? (""c_green"FASTENED") : (""c_red"UNFASTENED")
                );
            }
            
            Dialog_Show(playerid, DIALOG_VEHICLE_STATUS, DIALOG_STYLE_MSGBOX,
                ""c_server2"Vehicle Status",
                status,
                "Back", ""
            );
        }
    }
    return 1;
}

// Reset vehicle states on creation
hook OnVehicleSpawn(vehicleid)
{
    new modelid = GetVehicleModel(vehicleid);
    new bool:engine, bool:lights, bool:alarm, bool:doors, bool:bonnet, bool:boot, bool:objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
    
    // Bicycles always have engine on
    if(IsVehicleBicycle(modelid))
    {
        VehicleStates[vehicleid][v_Engine] = true;
        SetVehicleParamsEx(vehicleid, true, false, false, doors, bonnet, boot, objective);
        return 1;
    }
    
    // Regular vehicles start with everything off
    VehicleStates[vehicleid][v_Engine] = false;
    VehicleStates[vehicleid][v_Lights] = false;
    VehicleStates[vehicleid][v_Hood] = false;
    VehicleStates[vehicleid][v_Trunk] = false;
    VehicleStates[vehicleid][v_Locked] = false;
    VehicleStates[vehicleid][v_Alarm] = false;
    SetVehicleParamsEx(vehicleid, VEHICLE_PARAMS_OFF, false, false, doors, bonnet, boot, objective);
    return 1;
}

// Reset player states on disconnect
hook OnPlayerDisconnect(playerid, reason)
{
    PlayerVehicleStates[playerid][pv_Seatbelt] = false;
    PlayerVehicleStates[playerid][pv_LastVehicle] = 0;
    return 1;
}

// Add this hook to ensure bicycles are driveable when created
hook OnVehicleCreated(vehicleid)
{
    new modelid = GetVehicleModel(vehicleid);
    new bool:engine, bool:lights, bool:alarm, bool:doors, bool:bonnet, bool:boot, bool:objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

    if(IsVehicleBicycle(modelid))
    {
        VehicleStates[vehicleid][v_Engine] = true;
        SetVehicleParamsEx(vehicleid, true, false, false, doors, bonnet, boot, objective);
    }
    return 1;
}

hook OnPlayerStateChange(playerid, PLAYER_STATE:newstate, PLAYER_STATE:oldstate)
{
    if(newstate == PLAYER_STATE_DRIVER)
    {
        new vehicleid = GetPlayerVehicleID(playerid);
        new modelid = GetVehicleModel(vehicleid);

        if(IsVehicleBicycle(modelid))
        {
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Press "c_server2"Y"c_white" to open vehicle menu.");
        }
        else
        {
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Press "c_server2"FIRE"c_white" to start/stop engine.");
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Press "c_server2"Y"c_white" to open vehicle menu.");
        }
    }

    // Reset seatbelt when leaving vehicle
    if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER)
    {
        if(PlayerVehicleStates[playerid][pv_Seatbelt])
        {
            PlayerVehicleStates[playerid][pv_Seatbelt] = false;
            SendClientMessage(playerid, -1, ""c_server"nordcappe-omp \187; "c_white"Seatbelt unfastened.");
        }
    }
    return 1;
}




