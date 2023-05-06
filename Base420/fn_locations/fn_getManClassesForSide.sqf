_out_array = [];

_array = "((configName _x) isKindOf 'SoldierWB')" configClasses (configFile >> "CfgVehicles"); 
_array = _array apply{configName _x}; 

{
	if (([_x,"scope"] call JNN_fnc_getManClassDetails) == 2) then {	_out_array pushBack _x;	};
}forEach _array;

_out_array