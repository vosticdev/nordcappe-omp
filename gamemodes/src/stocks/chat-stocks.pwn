// Color defines for proximity chat
#define COLOR_FADE_CHAT        0xE6E6E6FF
#define CHAT_RANGE            20.0
#define CHAT_RANGE_RATIO      1.6

stock SendErrorMessage(playerid, const string[])
{
    return SendClientMessage(playerid, 0xFF0000FF, "ERROR: %s", string);
}

stock SendUsageMessage(playerid, const string[])
{
    return SendClientMessage(playerid, 0xAFAFAFFF, "USAGE: %s", string);
}

// Helper function for consistent help messages
stock SendHelpMessage(playerid, const title[], const description[])
{
    notification.Show(playerid, "HELP", description, title, BOXCOLOR_BLUE);
    return 1;
}

// Improved proximity detector
stock ProxDetector(playerid, const string[], color = COLOR_FADE_CHAT, Float:range = CHAT_RANGE, Float:ratio = CHAT_RANGE_RATIO)
{
    new 
        Float:x, Float:y, Float:z,
        Float:dist,
        Float:range_ratio,
        color_r, color_g, color_b,
        fade_r, fade_g, fade_b;
    
    if(!GetPlayerPos(playerid, x, y, z)) 
        return 0;
        
    // Extract RGB from hex color
    color_r = (color >> 24) & 0xFF;
    color_g = (color >> 16) & 0xFF;
    color_b = (color >> 8) & 0xFF;
    
    foreach(new i : Player)
    {
        // Skip if it's the same player or not streamed
        if(i == playerid || !IsPlayerStreamedIn(i, playerid)) 
            continue;
            
        dist = GetPlayerDistanceFromPoint(i, x, y, z);
        if(dist > range) 
            continue;
            
        // Calculate color fade based on distance
        range_ratio = (range * ratio - dist) / (range * ratio);
        fade_r = floatround(range_ratio * color_r);
        fade_g = floatround(range_ratio * color_g);
        fade_b = floatround(range_ratio * color_b);
        
        // Send message with faded color
        SendClientMessage(i, (color & 0xFF) | (fade_b << 8) | (fade_g << 16) | (fade_r << 24), string);
    }
    
    // Original color for the sender
    SendClientMessage(playerid, color, string);
    return 1;
}