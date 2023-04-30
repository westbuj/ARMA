_Dist = random [1,1,0];
_dir = random 360;
_newPos = (_this select 0) getPos [_Dist,_dir];
_dogGrp = createGroup [west, true];
_unit = (_dogGrp) createUnit ["Alsatian_Black_F", _newPos, [], 2, "NONE"];
_unit setVariable ["HOME", _newPos];


[_unit] spawn {

while{alive (_this select 0)}do{

	_action = random 10;
	if (_action < 3) then {
		//move
		_Dist = random [60,60,0];
		_dir = random 360;
		_newPos = (_this select 0) getPos [_Dist,_dir];
		_wp =(group (_this select 0)) addWaypoint [_newPos, 20];
		_wp setWaypointType "MOVE";
		(group (_this select 0)) setCurrentWaypoint _wp;
		}
	else{
		_wp =(group (_this select 0)) addWaypoint [((_this select 0) getVariable "HOME"), 10];
		_wp setWaypointType "MOVE";
		(group (_this select 0)) setCurrentWaypoint _wp;
	};




	if(!alive (_this select 0)) then {
		hint "Your dog died!";
		sleep 15;
		deleteVehicle (_this select 0);
	};

	sleep 25;
};

};