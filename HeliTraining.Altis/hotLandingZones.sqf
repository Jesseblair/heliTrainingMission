// Array of landing marker Var names
_landingZoneMarkerArray = ["LZ_1", "LZ_2", "LZ_3", "LZ_4", "LZ_5"];

// Smoke color 
smokeName = "SmokeShellRed";

//Icon texture path
_icon = "\A3\ui_f\data\map\markers\military\arrow_CA.paa";


landingMarkerPos = [_landingZoneMarkerArray] call AJX_fnc_selectMarker;


// Add handler to draw icon on HUD
_iconHandler = addMissionEventHandler ["Draw3D", {
	[landingMarkerPos, smokeName] call AJX_fnc_setMarker; // Call setMarker function
}];


_trigger = createTrigger["EmptyDetector", landingMarkerPos];
_trigger setTriggerArea[500, 500, 0, false, -1];
_trigger setTriggerActivation["ANYPLAYER", "PRESENT", false];


_triggerClose = createTrigger["EmptyDetector", landingMarkerPos];
_triggerClose setTriggerArea[20, 20, 0, false, 2];
_triggerClose setTriggerActivation["ANYPLAYER", "PRESENT", false];

waitUntil{player inArea _trigger};
_smoke = [smokeName, landingMarkerPos] call AJX_fnc_spawnSmoke;


waitUntil{(player inArea _triggerClose) AND (speed player < 5)};
deleteVehicle _smoke;
removeMissionEventHandler ["Draw3D", _iconHandler];
