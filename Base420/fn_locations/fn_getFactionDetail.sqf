
private _fac    = (_this select 0);
private _detail = (_this select 1);


if (_fac == "Guerilla" || _fac == "Gendarmerie") then {_fac = "BLU_GEN_F"};	
[(configFile >> "CfgFactionClasses" >> _fac ), _detail] call BIS_fnc_returnConfigEntry
