
[0,0,false] spawn BIS_fnc_cinemaBorder;

_h = [20,14,3] execVM "skipTime.sqf";

//=== Create Camera
_camera = "camera" camcreate ([0,0,1] vectorAdd getMarkerPos "cam_start");
_camera cameraeffect ["internal","back"];



_camera camPrepareTarget sherrif;
_camera camPreparePos ([0,0,1.5] vectorAdd getMarkerPos "cam_start");
_camera camPrepareFOV 0.05;
_camera camCommitPrepared 0;
_camera camCommit 0;

sleep 2;


titleText ["<t color='#ff0000' size='9'>You got the code!</t><br/>now do the next thing", "PLAIN", -1, true, true];
titleCut ["","BLACK IN",10];
sleep 3;
player playMoveNow "amovpercmstpslowwfldnon";
sleep 2;

sherrif switchMove "Acts_C_in1_briefing";

_camera camPrepareTarget sherrif;
_camera camPreparePos ([-3.1,2,1.85] vectorAdd getMarkerPos "cam_start");
_camera camPrepareFOV 0.4;
_camera camCommitPrepared 1;
_camera camCommit 1;
sleep 2;

miller playMoveNow "amovpercmstpslowwfldnon";


sherrif say3D "saferInJail";
sherrif sideChat "Just hold it down, we will make sure you are safe.";
sleep 5;


_camera camPrepareTarget sherrif;
_camera camPreparePos ([-3.1,2,1.85] vectorAdd getMarkerPos "cam_start");
_camera camPrepareFOV 0.05;
_camera camCommitPrepared 8;
_camera camCommit 8;



[ "Regional Sherrif's Office", format ["Day %1", date select 2], mapGridPosition player ] spawn BIS_fnc_infoText;

sleep 5;

[1,1,false] spawn BIS_fnc_cinemaBorder;

player cameraEffect ["terminate","back"];
camDestroy _camera;


miller switchMove "amovpercmstpslowwfldnon";


deliver_plans_to_station setTaskState "Succeeded";

acquirePart_2 = player createSimpleTask ["DELIVER_MILLER"];
acquirePart_2 setSimpleTaskDescription ["Take Miller to the outskirts and find the residenz.","Delivery Mission",""];
acquirePart_2 setSimpleTaskDestination ((getMarkerPos "OUTSKIRTS"));
acquirePart_2 setTaskState "Assigned";
player setCurrentTask acquirePart_2;


miller addWeapon "hgun_Pistol_heavy_01_snds_F";
miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";

//miller setVariable ["following", true, true];
//miller_follow_thread = [miller, player] execVM "AI_FOLLOWER_2.sqf";

miller setVariable ["followingObj",(allPlayers select 0),true];
miller setVariable ["following",true,true];
miller setVariable ["possibleFollow",allPlayers,true];

miller_follow_thread = [miller, (allPlayers select 0)] execVM "AI_FOLLOWER_2.sqf";



//deleting the train wreck from the game


{
	deleteVehicle _x;
} forEach ((getMissionLayerEntities "TRAIN_WRECK") select 0);

