#include "CustomControlClasses.h"
class yMenu
{
	idd = 1111;
	
	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.85546875;
			y = safeZoneY + safeZoneH * 0.22569445;
			w = safeZoneW * 0.14355469;
			h = safeZoneH * 0.54861112;
			style = 0;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,0.85};
			colorText[] = {0.2784,0.9922,0.3098,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class startWaypoint
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.87988282;
			y = safeZoneY + safeZoneH * 0.25;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.03819445;
			style = 0+2;
			text = "Start Waypoints";
			borderSize = 0;
			colorBackground[] = {0.702,0.4,0.102,1};
			colorBackgroundActive[] = {0.6,0.302,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.702,0.4,0.102,1};
			colorShadow[] = {0,0,0,.6};
			colorText[] = {0,0,0,1};
			font = "TahomaB";
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			offsetX = 0.002;
			offsetY = 0.002;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "execVM 'hotLandingZones.sqf'; closeDialog 1111;";	
		};
		
	};
	
};
