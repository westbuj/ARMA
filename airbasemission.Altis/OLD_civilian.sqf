//["Land_u_House_Small_01_V1_F",[10265.1,19159.5,0.213242],"Land_PowerPoleWooden_L_F",[10288,19151.5,0.00267029],"Land_BellTower_02_V1_F",[10297.2,19157.9,2.35268],"Land_Chapel_V1_F",[10305,19164.8,0.662567],"Land_u_Addon_02_V1_F",[10241.8,19164.5,0.195862],"Land_u_House_Big_02_V1_F",[10307.4,19147.6,0.125397],"Land_Kiosk_papers_F",[10294.1,19133.9,0.30336],"Land_i_Shop_01_V2_F",[10308.8,19138.8,-0.00802612],"Land_i_Stone_Shed_V1_F",[10328.2,19160.2,0.738403],"Land_d_House_Small_01_V1_F",[10326.7,19143.6,0.323502],"Land_u_Addon_02_V1_F",[10310.6,19131.6,0.766388],"Land_u_House_Small_02_V1_F",[10326.2,19132.7,0.761261],"Land_u_Addon_02_V1_F",[10255.2,19112.7,0.310135],"Land_PowerPoleWooden_L_F",[10303.8,19108.8,0.00967407],"Land_u_Addon_01_V1_F",[10270.3,19099.5,-0.341583],"Land_i_Garage_V2_F",[10291.3,19097,0.491531],"Land_u_Addon_01_V1_F",[10323.2,19105.7,0.0634766],"Land_i_House_Big_02_V1_F",[10269.1,19092,0.354507],"Land_u_Shop_01_V1_F",[10296.2,19091.5,0.592468],"Land_i_Stone_Shed_V2_F",[10354.1,19124.3,-0.228958],"Land_i_Addon_04_V1_F",[10268.4,19084.1,0.887001],"Land_i_House_Big_02_V1_F",[10303.2,19085.3,0.402206],"Land_LampDecor_F",[10283,19079,-0.276489]]

blds=nearestobjects [(_this select 0),["house"], 500];ary=[];


{
	
	_unitTypes = ["C_man_polo_2_F_euro","C_man_shorts_3_F_afro"];
	_group = createGroup [west, true];
	
	_Dist = random [3,3,1];
	_dir = random 360;
	_sPos = (getpos _x) getPos [_Dist,_dir];
	_unit = _group createUnit ["C_man_polo_2_F_euro", _sPos, [], 0, "NONE"];
	[_unit] spawn 
		{
			if (!isServer) exitWith {};
			_unit =  _this select 0;
			while {( alive _unit )} do {  
				sleep 15;
				if ((random 3) > 2) then{
					_Dist = random [20,20,10];
					_dir = random 360;
					_newPos = (getpos _unit) getPos [_Dist,_dir];
					if (!(isOnRoad _newPos)) then
					{
						_wp =(group _unit) addWaypoint [(getpos _unit) getPos [_Dist,_dir], 0];
						_wp setWaypointType "LOITER";
						(group _unit) setCurrentWaypoint _wp;
					}
				}


		 	};
			DEATH_UPDATE = format["Civilian Casualty - %1. -100 xp",(name _unit)];
			publicVariable "DEATH_UPDATE";
			publicVariableServer "DEATH_UPDATE";
		};

(units _group) joinSilent _group;


ary=ary+[typeof _x,getpos _x]


}foreach blds;

hint str ary;copyToClipboard str ary;