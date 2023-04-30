//_displayName = [CLASS NAME,"displayName"] call JNN_fnc_getManClassDetails;

[(configFile >> "CfgVehicles" >> (_this select 0) ),(_this select 1)] call BIS_fnc_returnConfigEntry;
