// params = follower, followed , rank list of followed in case of death

[ (_this select 0) , (_this select 1) ] spawn 
{

// [(_this select 0)] joinSilent group (_this select 1);

hint "CALLED non server";

sleep 1;


if (!isServer) exitWith {};
	
	//hint "CALLED";
	//sleep 3;
	_playerObj = (_this select 1);
	_aiObj = (_this select 0);
	_listingOfFollowed = 	_aiObj getVariable ["possibleFollow" , [ _playerObj ] ];
	

	while { (alive _aiObj) && (_aiObj getVariable ["following" , false] )} do 
	{

	_playerObj = _aiObj getVariable ["followingObj" , objNull];





		if ( !(alive _playerObj) ) then
		 {

			{ if (alive _x) then
				{
				_playerObj = _x;
				//exitWith { hint "New Follower"};
				 }

			} forEach _listingOfFollowed;

		};

		if ( !(alive _playerObj) ) then {_aiObj setVariable ["following" , false] };











	


	_dist2Player = _aiObj distance _playerObj;

	//hint Format["Distance to player is %1", _dist2Player];
	//sleep 2;
	
	_playerVehicle = vehicle _playerObj;
	_aiVehicle = vehicle _aiObj;

	


	if (_playerVehicle != _playerObj && _aiVehicle != _aiObj && _playerVehicle != _aiVehicle) then 
	{ // we are in two different vehicles
		hint Format["we are in two different vehicles"];

		moveOut (_aiObj);
		_aiObj doMove (position _playerObj);
		sleep 1;
	};


	if (_playerVehicle == _playerObj && _aiVehicle != _aiObj ) then 
	{ //we are walking, ai is in vehicle
		hint "we are walking, ai is in vehicle";
		unassignVehicle _aiObj;
		moveOut (_aiObj); // can be deadly!
		_aiObj doMove (position _playerObj);
		sleep 1;
	};


	       
	if (_playerVehicle != _playerObj && _aiVehicle == _aiObj ) then 
	{ //we are vehicle, ai is in walking
		//unassignVehicle _aiObj;
		hint "we are vehicle, ai is in walking";
		//get in vehicle
		_aiObj doMove (position _playerObj);
		hint "order sent";
		_aiObj assignAsCargo _playerVehicle;
		[_aiObj] orderGetIn true;
		sleep 2;


	     
	
	};
	if (_playerVehicle == _playerObj && _aiVehicle == _aiObj ) then 
	{ //we are both walking
	hint "we are both walking";

		if (_dist2Player > 5)then{

			_aiObj enableAI "AUTOTARGET";
			_aiObj setBehaviour "AWARE";

			_distance = random [3,4,6];
			_heading = random [140,180,220];
			

			//_aiObj doMove (position _playerObj);
			_aiObj doMove (_playerObj getRelPos [_distance, _heading]);
			sleep 2;
		}else
		{
			_aiObj disableAI "AUTOTARGET";
			 _aiObj setBehaviour "SAFE";

			sleep 2;
		};

	     
	
	};

	if (_playerVehicle == _aiVehicle) then 
	{ //we are both in the same vehicle
		hint "we are both in the same vehicle";

		sleep 3;

	     
	
	};

	sleep 2;	

    };// end while


	hint "EXIT FOLLOW";
	sleep 5;

}; // end spawn
