
private _handle = createDialog "ReportingManagerDialog";





lbClear 1560;

{
		//private _group_id = (_this select 0);
		//private _group_name = (subs select _group_id) select 1;
		//private _group = (subs select _group_id) select 2;

		private _id = (_x select 0);
		private _name = (_x select 1);
		private _group = (_x select 2);
		private _homePos = (_x select 3);
		private _unit = leader _group;

		private _index = lbAdd [1560,"Group: " +  _name +"  :  reported by: "+ (name _unit)];
		lbSetColor [1560, _index, [0, 0, 1, 1]];

		private _rankIcon = [(rank _unit), "texture"] call BIS_fnc_rankParams;		

		lbSetData [1560,_index,str _id];
		lbSetPicture [1560,_index,_rankIcon];

		

		{
			private _dmg=(1 - getDammage _x);
			private _name = " Unit: " + name _x +" at " + str _dmg;
			private _index = lbAdd [1560, _name ];
			lbSetColor [1560, _index, [0.5, 0.50, .5, 1]];
			if (_dmg > 0.8) then {lbSetColor [1560, _index, [0, 1, 0, 1]];};
			if (_dmg < 0.5) then {lbSetColor [1560, _index, [1, 0, 0, 1]];};
		
			
			private _rankIcon = [(rank _x), "texture"] call BIS_fnc_rankParams;		
			lbSetPicture [1560,_index,_rankIcon];
//			lbSetData [1560,_index,str  _forEachIndex];
			
			//hint str  netId _x;
		}forEach units _group;
		
private _vehicles = [_group, true] call BIS_fnc_groupVehicles;
		{
			private _dmg=(1 - getDammage _x);
			private _fuel = fuel _x;
			
			private _vName=getText (configFile >> "cfgVehicles" >> typeOf vehicle (_x) >> "displayname");
			private _name = " Vehicle: " + _vName +" Health: " + str _dmg + " Fuel: " + str _fuel +" Driver: "+ name _x ;

			private _index = lbAdd [1560, _name ];
			lbSetColor [1560, _index, [0.5, 0.50, .5, 1]];
			if (_dmg > 0.8) then {lbSetColor [1560, _index, [0, 1, 0, 1]];};
			if (_dmg < 0.5) then {lbSetColor [1560, _index, [1, 0, 0, 1]];};
		
			
			private _rankIcon = [(rank _x), "texture"] call BIS_fnc_rankParams;		
			lbSetPicture [1560,_index,_rankIcon];
//			lbSetData [1560,_index,str  _forEachIndex];
			
			//hint str  netId _x;
		}forEach _vehicles;
		

}forEach subs;





((findDisplay 9010) displayCtrl 1554) ctrlAddEventHandler ["LBSelChanged",{
	
	//0 = [] call func_SetGroupDetail;
	
}]; 


((findDisplay 9010) displayCtrl 1525) ctrlAddEventHandler ["MouseButtonDblClick",{

hint "double click";
	
}]; 
