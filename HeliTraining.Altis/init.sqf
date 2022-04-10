waitUntil {!isNull ((uiNamespace getVariable "RscDiary") displayCtrl 1)};
ctrlActivate ((uiNamespace getVariable "RscDiary") displayCtrl 1);

earplugInt = 1;

CUSTOMBINDS_FNC = {
	switch (_this) do {
		case 24: {
			execVM "earplugs.sqf";
		};
		case 21: {
			createDialog "yMenu";
		}
	};
};


player addAction ["yMenu", {createDialog "yMenu"}];

waituntil {!isnull (finddisplay 46)};
(findDisplay 46) displayAddEventHandler [
	"KeyDown","_this select 1 call CUSTOMBINDS_FNC;
	false;"
];

heli_shop addAction
[
	"Spawn Heli",
	{
		createDialog "heliSpawnMenu"
	},
	nil,
	2,
	true,
	false,
	"",
	"true",
	5
];


