params["_id","_groupID","_unitID"];

hint "Attach";
sleep 1;

private _group=(subs select _groupID) select 2;
private _unit = vehicle ((units _group) select _unitID);

private _cam = (CAMERAS select _id) select 2;
private _eyeDir = eyeDirection _unit;
_cam setVectorDir _eyeDir;

_cam attachTo [_unit,[0.12,0,0.15],"Head",true];

