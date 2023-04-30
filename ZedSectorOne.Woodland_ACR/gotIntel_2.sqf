
_h = [23,3,3] execVM "skipTime.sqf";
playSound "Music_2";

player createDiaryRecord ["Diary", ["Intel", "Analysis of Miller"]];



acquirePart_2 setTaskState "Succeeded";

ANAL_SHERRIF_task = player createSimpleTask ["ANALYST_SHERRIF"];
ANAL_SHERRIF_task setSimpleTaskDescription ["Take the Analyst to the Sherrif.","Help the Analyst",""];
ANAL_SHERRIF_task setSimpleTaskDestination ((getMarkerPos "police_station"));
ANAL_SHERRIF_task setTaskState "Assigned";

MILLER_SHERRIF_task = player createSimpleTask ["MILLER_SHERRIF"];
MILLER_SHERRIF_task setSimpleTaskDescription ["Take Miller back to the Sherrif.","Help Miller",""];
MILLER_SHERRIF_task setSimpleTaskDestination ((getMarkerPos "police_station"));
MILLER_SHERRIF_task setTaskState "Assigned";


deliverAnalysis = player createSimpleTask ["DR_HOUSE"];
deliverAnalysis setSimpleTaskDescription ["Pick up equipment at the doctors house","House Call",""];
deliverAnalysis setSimpleTaskDestination ((getMarkerPos "DR_HOUSE"));
deliverAnalysis setTaskState "Assigned";
player setCurrentTask deliverAnalysis;


[0,0,false] spawn BIS_fnc_cinemaBorder;

//=== Create Camera
_camera = "camera" camcreate ([0,0,1] vectorAdd (getMarkerPos "cam_pos_anal"));
_camera cameraeffect ["internal","back"];



//warp miller to ANALYSIS_CHAIR

miller disableAI "MOVE";
miller setPos (getMarkerPos "ANAL_WARP");
sleep 1;

//warp analyst to ANALYSIS_CHAIR

ANALYST disableAI "MOVE";
ANALYST setPos (getMarkerPos "ANAL_WARP");
sleep 1;

player setPos ([0,0,0] vectorAdd (getMarkerPos "player_warp_anal_scene"));
sleep 1;



_camera camPrepareTarget miller;
_camera camPreparePos ([0,0,1] vectorAdd (getMarkerPos "cam_pos_anal"));
_camera camPrepareFOV 0.09;
_camera camCommitPrepared 0;
_camera camCommit 0;


sleep 4;

_camera camPrepareTarget ANALYST;
_camera camPreparePos ([0,0,1] vectorAdd (getMarkerPos "cam_pos_anal"));
_camera camPrepareFOV 0.2;
_camera camCommitPrepared 2;
_camera camCommit 2;

sleep 10;

_camera camPrepareTarget ANALYST;
_camera camPreparePos ([0,0,1] vectorAdd (getMarkerPos "cam_pos_anal"));
_camera camPrepareFOV 0.02;
_camera camCommitPrepared 4;
_camera camCommit 4;
sleep 10;

miller enableAI "MOVE";
ANALYST enableAI "MOVE";


//ANALYST setVariable ["following",true,true];
//ANALYST_follow_thread = [ANALYST, player] execVM "AI_FOLLOWER_2.sqf";

ANALYST setVariable ["followingObj",(allPlayers select 0),true];
ANALYST setVariable ["following",true,true];
ANALYST setVariable ["possibleFollow",allPlayers,true];

ANALYST_follow_thread = [ANALYST, (allPlayers select 0)] execVM "AI_FOLLOWER_2.sqf";


ANALYST addWeapon "hgun_Pistol_heavy_01_snds_F";
ANALYST addMagazine "11Rnd_45ACP_Mag";
ANALYST addMagazine "11Rnd_45ACP_Mag";
ANALYST addMagazine "11Rnd_45ACP_Mag";
ANALYST addMagazine "11Rnd_45ACP_Mag";
ANALYST addMagazine "11Rnd_45ACP_Mag";
ANALYST addMagazine "11Rnd_45ACP_Mag";

miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";
miller addMagazine "11Rnd_45ACP_Mag";


[1,1,false] spawn BIS_fnc_cinemaBorder;

player cameraEffect ["terminate","back"];
camDestroy _camera;
