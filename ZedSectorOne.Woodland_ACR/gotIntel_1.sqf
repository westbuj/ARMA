//me     = _this select 1;
//_ai     = _this select 0;
//_id     = _this select 2;
//me removeAction _id;

(vehicle player) removeAction testActionId;

titleText ["<t color='#ff2300' size='12'>intel</t><br/>acquired<br/>you have the formulation", "PLAIN", -1, true, true];

player removeAction testActionId;

player createDiaryRecord ["Diary", ["Intel", "You have the formula for Dr. Schnrub."]];


player setVariable ["hasFormula", true];

hint "Formula Acquired. \nSee diary.";

//hint testActionId;



