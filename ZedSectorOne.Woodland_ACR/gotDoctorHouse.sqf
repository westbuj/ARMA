//me     = _this select 1;
//_ai     = _this select 0;
//_id     = _this select 2;
//me removeAction _id;


_h = [7,25,6] execVM "skipTime.sqf";

player createDiaryRecord ["Diary", ["Intel", "Arrived at Doctors House"]];



deliverAnalysis setTaskState "Succeeded";

returnWithVan = player createSimpleTask ["VAN_SHERRIF"];
returnWithVan setSimpleTaskDescription ["Take the van with the analysis to the police station.","Return to Sherrif",""];
returnWithVan setSimpleTaskDestination ((getMarkerPos "police_station"));
returnWithVan setTaskState "Assigned";
player setCurrentTask returnWithVan;


[0,0,false] spawn BIS_fnc_cinemaBorder;

//=== Create Camera
_camera = "camera" camcreate ([0,15,1.5] vectorAdd position miller);
_camera cameraeffect ["internal","back"];

playSound "Music_2";


_camera camPrepareTarget miller;
_camera camPreparePos ([0,15,1.5] vectorAdd position miller);
_camera camPrepareFOV 0.5;
_camera camCommitPrepared 4;
_camera camCommit 4;


sleep 7;

[1,1,false] spawn BIS_fnc_cinemaBorder;

player cameraEffect ["terminate","back"];
camDestroy _camera;



//deleting the train wreck from the game


{
	deleteVehicle _x;
} forEach ((getMissionLayerEntities "ANALYST_LAIR") select 0);
