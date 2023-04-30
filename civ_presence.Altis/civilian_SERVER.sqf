//max pop, min dist, max dist
if (!isServer) exitWith {};
sleep 180;
[(_this select 0),(_this select 1),(_this select 2)] spawn{

_MAX_POPULATION = (_this select 0);
_MIN_DISTANCE = (_this select 1);
_MAX_DISTANCE = (_this select 2);



_civ_types = ["C_man_1", "C_man_polo_1_F_euro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F","C_man_polo_5_F_euro","C_man_p_fugitive_F","C_man_p_beggar_F_euro","C_man_hunter_1_F","C_scientist_F","C_man_hunter_1_F","C_Nikos_aged","C_Nikos"];
_ambient_moves = ["AmovPsitMstpSnonWnonDnon_smoking","acts_StandingSpeakingUnarmed"];//,"Acts_A_M01_briefing","Acts_listeningToRadio_Loop","Acts_ShieldFromSun_loop","acts_StandingSpeakingUnarmed","acts_PointingLeftUnarmed","Acts_AidlPercMstpSlowWrflDnon_pissing","AmovPercMstpSrasWlnrDnon_AwopPercMstpSoptWbinDnon","AmovPercMstpSrasWrflDnon_gear_AmovPercMstpSrasWrflDnon","AmovPsitMstpSnonWnonDnon_smoking"];



//hint str (_civ_types);

//hint (_civ_types select (random (count _civ_types) -1));


civs = [];
_unit = "";



	for "_i" from 0 to _MAX_POPULATION do {

		waituntil {(count allPlayers) > 0};
		

		_sPos = [allPlayers, _MIN_DISTANCE,_MAX_DISTANCE] call compile preprocessFileLineNumbers "getBuilding.sqf";
		_sPos = _sPos getPos [random [4,4,0],random 360];

		if (isNil "_sPos") then { _sPos = [20,20,0] };

		_group = createGroup [west, true];
		_unit = _group createUnit [(_civ_types select (random ((count _civ_types) - 1))) , _sPos, [], 0, "NONE"];
//		(units _group) joinSilent _group;
		//  _unit playMove "CutSceneAnimationSmk";
		_unit setVariable ["HOME",_sPos];

		civs pushBack _unit;

	sleep .5;

	};




while{true}do{

	for "_i" from 0 to _MAX_POPULATION do {
		waituntil {(count allPlayers) > 0};
		

		_unit = civs select _i;

		//hint name _unit;
		//sleep 1;

		//get nearest player distance
		_tooFar = true;

		{
			if ((_unit distance (_x)) < _MAX_DISTANCE) then {_tooFar = false;};
		
		}forEach allPlayers;		
	
		if (!(alive _unit) || _tooFar) then {

			//hint "unit diesd";
		//	sleep 1;

			deleteVehicle _unit;

			_sPos = [allPlayers, _MIN_DISTANCE,_MAX_DISTANCE] call compile preprocessFileLineNumbers "getBuilding.sqf";
		
			_sPos = _sPos getPos [random [4,4,0],random 360];

		if (isNil "_sPos") then { _sPos = [20,20,0] };
			
			_group = createGroup [west, true];
			_unit = _group createUnit [(_civ_types select (random ((count _civ_types) - 1))), _sPos, [], 0, "NONE"];
			_unit setVariable ["HOME",_sPos];
		//	_marker2 = createMarker [(name _unit),_unit];
		//	_marker2 setMarkerType "hd_dot";
			//(units _group) joinSilent _group;
			civs set [_i, _unit];
		};

		_unit = civs select _i;

		if ((random 10) > 3) then{
			_Dist = random [40,40,10];
			_dir = random 360;
			_newPos = _unit getRelPos [_Dist,_dir];
			if (!(isOnRoad _newPos)) then
			{
				if ((random 10) > 4) then {
					_wp =(group _unit) addWaypoint [_newPos, 20];
					_wp setWaypointType "MOVE";
					(group _unit) setCurrentWaypoint _wp;
				}
				else{
					_wp =(group _unit) addWaypoint [(_unit getVariable "HOME"), 20];
					_wp setWaypointType "MOVE";
					(group _unit) setCurrentWaypoint _wp;
				};
			};
		}else
		{ //play animation

			

			_unit playMove (_ambient_moves select (random (count _ambient_moves)) );

		};

sleep .5;
	};
sleep 15;

};

hint "exit spawn";

};