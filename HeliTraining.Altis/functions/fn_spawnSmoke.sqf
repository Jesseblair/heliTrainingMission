	/*
		Author: Ajax

		Description: 
			Spawn colored smoke at given position

		Parameters:
			0: <string> - name of smoke color ("SmokeShellRed", "SmokeShellGreen", "SmokeShellBlue", ect...)

		Return:
			Smoke object

		Example:
			["SmokeShellRed", getMarkerPos["markerName"]] call AJX_fnc_spawnSmoke;


	*/

	
	params ["_name", "_pos"];

	_name = param[0];
	_pos = param[1];

	_smoke = _name createVehicle _pos;

	_smoke
