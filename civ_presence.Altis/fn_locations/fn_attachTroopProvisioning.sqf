_screen = (_this select 0);

_array = [] call JNN_fnc_getManClassesForSide;

_screen addAction ["Troop Provisioning","fn_locations\troopProvisionDialog.sqf"];

[_screen, _array] spawn {

while{true}do{
		{
			_displayName = [_x,"displayName"] call JNN_fnc_getManClassDetails;
			_picture = [_x,"editorPreview"] call JNN_fnc_getManClassDetails;
			(_this select 0) SetObjectTexture [0,_picture];
			sleep 2;
			waitUntil {sleep 2; (player distance (_this select 0)) < 5  };
			//recruit addAction [str _displayName,{hint str _this;},_x];
		}forEach (_this select 1);
	};
};

