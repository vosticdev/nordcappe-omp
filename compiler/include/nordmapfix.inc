/*

    ? Map optimization by Ferid
    ? Credits : Levu on BS
    ? @TODO: Izbaciti opti-draw.inc potpuno.

*/


Object_IsLarge( id ) {
	switch( id ) {
		case 7584, 8395, 6157, 9901, 6863, 13756, 13757, 5793, 5880, 5799, 5750, 5859, 6035, 6127, 4182: return true;
	}
	return false;
}

Object_IsMedium( id ) {
	switch( id ) {
		case 18981, 19377, 4141, 4033, 10377, 10376, 9915, 10381, 18766: return true;
	}
	return false;
}


Nordcappe_CreateDynamicObject( objid, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz, worldid = -1, interiorid = -1, playerid = -1, Float:streamdistance = 300.0, Float:drawdistance = 300.0, areaid = -1, priority = 0 )
{
	if( Object_IsLarge( objid ) ) {
		streamdistance = 800.0;
		drawdistance = 800.0;
		priority = 8;
	}
	else if( Object_IsMedium( objid ) ) {
		streamdistance = 500.0;
		drawdistance = 500.0;
		priority = 6;
	}
	return CreateDynamicObject( objid, x, y, z, rx, ry, rz, worldid, interiorid, playerid, streamdistance, drawdistance, areaid, priority ); 
}