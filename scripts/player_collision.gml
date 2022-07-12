
if (place_meeting(argument0, argument1, parSolid)) return true;
if (ground && place_meeting(argument0, argument1, parPlatform)) return true;

if (g_layer == 0) 
    return place_meeting(argument0, argument1, parLow);
else              
    return place_meeting(argument0, argument1, parHigh);