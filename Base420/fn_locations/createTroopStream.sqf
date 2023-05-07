params["_targetPop","_wp_accuracy","_waypoints","_sideInt", "_units_array"];
//[30,20,[],west,["B_soldier_LAT2_F","B_soldier_LAT2_F","B_soldier_LAT2_F"]] execVM "createStream.sqf";
//[30,20,[WP_BLUE,WP_MIDDLE,WP_RED],west,["B_soldier_LAT2_F","B_soldier_LAT2_F","B_soldier_LAT2_F"]] execVM "createStream.sqf";
//"O_Soldier_AR_F"

hint  "JNN Troop Stream - Server Launch";


if (isServer) then {

[_targetPop,_wp_accuracy,_waypoints,_sideInt, _units_array] spawn
{
	params["_targetPop","_wp_accuracy","_waypoints","_sideInt", "_units_array"];

	private _troopsArray=[];


	while{(count _troopsArray) < _targetPop}do{
		private _grp=[getPosATL (_waypoints select 0), _sideInt , _units_array] call BIS_fnc_spawnGroup;
			for "_i" from 0 to ((count _waypoints) -1) do 
				{
					private _wp =_grp addWaypoint [(_waypoints select _i), _wp_accuracy];
					_wp setWaypointType "MOVE";
					_wp setWaypointBehaviour "COMBAT";
				};

			{
			_troopsArray pushBack _x;
			}forEach units _grp;
			//hint  (str (count _troopsArray));
  			sleep 5;
		};

	
	while{true}do
	{
		
		private _deadCount=0;
		for "_i" from ((count _troopsArray) - 1) to 0 step -1 do
		{
			if !(alive (_troopsArray select _i)) then {
				_deadCount = _deadCount + 1;
				deleteVehicle (_troopsArray select _i);
				_troopsArray deleteAt _i;

				}; 
			//sleep 1;	
		};
		//hint (str (count _troopsArray));
		sleep 10;

		while{(count _troopsArray) < _targetPop}do{
		private _grp=[getPosATL (_waypoints select 0), _sideInt , _units_array] call BIS_fnc_spawnGroup;
			for "_i" from 0 to ((count _waypoints) -1) do 
				{
					private _wp =_grp addWaypoint [(_waypoints select _i), _wp_accuracy];
					_wp setWaypointType "MOVE";
					_wp setWaypointBehaviour "COMBAT";
				};

			{
			_troopsArray pushBack _x;
			}forEach units _grp;
			//hint  (str (count _troopsArray));
  			sleep 5;
		};

	};

	



	};


};