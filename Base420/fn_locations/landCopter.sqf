
private _copter = vehicle (leader (_this select 0));

_copter land "LAND";

	while {(getPosATL (_copter) select 2) > 0.2} do
	{
		sleep 5;
	};

sleep 60;
