_display = findDisplay 1234;
_heliList = _display displayCtrl 100;


if !(lbCurSel _heliList == -1) then {
	_index = lbCurSel _heliList;
	_selection = helicopterConfigNames select _index;

	hint str _selection;

	_selHeli = createVehicle [_selection, getMarkerPos ["marker_0"]];

	player moveInDriver _selHeli;
};

closeDialog 1234;
