func_SetGroupDetail = {
	_index = lbCurSel 1503;

	_data = lbData [1503, _index] ;//+"," + (ctrlText 1400);

	if (_data != "SEPARATOR") then{
	
		//hint str _data;	
		lbClear 1502;
		_splitData =  _data splitString ",";
		//hint str _splitData;
		_side =  (_splitData select 0);
		_faction = (_splitData select 1);
	
		_subGroup = (_splitData select 2);
		_comGroup =  (_splitData select 3);
		_grpName = (_splitData select 4);
		private _gName = [(configFile >> "CfgGroups" >> _side >> _faction >> _subGroup >> _comGroup ),"name"] call BIS_fnc_returnConfigEntry;

		
		_group_icon=[(configFile >> "CfgGroups" >> _side >> _faction >> _subGroup >> _comGroup ),"icon"] call BIS_fnc_returnConfigEntry;
		_faction_icon = [ _faction, "flag"] call JNN_fnc_getFactionDetail;        //[(configFile >> "CfgFactionClasses" >> _faction ),"flag"] call BIS_fnc_returnConfigEntry;

	
		ctrlSetText [1201,_faction_icon];
		ctrlSetText [1203,_gName];	
		ctrlSetText [1251,_group_icon];

	
		//get the units
		_units ="true" configClasses (configFile >> "CfgGroups" >> _side >> _faction >> _subGroup >> _comGroup);
		_units =  _units apply{configName _x};
	
	
		{ //get the unit
		   //  unit rank
			private _unit = [(configFile >> "CfgGroups" >> _side >> _faction >> _subGroup >> _comGroup >> _x ),"vehicle"] call BIS_fnc_returnConfigEntry;
			private _rank = [(configFile >> "CfgGroups" >> _side >> _faction >> _subGroup >> _comGroup >> _x ),"rank"] call BIS_fnc_returnConfigEntry;
		
			private _rankIcon = [_rank, "texture"] call BIS_fnc_rankParams;		
			_d_name = [_unit,"displayName"] call JNN_fnc_getManClassDetails;
			_index = lbAdd [1502,_d_name];
			lbSetPicture [1502,_index,_rankIcon];
		
		}forEach _units;


		
	};
};


_handle = createDialog "groupSpawnDialog";
_target_pos = (_this select 3) select 1;
_side = (_this select 3) select 0;
_factions = "true" configClasses (configFile >> "CfgGroups" >> _side);
_factions =  _factions apply{configName _x};



//add the factions to 1503
lbClear 1503;

{
	//index = lbAdd [1503, _x];
	//now get the sub groups
	private _subGroups =  "true" configClasses (configFile >> "CfgGroups" >> _side >> _x);
	_subGroups =  _subGroups apply{configName _x};
	private _faction = _x;
	private _factionName = [ _faction, "displayName"] call JNN_fnc_getFactionDetail; 
	private _factionFlag = [ _faction, "flag"] call JNN_fnc_getFactionDetail; 

	{

	 	_index = lbAdd [1503, _factionName + ": " + _x];
		lbSetColor [1503, _index, [0, 0, 1, 1]];
		lbSetPicture [1503,_index,_factionFlag];
		lbSetData [1503,_index,"SEPARATOR"];
		
		//hint str _faction;	
		_combatGroup = "true" configClasses (configFile >> "CfgGroups" >> _side >> _faction >> _x);
		_combatGroup =  _combatGroup apply{configName _x};
		_subG = _x;

			{ //str splitString delimiters

				_gName = [(configFile >> "CfgGroups" >> _side >> _faction >> _subG >> _x),"name"] call BIS_fnc_returnConfigEntry;
				_fac = [(configFile >> "CfgGroups" >> _side >> _faction >> _subG >> _x),"faction"] call BIS_fnc_returnConfigEntry;
				_icon = [(configFile >> "CfgFactionClasses" >> _fac ),"icon"] call BIS_fnc_returnConfigEntry;
				_index = lbAdd [1503, _gName];
				// lnbAddRow [1503,["1","1"]];//lbAdd [1503, _gName];
				
				private _data = _side+","+_faction+","+_subG+","+_x ;
				
				  lbSetData [1503,_index,_data];
				//hint lbData [1503,_index];
				
				 lbSetPicture [1503,_index,_icon];
				

			}forEach _combatGroup;

	}forEach _subGroups;

		
}forEach _factions;




((findDisplay 9001) displayCtrl 1503) ctrlAddEventHandler ["LBSelChanged",{
	
	0 = [] call func_SetGroupDetail;
	
}]; 


((findDisplay 9001) displayCtrl 1504) ctrlAddEventHandler ["ButtonClick",{

	if ((ctrlText 1400) == "") exitWith {hint "Enter a Group Name";};
	_index = lbCurSel 1503;
	
	_data = lbData [1503, _index] ;//+"," + (ctrlText 1400);
//hint _data;

	if (_data != "SEPARATOR") then{
			HQ_SPAWN_GROUP = _data +"," + (ctrlText 1400);
			publicVariableServer "HQ_SPAWN_GROUP";
			ctrlSetText [1400,""];
			hint "Requisition Sent";
	};
	
}]; 
