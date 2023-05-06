_screen = (_this select 0);
_screen addAction ["420 Command","fn_locations\macroManagerDialog.sqf",["West", "BLU_F"]];

if (isNil "CAMERAS") then { 	CAMERAS = [];};
if (isNil "SCREENS") then { 	SCREENS = [];};
if (isNil "HQ_SCREEN_CHANGE") then { 
	HQ_SCREEN_CHANGE = [];
	if (isServer)then {"HQ_SCREEN_CHANGE" addPublicVariableEventHandler {
		hint "HQ_SCREEN_CHANGE";
		private _id =  (HQ_SCREEN_CHANGE select 0);
		private _groupID =  (HQ_SCREEN_CHANGE select 1);
		private _unitID =  (HQ_SCREEN_CHANGE select 2);
		//create camera everywhere including server
		[[_id, _groupID, _unitID], "fn_locations\attachCamToUnit.sqf"] remoteExec ["execVM", 0]; 

	};
};
			
};

if (isNil "HQ_ADD_CAMERA") then { 
	HQ_ADD_CAMERA = [];
	if (isServer)then {"HQ_ADD_CAMERA" addPublicVariableEventHandler {
		hint "HQ_ADD_CAMERA";
		private _name =  (HQ_ADD_CAMERA select 0);
		private _texture =  (HQ_ADD_CAMERA select 1);
		//create camera everywhere including server
		[[_name, _texture], "fn_locations\serverAddCamTo420.sqf"] remoteExec ["execVM", 0]; 
		
		
	};
};
			
};



if (isNil "subs") then { subs = []; };	// subs = [id, name, group, pos,icon]
if (isNil "HQ_SPAWN_GROUP") then { 

	HQ_SPAWN_GROUP = "";

if (isServer)then {
	"HQ_SPAWN_GROUP" addPublicVariableEventHandler {
		private _data = HQ_SPAWN_GROUP;
		//hint str _data;
		private _splitData =  _data splitString ",";
	
		private _side =  (_splitData select 0);
		private _sideInt = west;
		if (_side  == "East") then {_sideInt = east;};

		private _faction = (_splitData select 1);
		private _subGroup = (_splitData select 2);
		private _comGroup =  (_splitData select 3);
		private _grpName =  (_splitData select 4);
		private _pos =  position SPAWN_GROUP;//(_splitData select 5);
 

		private _grp=[_pos, _sideInt , (configFile >> "CfgGroups" >> _side >> _faction >> _subGroup >> _comGroup)] call BIS_fnc_spawnGroup;
		_grp setGroupIdGlobal [_grpName];

		private _id = count subs;
		subs pushBack [_id,_grpName,_grp,getPos player];
		PublicVariable "subs";
		PublicVariableServer "subs";  // for local hosting
		};
	};
};

{

		if(["PUBG_",groupId _x ] call BIS_fnc_inString) then {
			private _group_id = [groupId _x, 5] call BIS_fnc_trimString;
			private _id = count subs;	
			_x setGroupIdGlobal [_group_id];	
			subs pushBack [_id,_group_id,_x,getPos leader _x];
		};
		

}forEach allGroups;

if (isServer)then {
		[20] spawn {sleep (_this select 0);
		PublicVariable "subs";
		PublicVariableServer "subs";  // for local hosting
	};
};


if (isNil "HQ_ADD_WAYPOINT") then { 

	HQ_ADD_WAYPOINT = [];

	if (isServer)then {
		"HQ_ADD_WAYPOINT" addPublicVariableEventHandler {
			
			private _grpID =  (HQ_ADD_WAYPOINT select 0);
			private _wpType =  (HQ_ADD_WAYPOINT select 1);
			private _wpPos =  (HQ_ADD_WAYPOINT select 2);

			//subs pushBack [_id,_grpName,_grp,getPos player];

			if (_wpType == "LAND") then {

				private _group = (subs select _grpID) select 2;
				_wp =_group addWaypoint [_wpPos, 10];
				_wp setWaypointType "SCRIPTED";
				_wp setWaypointScript "fn_locations\landCopter.sqf";
				


			}else{
		
				private _group = (subs select _grpID) select 2;
				_wp =_group addWaypoint [_wpPos, 10];
				_wp setWaypointType _wpType;


			};

		
		};

	};

};


if (isNil "HQ_SET_CURRENT_WP") then { 

	HQ_SET_CURRENT_WP = [];

	if (isServer)then {
		"HQ_SET_CURRENT_WP" addPublicVariableEventHandler {
			
			private _grpID =  (HQ_SET_CURRENT_WP select 0);
			private _group =  (subs select _grpID) select 2;
			private _wpIndex =  (HQ_SET_CURRENT_WP select 1);
		
			_group setCurrentWaypoint [_group, _wpIndex];


			

		
		};

	};

};
		




if (isNil "HQ_CLR_WAYPOINT") then { 

	HQ_CLR_WAYPOINT = [];

	if (isServer)then {
		"HQ_CLR_WAYPOINT" addPublicVariableEventHandler {
			
			private _grpID =  (HQ_CLR_WAYPOINT select 0);
			private _group =  (subs select _grpID) select 2;
					
			for "_i" from count waypoints _group - 1 to 0 step -1 do
			{
				deleteWaypoint [_group, _i];
			};


		};

	};

};

//HQ_DEL_WAYPOINT = [_index,_wpIndex];



if (isNil "HQ_DEL_WAYPOINT") then { 

	HQ_DEL_WAYPOINT = [];

	if (isServer)then {
		"HQ_DEL_WAYPOINT" addPublicVariableEventHandler {
			
			private _grpID =  (HQ_DEL_WAYPOINT select 0);
			private _group =  (subs select _grpID) select 2;

			deleteWaypoint [_group, (HQ_DEL_WAYPOINT select 1)];
			

		};

	};

};



if (isNil "SERVER_OWN_GROUP") then { 

	SERVER_OWN_GROUP = [];

	if (isServer)then {
		"SERVER_OWN_GROUP" addPublicVariableEventHandler {
			
			private _group =  (subs select SERVER_OWN_GROUP) select 2;
			
			_group setgroupowner 2;			

		};

	};

};