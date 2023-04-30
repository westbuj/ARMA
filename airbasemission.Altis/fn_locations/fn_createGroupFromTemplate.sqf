//	params
//		descriptor, side, target location 
//	returns 
//		group  - populated

//["MECH",vechle,[drivers],[commanders],[gunners],[turrets],[cargo]]; // ["MECH","B_MRAP_01_F",["B_Soldier_TL_F"],[],["B_support_AMort_F","B_support_AMort_F"],[],["B_Soldier_TL_F"]];
//[west,(position player),"Merlins Marvels",[["MECH","B_MRAP_01_F",["B_Soldier_TL_F"],[],["B_support_AMort_F","B_support_AMort_F"],[],["B_Soldier_TL_F"]],["MECH","B_MRAP_01_F",["B_Soldier_TL_F"],[],["B_support_AMort_F","B_support_AMort_F"],[],["B_Soldier_TL_F"]],["UNIT","B_support_AMort_F","B_support_AMort_F","B_support_AMort_F"]]] call JNN_fnc_createGroupFromTemplate;

_side=(_this select 0);
_targetLoc = (_this select 1);
_name = (_this select 2);
_d=(_this select 3);

_grp = createGroup [_side, false];

	{	
		
		_d_type = _x select 0;
		systemChat str _d_type;

		if (_d_type == "MECH") then{			
			_vehicle = _x select 1;
			_drivers = _x select 2;
			_commanders = _x select 3;
			_gunners =  _x select 4;
			_turrets =  _x select 5;
			_cargo = _x select 6;
			
			//systemChat str (_vechicle);

			_veh = _vehicle createVehicle _targetLoc;
			systemChat str (_details);

			{_unit = _grp createUnit [_x, _targetLoc, [], 15, "NONE"];
				_unit assignAsDriver _veh;
				_unit moveInDriver _veh;
			}forEach _drivers;

			{_unit = _grp createUnit [_x, _targetLoc, [], 15, "NONE"];
				_unit assignAsCommander _veh;
				_unit moveInCommander _veh;
			}forEach _commanders;

			{_unit = _grp createUnit [_x, _targetLoc, [], 15, "NONE"];
				_unit assignAsGunner _veh;
				_unit moveInGunner _veh;
			}forEach _gunners;
			
			{_unit = _grp createUnit [_x, _targetLoc, [], 15, "NONE"];
				_unit assignAsTurret _veh;
				_unit moveInTurret _veh;
			}forEach _turrets;
			{_unit = _grp createUnit [_x, _targetLoc, [], 15, "NONE"];
				_unit assignAsCargo _veh;
				_unit moveInCargo _veh;
			}forEach _cargo;

			


		};


		if (_d_type == "UNIT") then{
			
			//_details = x select 2;
			_units = _x select 1;

			{_unit = _grp createUnit [_x, _targetLoc, [],20, "NONE"];
				
			}forEach _units;		

		};

	}forEach _d;


[(units _grp) select 0, 2, [_grp],_name] execVM "launchDelegatedSquadPre.sqf";
