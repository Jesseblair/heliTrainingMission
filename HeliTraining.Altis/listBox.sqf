_display = findDisplay 1234;
_heliList = _display displayCtrl 100;
_spawnBtn = _display displayCtrl 99;


_heliArray = "getNumber (_x >> 'type') == 2 && getNumber (_x >> 'scope') == 2 && getText (_x >> 'textSingular') == 'helicopter'" configClasses (configFile >> "cfgVehicles");
helicopterConfigNames = [];



{
	_heli = configName _x;
	helicopterConfigNames pushBack _heli;

} forEach _heliArray;

{
	_heliName = getText (configFile >> "cfgVehicles" >> _x >> "displayname");
	_heliList lbAdd _heliName;
} forEach helicopterConfigNames;

while {true} do 
{
	_index = lbCurSel _heliList;
	_selection = _heliList lbData _index;
	sleep 0.1;
};