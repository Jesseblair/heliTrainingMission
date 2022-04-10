params["_markerArray"];

_markerArray = param[0];

_LowestIndex = -1;

_lowDistance = 100000;

{
	_pos = getMarkerPos [_x];
	if(player distance _pos < _lowDistance) then {
		_lowDistance = player distance _pos;
		_lowestIndex = _forEachIndex;
	};
	
	
} forEach _markerArray;

_markerArray deleteAt _lowestIndex;

_numMarkers = count _markerArray;

_randomIntSel = floor(random _numMarkers);

_lzMarker = _markerArray select _randomIntSel;

_lzMarkerPos = getMarkerPos [_lzMarker];

_lzMarkerPos
