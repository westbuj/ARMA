if (!isServer) exitWith{};

//get parameters

_leader = _this select 0;
_leader_home = _this select 1;
_enemyGroups = _this select 2;

_group = createGroup [east, true];
_unit = _group createUnit [_leader, _leader_home, [], 0, "NONE"];
_wp =(group _unit) addWaypoint [(_leader_home), 20];
_wp setWaypointType "SAD";
(group _unit) setCurrentWaypoint _wp;

_groupCount = 0;

{
_group = createGroup [east, true];

	{_unitType = (_x);
		
		_unit = _group createUnit [_unitType, _leader_home, [], 0, "NONE"];
	
	}forEach _x;
}forEach _enemyGroups;

