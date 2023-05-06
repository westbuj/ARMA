params["_pos_object","_pipTarget","_lookAt","_fov"];

hint "called Add static cam";
sleep 1;

private _nPos = getPosATL _pos_object;
private _cam = "camera" camCreate _nPos;

_cam camSetTarget _lookAt;
_cam cameraEffect["Internal","Back",_pipTarget];
_cam camSetFov _fov;
_cam camCommit 1;