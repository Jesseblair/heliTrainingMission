params["_pos", "_color"];

_pos = param[0];
_color = param[1];
	
_distance = player distance _pos;
_landingZoneMarker = drawIcon3D[
	"\A3\ui_f\data\map\markers\military\arrow_CA.paa",	//Texture
	[0,1,0,.65], 										//Color 
	_pos, 												//Position 
	1.5, 												//Icon W
	1.5, 												//Icon H
	180, 												//Icon Angle
	format ["LZ: %1M", floor(_distance)], 				//Text
	1													//Style 0: none, 1: shadow, 2: border
];




