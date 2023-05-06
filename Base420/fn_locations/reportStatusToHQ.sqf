//params["_pos_object","_pipTarget","_lookAt","_fov"];

hint "report status";
sleep 1;

{
		private _id = (_x select 0);
		private _name = (_x select 1);
		private _group = (_x select 2);
		private _homePos = (_x select 3);
		private _unit = leader _group;
		hint _name;
		sleep .5;
		{
			
			private _name = name _x +" at " + str getDammage _x;
		hint _name;
		sleep .5;
//			private _rankIcon = [(rank _x), "texture"] call BIS_fnc_rankParams;		
//			lbSetPicture [1525,_index,_rankIcon];
//			lbSetData [1525,_index,str  _forEachIndex];
			//hint str  netId _x;
		}forEach units _group;
		
		

}forEach subs;