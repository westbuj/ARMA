//_h = [TAXI_DRIVER, TAXI ,[(getMarkerPos "R1_S1"),(getMarkerPos "R1_S2"),(getMarkerPos "R1_S3")]] execVM "T1_TAXI_2.sqf";

if (!isServer) exitWith {};


[(_this select 0),(_this select 1), (_this select 2)] spawn 
{

	_taxi_driver = (_this select 0);

	_taxi_cab = (_this select 1);

	//_taxi_group = (group _taxi_driver);
	
	_destinations = (_this select 2);
	_destination_names = (_this select 3);

	//_taxi_group setBehaviour "STEALTH";

			_taxi_driver doMove (position _taxi_cab);
			_taxi_driver assignAsDriver _taxi_cab;
			[_taxi_driver] orderGetIn true;

	sleep 15;
	while {true} do
	{

for [{_i=0}, { _i < (count _destinations) }, {_i=_i+1}] do
{
   
			//hint "Bus is leaving....";
		
			//unassignVehicle _aiObj;
			//get in vehicle
			//_taxi_driver doMove (position _taxi_cab);
			//_taxi_driver assignAsDriver _taxi_cab;
			//m[_taxi_driver] orderGetIn true;
			
			_taxi_driver doMove (_destinations select _i);

			waitUntil { 	
					_taxi_driver doMove (_destinations select _i);
					//hint format ["cycle  = %1, dist = %2",[_i, (_taxi_driver distance (_destinations select _i))]];
					sleep 6;
					//also, if a player is within 50m and not in vehicle, then wait more
					(_taxi_driver distance (_destinations select _i) < 15); 
		
				};
			//hint "We are here";


			sleep 90;

			
			//unassignVehicle _taxi_driver;
			//moveOut (_taxi_driver);
			

		};

		hint "Taxi - Route Complete.";
//		sleep 240;
	};
};


