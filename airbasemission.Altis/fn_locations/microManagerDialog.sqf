func_SetGroupDetail = {
	_index = lbCurSel 1503;

	_data = lbData [1503, _index] ;//+"," + (ctrlText 1400);

	if (_data != "SEPARATOR") then{
	
		//hint str _data;	
		lbClear 1502;
	
		
	};
};

hint str _this;
private _handle = createDialog "MicroManagerDialog";


private _group_id = (_this select 0);
private _group_name = (subs select _group_id) select 1;
private _group = (subs select _group_id) select 2;

lbClear 1525;

{

	
		
	private _name = name _x;
	private _index = lbAdd [1525, _name ];
	private _rankIcon = [(rank _x), "texture"] call BIS_fnc_rankParams;		
	
	lbSetPicture [1525,_index,_rankIcon];
	lbSetData [1525,_index,str _group_id];
	

}forEach units _group;




((findDisplay 9010) displayCtrl 1525) ctrlAddEventHandler ["MouseButtonDblClick",{
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


	
}]; 
