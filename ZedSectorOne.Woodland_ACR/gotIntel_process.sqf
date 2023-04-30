//me     = _this select 1;
//_ai     = _this select 0;
//_id     = _this select 2;
//me removeAction _id;


find_plans_task setTaskState "Succeeded";


//(vehicle player) removeAction intel_process_ActionId;

titleText ["<t color='#ff2300' size='12'>intel</t><br/>acquired<br/>you have the code", "PLAIN", -1, true, true];

//player removeAction testActionId;

player createDiaryRecord ["Diary", ["Intel", "You have the plans for the scientist."]];


player setVariable ["hasCode", true];

deliver_plans_to_station = player createSimpleTask ["STATION"];
deliver_plans_to_station setSimpleTaskDescription ["Bring the process papers back to the station","Station",""];
deliver_plans_to_station setSimpleTaskDestination ((getMarkerPos "police_station"));
deliver_plans_to_station setTaskState "Assigned";
player setCurrentTask deliver_plans_to_station;


