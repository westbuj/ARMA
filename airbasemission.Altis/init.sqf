setViewDistance 10000;

if (isNil "PLAYMUSIC_CLASS") then { PLAYMUSIC_CLASS = ""; };
if (isNil "LOADINGMUSIC_CLASS") then { LOADINGMUSIC_CLASS = ""; };
if (isNil "PLAYSOUND_CLASS") then { PLAYSOUND_CLASS = ""; };

[copter] spawn {


	while{true}do{

	//	hint str (getPosATL (_this select 0));
		sleep 5;

	};
};

if (!isServer) exitWith {};

finishMissionInit;

_blds =[];	
	while {(count _blds) < 1}do {
		//hint str (count _blds);
		{
			_blds = _blds + nearestobjects [_x,["house"], 800];
		}forEach allPlayers;
	sleep 5;
	};
sleep 5;






ambient_radio_sounds = ["RadioAmbient1","RadioAmbient2","RadioAmbient3","RadioAmbient4","RadioAmbient5","RadioAmbient6","RadioAmbient7","RadioAmbient8","RadioAmbient9","RadioAmbient10","RadioAmbient11","RadioAmbient12","RadioAmbient13","RadioAmbient14","RadioAmbient15","RadioAmbient16","RadioAmbient17","RadioAmbient18"];
mission_start_radio_sounds = ["BIS_WL_Airdrop_WEST", "BIS_WL_Canceled_WEST", "BIS_WL_Defeat_WEST", "BIS_WL_Destination_WEST", "BIS_WL_Dropzone_WEST", "BIS_WL_Enemy_advancing_WEST", "BIS_WL_Fast_travel_WEST", "BIS_WL_Incoming_WEST", "BIS_WL_Initialized_WEST", "BIS_WL_Lost_WEST", "BIS_WL_Reset_WEST", "BIS_WL_Scan_WEST", "BIS_WL_Scan_terminate_WEST", "BIS_WL_Sector_WEST", "BIS_WL_Seized_WEST", "BIS_WL_Selected_WEST", "BIS_WL_Under_attack_WEST", "BIS_WL_Victory_WEST", "BIS_WL_Voting_WEST", "BIS_WL_Airdrop_EAST", "BIS_WL_Canceled_EAST", "BIS_WL_Defeat_EAST", "BIS_WL_Destination_EAST", "BIS_WL_Dropzone_EAST", "BIS_WL_Enemy_advancing_EAST", "BIS_WL_Fast_travel_EAST", "BIS_WL_Incoming_EAST", "BIS_WL_Initialized_EAST", "BIS_WL_Lost_EAST", "BIS_WL_Reset_EAST", "BIS_WL_Scan_EAST", "BIS_WL_Scan_terminated_EAST", "BIS_WL_Sector_EAST", "BIS_WL_Seized_EAST", "BIS_WL_Selected_EAST", "BIS_WL_Under_attack_EAST", "BIS_WL_Victory_EAST", "BIS_WL_Voting_EAST"];
ambientMusic = "true" configClasses (configfile >> "cfgMusic" );
ambientMusic = (ambientMusic apply {configName _x});

LOADINGMUSIC_CLASS = (ambientMusic select (random (count(ambientMusic) - 1)));
	publicVariableServer "LOADINGMUSIC_CLASS";
	publicVariable "LOADINGMUSIC_CLASS";

enemyUnits = [];
{

	enemyUnits pushBack (typeOf _x);
	deleteVehicle _x;

}forEach (units MISSION_TEAM);

leaderUnits = [];
{

	leaderUnits pushBack (typeOf _x);
	deleteVehicle _x;

}forEach (units MISSION_LEADERS);



if (isServer) then {[25,300,600] execVM "civilian_SERVER.sqf";};



[] execVM "missionFactory.sqf";
task_ids=1;

[["C_Hatchback_01_F","C_Tractor_01_F","C_Truck_02_box_F"]] spawn {

_vs = (_this select 0);

while {true}do{
	sleep 500;
	_ind = random ((count _vs) - 1 ) ;
	_vehicle = _vs select _ind;

	_v_location = [allPlayers, 300,1000] call compile preprocessFileLineNumbers "getRoads.sqf";	

	_jeep =  createVehicle [_vehicle,_v_location,[],0,"NONE"];

	[_jeep] spawn{

	_deSpawn = false;
	while{!_deSpawn}do{
		sleep 15;
		_deSpawn = true;
		{
			if ((_x distance(_this select 0)) < 1000) then {_deSpawn = false;};			
		}forEach allPlayers;


	};
	deleteVehicle (_this select 0);
	};


	
};



};




