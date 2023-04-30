func_ShowWaypoints = {
	_index = lbCurSel 1504;

	_data = lbData [1504, _index] ;//+"," + (ctrlText 1400);

	if (_data != "SEPARATOR") then{	
		//hint str _data;	
		lbClear 1503;
		private _id = parseNumber _data;
		private _group = (subs select _id) select 2;
		private _cWP = currentWaypoint _group;
		private _WPcount =(count (waypoints _group));

		for "_i" from 0 to (_WPcount -1) do 
			{
				private _WP = waypointPosition [_group, _i];
				private _WP_type = waypointType [_group, _i],
				private _index = lbAdd [1503, _WP_type +"  :  "+ (str _WP)];
				

			};

	
		
	};
};


_handle = createDialog "MacroManagerDialog";
_target_pos = (_this select 3) select 1;
_side = (_this select 3) select 0;
_factions = "true" configClasses (configFile >> "CfgGroups" >> _side);
_factions =  _factions apply{configName _x};

//hint str subs;
lbClear 1504;

{
		private _id = (_x select 0);
		private _name = (_x select 1);
		private _group = (_x select 2);
		private _homePos = (_x select 3);
		private _unit = leader _group;

		private _index = lbAdd [1504, _name +"  :  "+ (name _unit)];

		private _rankIcon = [(rank _unit), "texture"] call BIS_fnc_rankParams;		

		lbSetData [1504,_index,str _id];
		lbSetPicture [1504,_index,_rankIcon];
		
		

}forEach subs;

lbSetCurSel [1504, 0];
0 = [] call func_ShowWaypoints;



//wp types to the combo
lbClear 1505;
private _WPtypes = "true" configClasses (configFile >> "CfgWaypoints" >> "Default");

//_tGroups = _tGroups apply{configName _x};

	
	{ 
		private _dName = [_x ,"displayName"] call BIS_fnc_returnConfigEntry;
		private _dType = [_x, "type"] call BIS_fnc_returnConfigEntry;
		private _dIcon = [_x ,"icon"] call BIS_fnc_returnConfigEntry;
		
		private _index = lbAdd [1505, _dName];
		lbSetData [1505, _index, _dType];
		lbSetPicture [1505, _index, _dIcon];

	}forEach _WPtypes;

private _index = lbAdd [1505, "LAND"];
lbSetData [1505, _index, "LAND"];
//lbSetPicture [1505, _index, _dIcon];                      vehicle this land 'land';

lbSetCurSel [1505, 0];





((findDisplay 9001) displayCtrl 1504) ctrlAddEventHandler ["LBSelChanged",{
	
	0 = [] call func_ShowWaypoints;
	
}]; 



((findDisplay 9001) displayCtrl 1300) ctrlAddEventHandler ["Draw",{
	
	//(_this select 0) drawArrow [   player, player getRelPos [100, 0], [1,0,0,1]  ]; 
	{

		//get this subs index, does it mathc index of current selected group? if so, draw Waypoints as highlighted.
		private _id = _x select 0;
		
		private _curGrp = (_id == (lbCurSel 1504));

		private _group= _x select 2;
		//map drawIcon [texture, color, position, width, height, angle, text, shadow, textSize, font, align]
		//(_this select 0) drawEllipse [_group, 12, 12, 360, [1, 1, 1, 1], "#(rgb,8,8,3)color(1,0.6,0,1)"];

		//_grpIcon = _group getGroupIcon 0;
		(_this select 0) drawIcon ["\A3\ui_f\data\map\groupicons\selector_selectable_ca.paa", [0,0,1,1], position leader _group, 12, 12, 360, _x select 1,1,0.03,"TahomaB","right"];
		
		private _cWP = currentWaypoint _group;
		private _WPcount =(count (waypoints _group));

		//if the count of wp <> list box lenght, then refresh
		if (_WPcount != (lbSize 1503)) then {0 = [] call func_ShowWaypoints;};


		if (_WPcount > 0 ) then{   //&& _cWP < _WPcount
		
			private _cPos = waypointPosition [_group, 0];		
			for "_i" from 0 to (_WPcount -1) do 
			{
				private _waypoint = (waypoints _group) select _i;
				private _WP = waypointPosition [_group, _i];
			
				
				if (_curGrp) then{
					if (_i == _cWP) then {

						(_this select 0) drawArrow [   _cPos, _WP, [0,1,0,1]  ];
						(_this select 0) drawArrow [   position leader _group, _WP, [1,0,0,1]  ];
						
					}
					else{(_this select 0) drawArrow [   _cPos, _WP, [0,0,1,1]  ]; };

					//if this is the selected way point, show it
					(_this select 0) drawIcon ["\A3\ui_f\data\map\groupicons\waypoint.paa", [0,0,0,1], _WP, 24, 24, 360, waypointType [_group, _i],1,0.03,"TahomaB","right"];

					
				}else{
					(_this select 0) drawArrow [   _cPos, _WP, [0,0,0,1]  ]; 
					};

				//private _icon = [(configFile >> "CfgWaypoints" >> "Default" >> (className _waypoint)) ,"icon"] call BIS_fnc_returnConfigEntry;
				//hint (configName waypointType [_group, _i]);
				
				////drawIcon [texture, color, position, width, height, angle, text, shadow, textSize, font, align]
				//(_this select 0) drawIcon [_icon, [0,0,0,1], _WP, 10, 10, 360, "Hello",1,0.03,"TahomaB","right"];


				_cPos = _WP;

			};
		};



	}forEach subs;
	
}]; 

((findDisplay 9001) displayCtrl 1506) ctrlAddEventHandler ["ButtonClick",{  //delete waypoint
hint "del";
//move to server
	private _wpIndex = lbCurSel 1503;
	private _index = lbCurSel 1504;
	private _data = lbData [1504, _index];

	private _id = parseNumber _data;
	private _group = (subs select _id) select 2;
	HQ_DEL_WAYPOINT = [_index,_wpIndex];
	PublicVariableServer "HQ_DEL_WAYPOINT";


//	deleteWaypoint [_group, _wpIndex];
	0 = [] call func_ShowWaypoints;


}];

((findDisplay 9001) displayCtrl 1507) ctrlAddEventHandler ["ButtonClick",{

	hint "clear";
	private _index = lbCurSel 1504;
	private _data = lbData [1504, _index];

	private _id = parseNumber _data;
	private _group = (subs select _id) select 2;

	HQ_CLR_WAYPOINT = [_id];
	PublicVariableServer "HQ_CLR_WAYPOINT";
	
	0 = [] call func_ShowWaypoints;



}];

((findDisplay 9001) displayCtrl 1300) ctrlAddEventHandler ["mouseButtonDown",{

	params ["_displayorcontrol", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

	if (_shift) then {
		private _ctrl = _this select 0;
		private _x = _this select 2;
		private _y = _this select 3;

		private _index = lbCurSel 1504;
		private _data = lbData [1504, _index];

		private _id = parseNumber _data;
		private _group = (subs select _id) select 2;

		private _pos = _ctrl ctrlMapScreenToWorld [_x, _y];
		_index = lbCurSel 1505;
		private _wp_type = lbData [1505, _index] ;//+"," + (ctrlText 1400);
		HQ_ADD_WAYPOINT = [_id,_wp_type,_pos];
		PublicVariableServer "HQ_ADD_WAYPOINT";

//		_wp =_group addWaypoint [_pos, 10];
//		_wp setWaypointType _wp_type;

		0 = [] call func_ShowWaypoints;
	};
	


}];

((findDisplay 9001) displayCtrl 1503) ctrlAddEventHandler ["MouseButtonDblClick",{

	private _cWP = lbCurSel 1503;
	private _curGrp = (subs select (lbCurSel 1504)) select 2;

	HQ_SET_CURRENT_WP = [(lbCurSel 1504),_cWP];
	PublicVariableServer "HQ_SET_CURRENT_WP";
	//_curGrp setCurrentWaypoint [_curGrp, _cWP];
	

}];


/*
((findDisplay 9001) displayCtrl 1504) ctrlAddEventHandler ["MouseButtonDblClick",{


0 = [(lbCurSel 1504)] execVM "fn_locations\microManagerDialog.sqf";
	
closedialog 0;	

}];
*/

