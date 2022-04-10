
switch earplugInt do 
{
	case 1:
	{
		earplugInt = 2;
		2 fadeSound .20;
		hint "20%";
		waitUntil {earplugInt != 2};
	};
	case 2:
	{
		earplugInt = 3;
		2 fadeSound .5;
		hint "5%";
		waitUntil {earplugInt != 3};
	};
	case 3:
	{
		earplugInt = 1;
		2 fadeSound 1;
		hint "100%";
		waitUntil {earplugInt != 1};
	};

};