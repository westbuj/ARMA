

//titleText ["<t color='#ff0000' size='15'>Position of Trigger</t><br/>"+str(_this select 0), "PLAIN", -1, true, true];
//titleCut [str(_this select 0),"BLACK IN",10];
//sleep 6;

[(_this select 0),(_this select 1)] spawn 
{


if (!isServer) exitWith {};


//if (hasInterface) exitWith {};

_spawn_pos = _this select 0;

  _zombies_SWARM = [];

_SWARM_grp = createGroup [east, false];
_SWARM_WP = _SWARM_grp addWaypoint [position player, 0];
_SWARM_WP setWaypointType "MOVE";
_SWARM_WP setWaypointSpeed "NORMAL";
_SWARM_grp setCurrentWaypoint _SWARM_WP;


_swarm_max_zombies = _this select 1; 

_unit = _SWARM_grp createUnit ["zombie_walker", _spawn_pos, [], 0, "NONE"];
				[_unit] joinSilent _SWARM_grp;
				_SWARM_grp selectLeader _unit;
				_zombies_SWARM pushBack _unit;
				hint "Swarm Spawned";

				sleep 1;


  while {(count _zombies_SWARM) > 0} do {
	

		
		while {(count _zombies_SWARM) < _swarm_max_zombies} do 
			{
				

				_unit = _SWARM_grp createUnit ["zombie_walker", _spawn_pos, [], 0, "NONE"];
			//	[_unit] joinSilent _SWARM_grp;
				_SWARM_grp selectLeader _unit;
				_zombies_SWARM pushBack _unit;
				

				sleep .5;

			};


		
		for [{_i=0},{ _i < count _zombies_SWARM },{_i=_i+1}] do
			{

				if (player distance (_zombies_SWARM select _i) > 200) then
					{
						deleteVehicle (_zombies_SWARM select _i);

						

						_zombies_SWARM deleteAt _i;
						
						_i=_i-1;
						sleep 1;
			
					};
		
			};

    hint "WayPoint Set";
    _zombie_WP_num = currentWaypoint _SWARM_grp;
    deleteWaypoint [ _SWARM_grp, _zombie_WP_num];

_zombie_WP = _SWARM_grp addWaypoint [position player, 0];
//_zombie_WP setWaypointType "MOVE"; //"SAD"
_zombie_WP setWaypointType "SAD";
_zombie_WP setWaypointSpeed "NORMAL";

    sleep 6;	
	};
};

hint "Swarm Deleted";


