[0,0,false] spawn BIS_fnc_cinemaBorder;

//=== Create Camera
_camera = "camera" camcreate ([0,0,1] vectorAdd getMarkerPos "Commander_Briefing");
_camera cameraeffect ["internal","back"];



_camera camPrepareTarget commander_scott;
_camera camPreparePos ([-3.1,2,1] vectorAdd getMarkerPos "Commander_Briefing");
_camera camPrepareFOV 0.1;
_camera camCommitPrepared 8;
_camera camCommit 8;


commander_scott playMove "Acts_B_M03_briefing";
player playMoveNow "amovpercmstpslowwfldnon";

commander_scott sideChat "I am glad you made it.";

commander_scott say3D "commanderMessage";
sleep 13;
[1,1,false] spawn BIS_fnc_cinemaBorder;
commander_scott switchMove "amovpercmstpslowwfldnon";

player cameraEffect ["terminate","back"];
camDestroy _camera;


player call BIS_fnc_tasksUnit;

task2 setTaskState "Succeeded";

drTask = player createSimpleTask ["deliverFormula"];
drTask setSimpleTaskDescription ["Deliver the Documents to the Doctor","Dr Schnrub",""];
//drTask setSimpleTaskDestination (getMarkerPos "marker_5");
drTask setTaskState "Assigned";

task3 = player createSimpleTask ["SmilerHomestead"];
task3 setSimpleTaskDescription ["Meet my comrades near Smiler's. <marker name = marker_5>Smilers</marker>","Smiler's","<marker name = obj2>Vehicle Staged</marker>"];
task3 setSimpleTaskDestination (getMarkerPos "marker_5");
task3 setTaskState "Assigned";
player setCurrentTask task3;

player createDiaryRecord ["Diary", ["Intel", "Commander Scott gave you the documents for Dr. Schnrub."]];
player setVariable ["hasFormula", true];

hint "Commander Scott gave you the documents for Dr. Schnrub.\nSee diary.";
