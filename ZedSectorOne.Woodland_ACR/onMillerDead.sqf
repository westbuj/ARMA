
[0,0,false] spawn BIS_fnc_cinemaBorder;

//=== Create Camera
_camera = "camera" camcreate ([0,0,1] vectorAdd getMarkerPos "cam_start");
_camera cameraeffect ["internal","back"];



_camera camPrepareTarget miller;
_camera camPreparePos ([0,0,2.5] vectorAdd (position miller));
_camera camPrepareFOV 0.5;
_camera camCommitPrepared 0;
_camera camCommit 0;

sleep 2;

playSound "Music_1";


titleText ["<t color='#ff0000' size='9'>Miller died.</t><br/>You lose.", "PLAIN", -1, true, true];
//titleCut ["","BLACK IN",10];


sleep 5;


_camera camPrepareTarget miller;
_camera camPreparePos ([0,0,150] vectorAdd (position miller));
_camera camPrepareFOV 0.1;
_camera camCommitPrepared 12;
_camera camCommit 12;
sleep 10;

_camera camPrepareTarget miller;
_camera camPreparePos ([0,0,850] vectorAdd (position miller));
_camera camPrepareFOV 0.1;
_camera camCommitPrepared 4;
_camera camCommit 4;
sleep 3;



cutText ["","BLACK OUT"];
sleep 2;

[1,1,false] spawn BIS_fnc_cinemaBorder;

player cameraEffect ["terminate","back"];
camDestroy _camera;


endMission "LOSER";