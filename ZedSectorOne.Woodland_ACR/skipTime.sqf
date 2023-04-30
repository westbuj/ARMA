
// params
// stop time, number of steps, step delay


_h = [(_this select 0),(_this select 1),(_this select 2)] spawn 
{
	
//targetTime = _this select 0;
//numSteps = _this select 1;
//stepDelay = _this select 2;


//hint Format["Daytime = %1 , stoptime = %2, num steps = %3, delay = %4",dayTime ,(_this select 0),(_this select 1),(_this select 2) ];
//sleep 12;

hoursToSkip =  (((_this select 0) - dayTime + 24 ) % 24);
hint Format["Daytime = %1 \n stoptime = %2, num steps = %3, delay = %4 \nskip = %5",dayTime ,(_this select 0),(_this select 1),(_this select 2),hoursToSkip ];
sleep 5;

for "_j" from 0 to ((_this select 1) - 1) step 1 do 
	{
		skipTime (hoursToSkip  / (_this select 1));
		sleep (_this select 2);

	} ;

};