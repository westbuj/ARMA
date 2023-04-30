cutText ["","BLACK FADED"];
[0,0,false] spawn BIS_fnc_cinemaBorder;

//=== Create Camera
_camera = "camera" camcreate ([0,0,1] vectorAdd getMarkerPos "cam_start");
_camera cameraeffect ["internal","back"];



playSound "Music_1";


_camera camPrepareTarget miller;
_camera camPreparePos ([0,0,1.5] vectorAdd getMarkerPos "cam_start");
_camera camPrepareFOV 0.05;
_camera camCommitPrepared 0;
_camera camCommit 0;

sleep 2;


titleText ["<t color='#ff0000' size='15'>ZED Alert!</t><br/>brought to you by JNN and AARONCO", "PLAIN", -1, true, true];
titleCut ["","BLACK IN",10];
sleep 3;
player playMoveNow "amovpercmstpslowwfldnon";
sleep 2;
miller playMoveNow "acts_civiltalking_1";
sleep 1;
miller sideChat "You can't leave me in here, not with those monsters out there!";
miller say3D "drunk_prisoner";
sleep 1;
_camera camPrepareTarget miller;
_camera camPreparePos ([0,0,1.25] vectorAdd getMarkerPos "cam_start");
_camera camPrepareFOV 0.5;
_camera camCommitPrepared 4;
_camera camCommit 4;

sleep 3;
sherrif switchMove "Acts_C_in1_briefing";

_camera camPrepareTarget sherrif;
_camera camPreparePos ([-3.1,2,1.85] vectorAdd getMarkerPos "cam_start");
_camera camPrepareFOV 0.4;
_camera camCommitPrepared 1;
_camera camCommit 1;
sleep 2;

miller playMoveNow "amovpercmstpslowwfldnon";


sherrif say3D "saferInJail";
sherrif sideChat "You're safer in there than you are out here.";
sleep 5;
sherrif say3D "seeTheCommander";

_camera camPrepareTarget sherrif;
_camera camPreparePos ([-3.1,2,1.85] vectorAdd getMarkerPos "cam_start");
_camera camPrepareFOV 0.05;
_camera camCommitPrepared 8;
_camera camCommit 8;

sleep 12;

sherrif sideChat "Go to the train wreck and find the data";
sleep 4;
_camera camPrepareTarget sherrif;
_camera camPreparePos ([-3.1,2,1.85] vectorAdd getMarkerPos "cam_start");
_camera camPrepareFOV 0.7;
_camera camCommitPrepared 4;
_camera camCommit 4;

sherrif say3D "getWeapons";
sherrif sideChat "Stock up now for safety.";
sleep 5;





[1,1,false] spawn BIS_fnc_cinemaBorder;

player cameraEffect ["terminate","back"];
camDestroy _camera;



player switchMove "amovpercmstpslowwfldnon";
miller switchMove "amovpercmstpslowwfldnon";



find_plans_task = player createSimpleTask ["TRAIN"];
find_plans_task setSimpleTaskDescription ["Find the data at the train wreck.","Data Recovery",""];
find_plans_task setSimpleTaskDestination ((getMarkerPos "TRAIN_WRECK"));
find_plans_task setTaskState "Assigned";
player setCurrentTask find_plans_task;

player addWeapon "hgun_Pistol_heavy_01_snds_F";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";


sherrif switchMove "amovpercmstpslowwfldnon";
sherrif addWeapon "hgun_Pistol_heavy_01_snds_F";
sherrif addMagazine "11Rnd_45ACP_Mag";
sherrif addMagazine "11Rnd_45ACP_Mag";
sherrif addMagazine "11Rnd_45ACP_Mag";
sherrif addMagazine "11Rnd_45ACP_Mag";
sherrif addMagazine "11Rnd_45ACP_Mag";

zombie_grp = createGroup [east, false];
zombie_WP = zombie_grp addWaypoint [position player, 0];
zombie_WP setWaypointType "MOVE";
zombie_WP setWaypointSpeed "NORMAL";
zombie_grp setCurrentWaypoint zombie_WP;



SCORE_TEST = 0;


ChopperGroupReturnToHome = false;
HeliBus_1_return = false;


_wp =chopper_1 addWaypoint [getMarkerPos "chopper_1_wp_1", 0];
_wp setWaypointSpeed "NORMAL";
_wp setWaypointType "MOVE";



_wp =chopper_1 addWaypoint [getMarkerPos "chopper_1_wp_2", 0];
_wp setWaypointSpeed "NORMAL";
_wp setWaypointType "MOVE";




_wp =chopper_1 addWaypoint [getMarkerPos "chopper_1_wp_3", 0];
_wp setWaypointSpeed "NORMAL";
_wp setWaypointType "GETOUT";







zombies = [];

[] spawn 
{
  while {true} do {
	
		//_cnt = count zombies;
		max_zombies = (1 + (player distance getMarkerPos "police_station") / 50);
		hint format ["Max Zeds = %1 Current = %2", max_zombies, count zombies];
		sleep 2;
		//hint format ["Helibus return = %1 ", HeliBus_1_return];
		//sleep 3;


		while {(count zombies) < max_zombies} do 
			{
				_Dist = random [75,150,300];
				_dir = random 360;
				_newPos = player getPos [_Dist,_dir];

				_unit = zombie_grp createUnit ["zombie_walker", _newPos, [], 0, "NONE"];
				[_unit] joinSilent zombie_grp;
				zombie_grp selectLeader _unit;
				zombies pushBack _unit;
				//hint "Spawned";

				sleep 1;

			};


		
		for [{_i=0},{ _i < count zombies },{_i=_i+1}] do
			{

				if (player distance (zombies select _i) > 400) then
					{
						deleteVehicle (zombies select _i);

						_Dist = random [100,150,300];
						_dir = random 360;
						_newPos = player getPos [_Dist,_dir];

						_unit = zombie_grp createUnit ["zombie_walker", _newPos, [], 0, "NONE"];
						[_unit] joinSilent zombie_grp;
						zombie_grp selectLeader _unit;
						//zombies pushBack _unit;
						zombies set [ _i, _unit];

						//zombies deleteAt _i;
						//hint "Replaced";
						_i=_i-1;
						sleep 1;
			
					};
		
			};

//player distance getMarkerPos "police_station"

		


    //hint "WayPoint Set";
    zombie_WP_num = currentWaypoint zombie_grp;
    deleteWaypoint [ zombie_grp, zombie_WP_num];
//    [zombie_grp,zombie_WP_num ] setWaypointPosition [position player, 5];

  //  zombie_grp setCurrentWaypoint zombie_WP;

zombie_WP = zombie_grp addWaypoint [position player, 0];
zombie_WP setWaypointType "SAD";
zombie_WP setWaypointSpeed "NORMAL";

    sleep 6;	
	};
};

