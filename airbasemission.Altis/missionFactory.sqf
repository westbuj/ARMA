
sleep 120;

numGroups = 1 + (random 5);
enemyGroups = [];

for "_i" from 1 to numGroups do {
	
numUnitsInGroup = 1 + (random 10);
	_tUnits= [];
	for "_i" from 1 to numUnitsInGroup do {

		_tUnits pushBack (enemyUnits select (random ((count leaderUnits) -1)) );

	};

enemyGroups pushBack _tUnits;
};



_enemyPos = getPos ([allPlayers, 4000,8000] call compile preprocessFileLineNumbers "getBuilding.sqf");

[
leaderUnits select (random ((count leaderUnits) -1)),
"%2",
"%1",
_enemyPos,
"Eliminate %1",
enemyGroups,
[ 
 [getPos ([[_enemyPos], 800,1200] call compile preprocessFileLineNumbers "getRoads.sqf"),["B_Heli_Transport_01_F"],["B_soldier_SL_F","B_ghillie_ard_F","B_medic_F","B_soldier_AR_F","B_soldier_M_F","B_soldier_LAT_F","B_soldier_TL_F","B_soldier_A_F","B_soldier_AR_F","B_HeavyGunner_F","B_soldier_M_F","B_soldier_LAT_F","B_Sharpshooter_F","B_soldier_AAR_F","B_medic_F"],["Box_NATO_Ammo_F"]] 

]
] execVM "launchMission.sqf";