#if !defined _samp_included
    #include "a_samp.inc"
#endif

#if !defined _streamer_included
    #include "streamer.inc"
#endif

#if defined _INC_markerplus
	#endinput
#endif
#define _INC_markerplus


#if !defined MAX_MARKERS
    #define MAX_MARKERS (401)
#endif

#define INVALID_MARKER_ID (-1)

static const COLOR_ARRAY[] =
{
    0x00000000,
    0xFF33FFFF, // plava  = klasicna
    0xFFCC00FF,  
    0xEB8C6CFF, // OGY OMILJENA / LJUBICASTA 
    0xFFFF66CC, // roze
    0xFF333333,
    0xFFFFFF00,
    0xFFFF0000
};

enum MarkerData {

    STREAMER_TAG_AREA:markerCalledArea,
    markerColour,
    bool:markerCalledActive,
    Float:markerPosition[3],
    markerWorldID,
    markerInteriorID,
    Float:markerDrawDistance
}

enum PlayerMarkerData {

    markerObject[MAX_MARKERS],
    bool:markerVisible[MAX_MARKERS]
}

static playerAnotherMarker[MAX_PLAYERS][MAX_MARKERS];
static markerData[MAX_MARKERS][MarkerData];
static playerMarkerData[MAX_PLAYERS][PlayerMarkerData];


static IsValidMarker(markerid) {
    return !(

        markerData[markerid][markerPosition][0] == 0.0 &&
        markerData[markerid][markerPosition][1] == 0.0 &&
        markerData[markerid][markerPosition][2] == 0.0
    );
}

static GetFreeMarkerID() {

    for (new i = 0; i < MAX_MARKERS; i++) {

        if (!IsValidMarker(i))
            return i;
    }
    return INVALID_MARKER_ID;
}

static GetIconColor(icon) {

    return COLOR_ARRAY[icon];
}

static Player_CreateMarkers(playerID) {

    for (new i = 0; i < MAX_MARKERS; i++) {

        if (!IsValidMarker(i))
            continue;

        playerMarkerData[playerID][markerObject][i] = CreatePlayerObject(
            playerID,
            19197,
            markerData[i][markerPosition][0], markerData[i][markerPosition][1], markerData[i][markerPosition][2],
            0.0, 0.0, 0.0,
            markerData[i][markerDrawDistance]
        );

        SetPlayerObjectMaterial(
            playerID,
            playerMarkerData[playerID][markerObject][i],
            0, 19063, 
            "xmasorbs", "sphere",0x00000000
        );

        playerAnotherMarker[playerID][i] = CreatePlayerObject(playerID, 19197, markerData[i][markerPosition][0], markerData[i][markerPosition][1], markerData[i][markerPosition][2], 0.0, 0.0, 0.0, markerData[i][markerDrawDistance]); 

        SetPlayerObjectMaterial(
            playerID,
            playerAnotherMarker[playerID][i],
            0, 19063, 
            "xmasorbs", "sphere", GetIconColor(markerData[i][markerColour])
        );
    }
}

static Player_DestroyMarkers(playerID) {

    for (new  i = 0; i < MAX_MARKERS; i++) {

        DestroyPlayerObject(playerID, playerMarkerData[playerID][markerObject][i]);
        playerMarkerData[playerID][markerObject][i] = INVALID_OBJECT_ID;
        playerMarkerData[playerID][markerVisible][i] = false;
    }
}


forward OnPlayerEnterMarker(playerid, markerid);
forward OnPlayerLeaveMarker(playerid, markerid);


stock CreateMarker(color, calledActive, Float:x, Float:y, Float:z, worldID = -1, interiorID = -1, Float:drawDistance = 0.0) {

    new markerid = GetFreeMarkerID();
    if (markerid == INVALID_MARKER_ID) {
        printf("(!) Marker.INC -> Warning : Reached limit. (MAX_MARKERS: %d)", MAX_MARKERS);
    }

    markerData[markerid][markerCalledArea] = CreateDynamicCylinder(x, y, (z - 0.1), (z + 10.0), 1.0, worldID, interiorID, -1);

    markerData[markerid][markerColour] = color;
    markerData[markerid][markerCalledArea] = calledActive;
    markerData[markerid][markerPosition][0] = x;
    markerData[markerid][markerPosition][1] = y;
    markerData[markerid][markerPosition][2] = z;
    markerData[markerid][markerWorldID] = worldID;
    markerData[markerid][markerInteriorID] = interiorID;
    markerData[markerid][markerDrawDistance] = drawDistance;

    return markerid;
}

public OnPlayerEnterDynamicArea(playerid, STREAMER_TAG_AREA:areaid) {
    
    for (new i = 0; i < MAX_MARKERS; i++) {

        if (!IsValidMarker(i))
            continue;

        if (!markerData[i][markerCalledArea])
            continue;

        if (areaid == markerData[i][markerCalledArea] && GetPlayerInterior(playerid) == markerData[i][markerInteriorID] && GetPlayerVirtualWorld(playerid) == markerData[i][markerWorldID]) {

            CallRemoteFunction("OnPlayerEnterMarker", "ii", playerid, i);
        }
    }

    #if defined MPHook_OnPlayerEnterDynamicArea
        return MPHook_OnPlayerEnterDynamicArea(playerid, STREAMER_TAG_AREA:areaid);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerEnterDynamicArea
    #undef OnPlayerEnterDynamicArea
#else
    #define _ALS_OnPlayerEnterDynamicArea
#endif

#define OnPlayerEnterDynamicArea MPHook_OnPlayerEnterDynamicArea
#if defined MPHook_OnPlayerEnterDynamicArea
    forward MPHook_OnPlayerEnterDynamicArea(playerid, STREAMER_TAG_AREA:areaid);
#endif

public OnPlayerLeaveDynamicArea(playerid, STREAMER_TAG_AREA:areaid) {
    
    for (new i = 0; i < MAX_MARKERS; i++) {

        if (!IsValidMarker(i))
            continue;

        if (!markerData[i][markerCalledActive])
            continue;

        if (areaid == markerData[i][markerCalledArea] && GetPlayerInterior(playerid) == markerData[i][markerInteriorID] && GetPlayerVirtualWorld(playerid) == markerData[i][markerWorldID]) {

            CallRemoteFunction("OnPlayerLeaveMarker", "ii", playerid, i);
        }
    }

    #if defined MPHook_OnPlayerLeaveDynamicArea
        return MPHook_OnPlayerLeaveDynamicArea(playerid, STREAMER_TAG_AREA:areaid);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerLeaveDynamicArea
    #undef OnPlayerLeaveDynamicArea
#else
    #define _ALS_OnPlayerLeaveDynamicArea
#endif

#define OnPlayerLeaveDynamicArea MPHook_OnPlayerLeaveDynamicArea
#if defined MPHook_OnPlayerLeaveDynamicArea
    forward MPHook_OnPlayerLeaveDynamicArea(playerid, STREAMER_TAG_AREA:areaid);
#endif

public OnPlayerConnect(playerid) {
    
    Player_CreateMarkers(playerid);

    #if defined MPHook_OnPlayerConnect
        return MPHook_OnPlayerConnect(playerid);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerConnect
    #undef OnPlayerConnect
#else
    #define _ALS_OnPlayerConnect
#endif

#define OnPlayerConnect MPHook_OnPlayerConnect
#if defined MPHook_OnPlayerConnect
    forward MPHook_OnPlayerConnect(playerid);
#endif

public OnPlayerDisconnect(playerid, reason) {

    Player_DestroyMarkers(playerid);

    #if defined MPHook_OnPlayerDisconnect
        return MPHook_OnPlayerDisconnect(playerid, reason);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerDisconnect
    #undef OnPlayerDisconnect
#else
    #define _ALS_OnPlayerDisconnect
#endif

#define OnPlayerDisconnect MPHook_OnPlayerDisconnect
#if defined MPHook_OnPlayerDisconnect
    forward MPHook_OnPlayerDisconnect(playerid, reason);
#endif
