//millerActionID = this addAction ["Follow me", "actionFollowMe.sqf"]; 
//millerActionID = this addAction ["Dont follow me", "actionDontFollowMe.sqf"];


if (miller getVariable ["following",false]) then{

	miller setVariable ["followingObj",player,true];


}else
{

	miller setVariable ["followingObj",player,true];
	miller setVariable ["following",true,true];
	miller setVariable ["possibleFollow",allPlayers,true];

	miller_follow_thread = [miller, (allPlayers select 0)] execVM "AI_FOLLOWER_2.sqf";
};