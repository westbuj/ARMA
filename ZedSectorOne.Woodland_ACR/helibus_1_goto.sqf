_distHome = position extractionCopter_2 distance getMarkerPos "HeliBusHome";
if (_distHome<20) then
	{


	_wp =Helibus_1 addWaypoint [getMarkerPos "HeliBus_1_helopad", 0];
	_wp setWaypointType "GETIN";

	_wp =Helibus_1 addWaypoint [getMarkerPos "HeliBus_1_approach", 0];
	_wp setWaypointType "MOVE";
	HeliBus_1_return = true;
	_wp =Helibus_1 addWaypoint [getMarkerPos "HeliBus_1_helopad", 0];
	_wp setWaypointType "GETOUT";
	};

[0,0,false] spawn BIS_fnc_cinemaBorder;

//=== Create Camera
_camera = "camera" camcreate ([0,15,1.5] vectorAdd position player);
_camera cameraeffect ["internal","back"];



playSound "Music_2";


_camera camPrepareTarget extractionCopter_2D;
_camera camPreparePos ([-3,40,1.5] vectorAdd position extractionCopter_2D);
_camera camPrepareFOV 0.07;
_camera camCommitPrepared 0;
_camera camCommit 0;

sleep 7;

titleText ["<t color='#ff0000' size='5'>One way to hell</t><br/>taking off for helles", "PLAIN", -1, true, true];

_camera camPrepareTarget player;
_camera camPreparePos ([0,-250,20] vectorAdd position player);
_camera camPrepareFOV 0.05;
_camera camCommitPrepared 0;
_camera camCommit 0;

sleep 5;

_camera camPrepareTarget player;
_camera camPreparePos ([0,-40,50] vectorAdd position player);
_camera camPrepareFOV 0.6;
_camera camCommitPrepared 11;
_camera camCommit 11;

sleep 7;



//hint format ["dist home = %1", _distHome];
sleep 10;

[1,1,false] spawn BIS_fnc_cinemaBorder;

player cameraEffect ["terminate","back"];
camDestroy _camera;









