//millerActionID = this addAction ["Follow me", "actionFollowMe.sqf"]; 
//millerActionID = this addAction ["Dont follow me", "actionDontFollowMe.sqf"];



if ((miller getVariable ["followingObj",player]) isEqualTo player) then
	{

	miller setVariable ["following",false,true];
	};