waitUntil {!isNull ((uiNamespace getVariable "RscDiary") displayCtrl 1)};
ctrlActivate ((uiNamespace getVariable "RscDiary") displayCtrl 1);

earplugInt = 1;

EARPLUG_FNC = {
switch (_this) do {
	case 24: {
		execVM "earplugs.sqf";
	};
};
};

waituntil {!isnull (finddisplay 46)};
(findDisplay 46) displayAddEventHandler [
	"KeyDown","_this select 1 call EARPLUG_FNC;
	false;"
];

heli_shop addAction
[
	"Spawn Heli",
	{
		createDialog "MyDialog"
	},
	nil,
	2,
	true,
	false,
	"",
	"true",
	5
];


