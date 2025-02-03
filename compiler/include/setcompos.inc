#if !defined STREAMER_TYPE_OBJECT
	#error streamer-tp requires streamer to be included.
#endif

#if !defined TP_WAIT_TIME
	#define TP_WAIT_TIME 500
#endif

static
	TP_AwaitingTime[MAX_PLAYERS],
	Float:TP_AwaitingPos[MAX_PLAYERS][3];

static Float:TP_GetDistanceFromAwaiting(playerid)
{
	new Float:pX, Float:pY, Float:pZ;
	GetPlayerPos(playerid, pX, pY, pZ);
	return (floatsqroot(floatpower(pX - TP_AwaitingPos[playerid][0], 2.0) + floatpower(pY - TP_AwaitingPos[playerid][1], 2.0) + floatpower(pZ - TP_AwaitingPos[playerid][2], 2.0)));
}

public OnPlayerConnect(playerid)
{
	TP_AwaitingPos[playerid][0] = -1.0;
	
	#if defined TP_OnPlayerConnect
		return TP_OnPlayerConnect(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif

#define OnPlayerConnect TP_OnPlayerConnect

#if defined TP_OnPlayerConnect
    forward TP_OnPlayerConnect(playerid);
#endif

public OnPlayerUpdate(playerid)
{
	if (TP_AwaitingTime[playerid] != 0)
	{
		if ((NetStats_GetConnectedTime(playerid) > TP_AwaitingTime[playerid]) || (TP_GetDistanceFromAwaiting(playerid) < 0.2))
		{
			TogglePlayerControllable(playerid, true);
			Streamer_ToggleItemUpdate(playerid, STREAMER_TYPE_OBJECT, true);
			
			TP_AwaitingPos[playerid][0] = -1.0;
			TP_AwaitingTime[playerid] = 0;
		}
	}
	
	#if defined TP_OnPlayerUpdate
		return TP_OnPlayerUpdate(playerid);
	#else
		return 1;
	#endif
}

#if defined _ALS_OnPlayerUpdate
	#undef OnPlayerUpdate
#else
	#define _ALS_OnPlayerUpdate
#endif

#define OnPlayerUpdate TP_OnPlayerUpdate

#if defined TP_OnPlayerUpdate
    forward TP_OnPlayerUpdate(playerid);
#endif

stock bool:IsPlayerTeleporting(playerid)
{
	return (TP_AwaitingTime[playerid] != 0);
}

stock SetPlayerCompensatedPos(playerid, Float:X, Float:Y, Float:Z, world = -1, interior = -1, wait_time = TP_WAIT_TIME)
{
	if (!IsPlayerConnected(playerid))
		return 0;
	
	TP_AwaitingPos[playerid][0] = X;
	TP_AwaitingPos[playerid][1] = Y;
	TP_AwaitingPos[playerid][2] = Z;
	
	new conn_time = NetStats_GetConnectedTime(playerid);
	TP_AwaitingTime[playerid] = ((wait_time > 0) ? (conn_time + wait_time) : conn_time);
	
	TogglePlayerControllable(playerid, false);
	Streamer_ToggleItemUpdate(playerid, STREAMER_TYPE_OBJECT, false);

	Streamer_UpdateEx(playerid, X, Y, Z, world, interior, STREAMER_TYPE_OBJECT);
	
	if(interior != -1)
		SetPlayerInterior(playerid, interior);
	if(world != -1)
		SetPlayerVirtualWorld(playerid, world);
	
    SetCameraBehindPlayer(playerid);
	return SetPlayerPos(playerid, X, Y, Z - 0.3);
}
