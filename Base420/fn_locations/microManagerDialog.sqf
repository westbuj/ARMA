func_SetGroupDetail = {
	_index = lbCurSel 1554;

	_data = lbData [1554, _index] ;//+"," + (ctrlText 1400);

	if (_data != "SEPARATOR") then{
	
		//hint str _data;	
		lbClear 1525;
		private _id = parseNumber _data;
		private _group = (subs select _id) select 2;

		{		
			private _name = name _x;
			private _index = lbAdd [1525, _name ];
			private _rankIcon = [(rank _x), "texture"] call BIS_fnc_rankParams;		
			lbSetPicture [1525,_index,_rankIcon];
			lbSetData [1525,_index,str  _forEachIndex];
			//hint str  netId _x;
		}forEach units _group;

	
		
	};
};

hint str _this;
private _handle = createDialog "MicroManagerDialog";

private _group_id = (_this select 0);
private _group_name = (subs select _group_id) select 1;
private _group = (subs select _group_id) select 2;



lbClear 1554;

{
		private _id = (_x select 0);
		private _name = (_x select 1);
		private _group = (_x select 2);
		private _homePos = (_x select 3);
		private _unit = leader _group;

		private _index = lbAdd [1554, _name +"  :  "+ (name _unit)];

		private _rankIcon = [(rank _unit), "texture"] call BIS_fnc_rankParams;		

		lbSetData [1554,_index,str _id];
		lbSetPicture [1554,_index,_rankIcon];
		
		

}forEach subs;

lbClear 1555;

{
		private _name = (_x select 0);
		private _texture = (_x select 1);
		private _cam = (_x select 2);
		
		//private _unit = leader _group;

		private _index = lbAdd [1555, _name ];

		lbSetData [1554,_index,str _forEachIndex];
//		lbSetPicture [1554,_index,_rankIcon];
		
		

}forEach CAMERAS;

lbClear 1525;

{

	
		
	private _name = name _x;
	private _index = lbAdd [1525, _name ];
	private _rankIcon = [(rank _x), "texture"] call BIS_fnc_rankParams;		
	
	lbSetPicture [1525,_index,_rankIcon];
	lbSetData [1525,_index,str _group_id];
	

}forEach units _group;


((findDisplay 9010) displayCtrl 1554) ctrlAddEventHandler ["LBSelChanged",{
	
	0 = [] call func_SetGroupDetail;
	
}]; 


((findDisplay 9010) displayCtrl 1525) ctrlAddEventHandler ["MouseButtonDblClick",{

hint "double click";

	private _screen_id = lbCurSel 1555;
	private _groupID = lbCurSel 1554;
//get id
	private _selectedUnit = lbCurSel 1525;
	private _data = lbData [1525, _selectedUnit];
	private _unitID = parseNumber _data;
	//private _groupID = (subs select _id) select 2;

	//private _unit = objectFromNetId _data;//(units _group) select _selectedUnit;


// try this getPlayerUID unit

HQ_SCREEN_CHANGE = [_screen_id,_groupID,_unitID];
PublicVariableServer "HQ_SCREEN_CHANGE";



/* Codes below are to remote control a player /////////////////////////////////////////////////////////////
	hint str _group;
	//get id
	private _selectedUnit = lbCurSel 1525;
	private _data = lbData [1525, _selectedUnit];
	private _id = parseNumber _data;
	private _group = (subs select _id) select 2;

	private _unit = (units _group) select _selectedUnit;
	
	player remoteControl _unit;
	_unit switchCamera "External";
	closedialog 0;

[_unit, _id] spawn
{
	
	while{!isNull ([_this select 0]call JNN_fnc_remoteControlledBy) && (alive (_this select 0))}do{
		systemChat str (_this select 0) call JNN_fnc_remoteControlledBy;
		sleep 5;
	};

	//release control back to server for unit and group.
	SERVER_OWN_GROUP = (_this select 1);
	PublicVariableServer "SERVER_OWN_GROUP";

	objNull remoteControl (_this select 0);

	systemChat "released";
};
//end remote control ////////////////////////////////////////////////////////////
*/ 

	
}]; 
