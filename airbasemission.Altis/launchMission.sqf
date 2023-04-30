if (!isServer) exitWith{};



_ambientRadCount = 1 + (random 4);


for "_i" from 1 to _ambientRadCount do {
	PLAYMUSIC_CLASS = (ambient_radio_sounds select (random (count(ambient_radio_sounds) - 1)));
	publicVariableServer "PLAYMUSIC_CLASS";
	publicVariable "PLAYMUSIC_CLASS";
	//_source = playMusic (ambient_radio_sounds select (random (count(ambient_radio_sounds) - 1)));
	//[(ambient_radio_sounds select (random (count(ambient_radio_sounds) - 1)))] remoteExec ["playSound", 0];
	sleep 3;
	//playMusic "";
	PLAYMUSIC_CLASS ="";
	publicVariableServer "PLAYMUSIC_CLASS";
	publicVariable "PLAYMUSIC_CLASS";
	
	sleep .5;

	};
//PLAYSOUND_CLASS
sleep 3;

PLAYMUSIC_CLASS = (ambient_radio_sounds select (random (count(ambient_radio_sounds) - 1)));
publicVariableServer "PLAYMUSIC_CLASS";
publicVariable "PLAYMUSIC_CLASS";

PLAYSOUND_CLASS="Alarm"; 
publicVariableServer "PLAYSOUND_CLASS";
publicVariable "PLAYSOUND_CLASS";
sleep 2;

PLAYSOUND_CLASS="BIS_WL_Under_attack_WEST";
publicVariableServer "PLAYSOUND_CLASS";
publicVariable "PLAYSOUND_CLASS";
sleep 3;

PLAYSOUND_CLASS="Alarm"; 
publicVariableServer "PLAYSOUND_CLASS";
publicVariable "PLAYSOUND_CLASS"; 
sleep 1;
PLAYMUSIC_CLASS ="";
publicVariableServer "PLAYMUSIC_CLASS";
publicVariable "PLAYMUSIC_CLASS";

sleep 1.5;

_ambientRadCount = 1 + (random 3);
for "_i" from 1 to _ambientRadCount do {
	PLAYMUSIC_CLASS = (ambient_radio_sounds select (random (count(ambient_radio_sounds) - 1)));
	publicVariableServer "PLAYMUSIC_CLASS";
	publicVariable "PLAYMUSIC_CLASS";
	//_source = playMusic (ambient_radio_sounds select (random (count(ambient_radio_sounds) - 1)));
	//[(ambient_radio_sounds select (random (count(ambient_radio_sounds) - 1)))] remoteExec ["playSound", 0];
	sleep 3;
	//playMusic "";
	PLAYMUSIC_CLASS ="";
	publicVariableServer "PLAYMUSIC_CLASS";
	publicVariable "PLAYMUSIC_CLASS";
	
	sleep .5;

	};


//get parameters

_leader = _this select 0;
_gang_name = _this select 1;

_leader_name = _this select 2;
_leader_home = _this select 3;
_announce = _this select 4;
_enemyGroups = _this select 5;
_supportElements = _this select 6;

_leaderUnits = [];



		_group = createGroup [east, true];
		_unit = _group createUnit [_leader, _leader_home, [], 0, "NONE"];

		_leaderUnits pushBack _unit;

		_wp =(group _unit) addWaypoint [(_leader_home), 20];
		_wp setWaypointType "SAD";
		(group _unit) setCurrentWaypoint _wp;


_tID = (str task_ids);

task_ids= task_ids +1;

[west,_tID , [_announce, "Trouble Reported", "Gang Activity"], _leader_home, false] spawn BIS_fnc_taskCreate; 


_unit setVariable ["task", _tID];
_unit setVariable ["COMPLETE", false, false];



{
_group = createGroup [east, true];

	{_unitType = (_x);
		
		_unit = _group createUnit [_unitType, _leader_home, [], 0, "NONE"];
		_leaderUnits pushBack _unit;

		_wp =(group _unit) addWaypoint [(_leader_home apply {_x + 50 - (random 100)}), 20];
		_wp setWaypointType "SAD";
		(group _unit) setCurrentWaypoint _wp;

	
	}forEach _x;
}forEach _enemyGroups;





[_tID,_leaderUnits] spawn 
{


	if (!isServer) exitWith {};

	_task =  _this select 0;
	_l_unit =   _this select 1;

	  while {{ alive _x } count _l_unit > 0} do { 	sleep 5; };


	[_task, "SUCCEEDED", true] call BIS_fnc_taskSetState;

	sleep (random 240);
	[] execVM "missionFactory.sqf";


};
