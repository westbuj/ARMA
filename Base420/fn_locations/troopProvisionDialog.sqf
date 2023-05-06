_handle = createDialog "MyFirstDialog";

func_SetDetail = {

	_index = lbCurSel 1500;
	_data = lbData [1500, _index];
	_picture = [_data,"editorPreview"] call JNN_fnc_getManClassDetails;
	ctrlSetText [1200, _picture];
	_displayName = [_data,"displayName"] call JNN_fnc_getManClassDetails;
	ctrlSetText [1600, _displayName];

	_faction = [_data,"faction"] call JNN_fnc_getManClassDetails;
	_factionName = [(configFile >> "CfgFactionClasses" >> _faction ),"displayName"] call BIS_fnc_returnConfigEntry;
	_factionFlag = [(configFile >> "CfgFactionClasses" >> _faction ),"flag"] call BIS_fnc_returnConfigEntry;
	ctrlSetText [1602, _factionName];
	ctrlSetText [1250, _factionFlag];	



	_role = [_data,"role"] call JNN_fnc_getManClassDetails;
	ctrlSetText [1601, _role];
	_weapons = [_data,"weapons"] call JNN_fnc_getManClassDetails;
	lbClear 1501;
	{
		_displayName = [(configFile >> "CfgWeapons" >> _x ),"displayName"] call BIS_fnc_returnConfigEntry;
		_index = lbAdd [1501,_displayName];
		 lbSetData [1501,_index,_x];

		_icon = [(configFile >> "CfgWeapons" >> _x ),"UIPicture"] call BIS_fnc_returnConfigEntry;

		 lbSetPicture [1501,_index,_icon];

	}forEach _weapons;

};


_display = findDisplay 9000;


//_lb = lbCurSel (_display displayCtrl 1500);
lbClear 1500;

_soldierClass = [] call JNN_fnc_getManClassesForSide;




{
	_displayName = [_x,"displayName"] call JNN_fnc_getManClassDetails;
	
	_faction = [_x,"faction"] call JNN_fnc_getManClassDetails;
	_factionName = [(configFile >> "CfgFactionClasses" >> _faction ),"displayName"] call BIS_fnc_returnConfigEntry;
	_factionFlag = [(configFile >> "CfgFactionClasses" >> _faction ),"icon"] call BIS_fnc_returnConfigEntry;

	_index = lbAdd [1500,_displayName];
	 lbSetData [1500,_index,_x];
	 lbSetPicture [1500,_index,_factionFlag];

}forEach _soldierClass;

lbSetCurSel [1500, 0];
0 = [] call func_SetDetail;

((findDisplay 9000) displayCtrl 9001) ctrlAddEventHandler ["ButtonClick",{

	_index = lbCurSel 1500;
	_data = lbData [1500, _index];

	_Dist = random [15,15,0];
	_dir = random 360;
	_newPos = player getPos [_Dist,_dir];

	_unit = (group player) createUnit [_data, _newPos, [], 0, "NONE"];
	[_unit] join (group player);
	


}];

((findDisplay 9000) displayCtrl 1500) ctrlAddEventHandler ["LBSelChanged",{
	
	0 = [] call func_SetDetail;
	
}]; 
 
