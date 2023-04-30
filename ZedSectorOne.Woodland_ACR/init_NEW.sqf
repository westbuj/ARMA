playSound "Music_1";
cutText ["","BLACK FADED"];
titleText ["<t color='#ff0000' size='15'>News 7</t><br/>Live", "PLAIN", -1, true, true];
[0,0,false] spawn BIS_fnc_cinemaBorder;

//=== Create Camera
_camera = "camera" camcreate ([30,1,1.5] vectorAdd position NEWS_ANCHOR);
_camera cameraeffect ["internal","back"];






_camera camPrepareTarget NEWS_ANCHOR;
_camera camPreparePos  ([30,1,1.5] vectorAdd position NEWS_ANCHOR);
_camera camPrepareFOV 0.01;
_camera camCommitPrepared 0;
_camera camCommit 0;

sleep 6;



_camera camPrepareTarget NEWS_ANCHOR;
_camera camPreparePos ([3,1,2] vectorAdd position NEWS_ANCHOR);
_camera camPrepareFOV 0.2;
_camera camCommitPrepared 4;
_camera camCommit 4;
sleep 4;



sleep 15;

//cut to sherrif office

sherrif switchMove "Acts_C_in1_briefing";

_camera camPrepareTarget sherrif;
_camera camPreparePos ([-2,2,1.85] vectorAdd position sherrif);
_camera camPrepareFOV 0.8;
_camera camCommitPrepared 0;
_camera camCommit 0;
sleep 5;

sherrif sideChat "You're safer in there than you are out here.";
sleep 5;
sherrif say3D "seeTheCommander";

_camera camPrepareTarget sherrif;
_camera camPreparePos ([-2,2,1.85] vectorAdd position sherrif);
_camera camPrepareFOV 0.8;
_camera camCommitPrepared 8;
_camera camCommit 8;

sleep 12;






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

