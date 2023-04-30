_object = (_this select 0);

[_object,["%All"],true] call BIS_fnc_addVirtualBackpackCargo;
[_object,["%All"],true] call BIS_fnc_addVirtualItemCargo;
[_object,["%All"],true] call BIS_fnc_addVirtualMagazineCargo;
[_object,["%All"],true] call BIS_fnc_addVirtualWeaponCargo;