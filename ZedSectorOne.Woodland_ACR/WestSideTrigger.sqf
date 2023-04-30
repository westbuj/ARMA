[0,0,false] spawn BIS_fnc_cinemaBorder;

sleep 5;
[1,1,false] spawn BIS_fnc_cinemaBorder;


task3 setTaskState "Succeeded";


RUN_TASK = player createSimpleTask ["GetOutOffTown"];
RUN_TASK setSimpleTaskDescription ["You better run","decision time",""];
RUN_TASK setTaskState "Assigned";
player setCurrentTask RUN_TASK;