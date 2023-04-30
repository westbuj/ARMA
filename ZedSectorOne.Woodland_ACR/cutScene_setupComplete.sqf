
[0,0,false] spawn BIS_fnc_cinemaBorder;


_h = [7,4,5] execVM "skipTime.sqf";

//=== Create Camera
_camera = "camera" camcreate ([0,0,1] vectorAdd getMarkerPos "cam_start");
_camera cameraeffect ["internal","back"];



_camera camPrepareTarget sherrif;
_camera camPreparePos ([0,0,1.5] vectorAdd getMarkerPos "cam_start");
_camera camPrepareFOV 0.05;
_camera camCommitPrepared 0;
_camera camCommit 0;

sleep 2;


titleText ["<t color='#ff0000' size='15'>Setup Complete</t><br/>now do the next thing", "PLAIN", -1, true, true];
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


_h = [6,.5,3] execVM "skipTime.sqf";
sleep 5;

[1,1,false] spawn BIS_fnc_cinemaBorder;

player cameraEffect ["terminate","back"];
camDestroy _camera;




returnWithVan setTaskState "Succeeded";

Act_2_into = player createSimpleTask ["Save_Group"];
Act_2_into setSimpleTaskDescription ["Rescue a group of survivors from a horde of zombies","Rescue Mission",""];
Act_2_into setSimpleTaskDestination ((getMarkerPos "survivor_rescue_1"));
Act_2_into setTaskState "Assigned";
player setCurrentTask Act_2_into;



if (isServer) then {
	miller setVariable ["following", false, true];
	ANALYST setVariable ["following", false, true];

	miller doMove (getMarkerPos "police_barracks");
	ANALYST doMove (getMarkerPos "police_barracks");

};