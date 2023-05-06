params["_screenName","_pipTarget"];

hint "SERVER Add camera to 420";
sleep 2;

if (isNil "CAMERAS") then { 	CAMERAS = [];};


_cam = "camera" camCreate[0,0,0];
_cam cameraEffect["Internal","Back",_pipTarget];
_cam camSetFov 0.7;

CAMERAS pushBack [_screenName,_pipTarget,_cam];
