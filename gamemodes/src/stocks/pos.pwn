stock IsPlayerNearPlayer(playerid, targetid, Float:radius)
{
    new Float:x, Float:y, Float:z;
    GetPlayerPos(targetid, x, y, z);
    return IsPlayerInRangeOfPoint(playerid, radius, x, y, z);
}
