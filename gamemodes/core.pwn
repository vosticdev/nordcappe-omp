/*
  _   _  ____  _____  _____   _____          _____  _____  ______    ____  __  __ _____  
 | \ | |/ __ \|  __ \|  __ \ / ____|   /\   |  __ \|  __ \|  ____|  / __ \|  \/  |  __ \ 
 |  \| | |  | | |__) | |  | | |       /  \  | |__) | |__) | |__    | |  | | \  / | |__) |
 | . ` | |  | |  _  /| |  | | |      / /\ \ |  ___/|  ___/|  __|   | |  | | |\/| |  ___/ 
 | |\  | |__| | | \ \| |__| | |____ / ____ \| |    | |    | |____  | |__| | |  | | |     
 |_| \_|\____/|_|  \_\_____/ \_____/_/    \_\_|    |_|    |______|  \____/|_|  |_|_|     

 Developer: vostic
 Project start: 03/02/2025                                                               
                                                                                         
*/


#define YSI_NO_HEAP_MALLOC
#define MIXED_SPELLINGS

#define MAX_Y_HOOKS (256)
#define CGEN_MEMORY 140000

#pragma dynamic 200000

#include <open.mp>
#include <a_mysql>
#include <streamer>
#include <sscanf2>
#include <Pawn.RakNet>
#include <Pawn.Regex>
#include <log-plugin>		
#include <nex-ac>

#include <ysilib\YSI_Coding\y_va>
#include <ysilib\YSI_Coding\y_hooks>

#include <easyDialog>
#include <callbacks>	

#include <ysilib\YSI_Core\y_utils>
#include <ysilib\YSI_Coding\y_timers>
#include <ysilib\YSI_Visual\y_commands>
#include <ysilib\YSI_Data\y_foreach>
#include <ysilib\YSI_Data\y_iterate>
#include <distance>
#include <zones>
#include <notify>
#include <timestamp>
#include <animated-textdraw>
#include <crashdetect>
#include <colandreas>
//#include <nordmapfix>
#include <progress2>
#include <walking_styles>
#include <colors>
#include <macroes>
#include <setcompos>
#include <mSelection>
#include <samp_bcrypt>
#include "src/stocks/chat-stocks.pwn"

#define SendServerMessage(%0,%1) \
	SendClientMessage(%0, -1, ""c_server"nordcappe-omp \187; {FFFFFF} "%1)

#define @alias(name, target) \
	YSIM_COMMAND name(playerid, params[], help) = target



new Logger:mainLog;

main()
{
    print("=========================================");
    print("               Nordcappe OMP             ");
    print("         OpenMP Modular Framework        ");
    print("-----------------------------------------");
    print("  Version   : 1.0 - Nordcappe OMP        ");
    print("  Developer : Vostic                     ");
    print("  Credits   :  Y-Less, pBlueG, OMP TEAM  ");
    print("-----------------------------------------");
    print("       Initializing Nordcappe Mod...     ");
    print("  Nordcappe Roleplay Successfully Started ");
    print("=========================================");

}

public OnGameModeInit()
{
	mysql_log(ALL);
	mainLog = CreateLog("main_log");

	Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, 550);
	Streamer_ToggleChunkStream(true);
	Streamer_SetChunkSize(STREAMER_TYPE_OBJECT, 250);
	Streamer_VisibleItems(STREAMER_TYPE_OBJECT, 975);
	Streamer_SetTickRate(25);
	
	CA_Init();

	DisableInteriorEnterExits();
	ManualVehicleEngineAndLights();
	ShowPlayerMarkers(PLAYER_MARKERS_MODE_OFF);
	ShowNameTags(false);												
	
	LimitGlobalChatRadius(20.0);
	AllowInteriorWeapons(true);
	EnableVehicleFriendlyFire();
	EnableStuntBonusForAll(false);	

	EnableAllAnimations(true);

	return 1;
}

/*
*       ___
*      / __|___ _ __  _ __  ___ _ _
*     | (__/ _ \ '  \| '  \/ _ \ ' \
*     \___\___/_|_|_|_|_|_\___/_||_|
*
*/

public e_COMMAND_ERRORS:OnPlayerCommandReceived(playerid, cmdtext[], e_COMMAND_ERRORS:success) {

    if(success != COMMAND_OK)
    {
        SendClientMessage(playerid, x_server, "nordcappe-omp \187; "c_white"Command "c_server"%s"c_white" not found, use /commands", cmdtext); 
        return COMMAND_OK;
    }
    return COMMAND_OK;

}


//-------------------------------------------------------------------------------------------------------- Includes List


#include "src/database/db-config.pwn"
#include "src/reglog/reglog.pwn"
#include "src/commands/basic_cmd.pwn"
#include "src/player/player_name.pwn"

#include "src/stocks/veh.pwn"
#include "src/vehicle/basics.pwn"

#include "src/staff/staff.pwn"
