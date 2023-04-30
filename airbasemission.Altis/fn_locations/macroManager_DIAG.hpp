
class MacroManagerDialog			//Dialog class name, gets called by: handle = CreateDialog "name"
{
	idd = 9001;						//Display control number
	movingenable = false;			//True/False to enable moving the dialog with mouse
	enableSimulation = 1;		//True/False to enable world simulation in the background

	
	class controls {

		class RscHQmap : RscMapControl  //////////////////////////////////////The map
		{
			idc = 1300;
			x = .3;// 1 * GUI_GRID_W + GUI_GRID_X;
			y = 0;// *GUI_GRID_H + GUI_GRID_Y;
			w = .7;// *GUI_GRID_W;
			h = 1;// *GUI_GRID_H;
			//text = "#(argb,8,8,3)color(1,1,1,1)";
			maxSatelliteAlpha = 0;
			alphaFadeStartScale = 0.35;
			alphaFadeEndScale = 0.4;
			colorBackground[] = { 0.969,0.957,0.949,1 };
			widthRailWay = 4;
			colorOutside[] = { 0,0,0,1 };
			colorText[] = { 0,0,0,1 };
			colorSea[] = { 0.467,0.631,0.851,0.5 };
			colorForest[] = { 0.624,0.78,0.388,0.5 };
			colorRocks[] = { 0,0,0,0.3 };
			colorCountlines[] = { 0.572,0.354,0.188,0.25 };
			colorMainCountlines[] = { 0.572,0.354,0.188,0.5 };
			colorCountlinesWater[] = { 0.491,0.577,0.702,0.3 };
			colorMainCountlinesWater[] = { 0.491,0.577,0.702,0.6 };
			colorForestBorder[] = { 0,0,0,0 };
			colorRocksBorder[] = { 0,0,0,0 };
			colorPowerLines[] = { 0.1,0.1,0.1,1 };
			colorRailWay[] = { 0.8,0.2,0,1 };
			colorNames[] = { 0.1,0.1,0.1,0.9 };
			colorInactive[] = { 1,1,1,0.5 };
			colorLevels[] = { 0.286,0.177,0.094,0.5 };
			colorTracks[] = { 0.84,0.76,0.65,0.15 };
			colorRoads[] = { 0.7,0.7,0.7,1 };
			colorMainRoads[] = { 0.9,0.5,0.3,1 };
			colorTracksFill[] = { 0.84,0.76,0.65,1 };
			colorRoadsFill[] = { 1,1,1,1 };
			colorMainRoadsFill[] = { 1,0.6,0.4,1 };
			colorGrid[] = { 0.1,0.1,0.1,0.6 };
			colorGridMap[] = { 0.1,0.1,0.1,0.6 };
			
		};

		class RscListbox_groups : RscListbox  //////////////////////////////////////List groups
		{
			idc = 1504;
			x = 0;// 1 * GUI_GRID_W + GUI_GRID_X;
			y = .081;// *GUI_GRID_H + GUI_GRID_Y;
			w = .3;// *GUI_GRID_W;
			h = .25;// *GUI_GRID_H;
					//onLBSelChanged = {hint str (_this select 0)};
			class items
			{
				class _side
				{
					text = "Groups";
					value = 1; // lnbValue
					data = "Weapon_arifle_MSBS65_F"; // lnbData
				};

			};


		};

		class RscListbox_WP_Types : RscCombo  //////////////////////////////////////List groups
		{
			idc = 1505;
			x = 0;// 1 * GUI_GRID_W + GUI_GRID_X;
			y = .7;// *GUI_GRID_H + GUI_GRID_Y;
			w = .3;// *GUI_GRID_W;
			h = .1;// *GUI_GRID_H;
					//onLBSelChanged = {hint str (_this select 0)};
			font = GUI_FONT_NORMAL;		//font style
			sizeEx = 0.04;				//font size
			class items
			{
				class _side
				{
					text = "Combo";
					value = 1; // lnbValue
					data = "Weapon_arifle_MSBS65_F"; // lnbData
				};

			};


		};


		class ClearWaypoints : RscButton
		{
			access = 0;				//same as above
			idc = 1507;				//ID number
			type = CT_BUTTON;		//type of the control
			text = "CLR";		//text field
			colorText[] = { 1,1,1,1 };		//color of the text (currently white)
			colorDisabled[] = { 0.4,0.4,0.4,0 };		//color when disabled (currently gray)
			colorBackground[] = { 0,0,1,1 };			//background color (currently blue)
			colorBackgroundDisabled[] = { 0.9,0.9.0.9,0 };		//background color when disabled (currently light gray)
			colorBackgroundActive[] = { 1,0,0,1 };		//background color when active (selected, or hovered over) (currently red)
			colorFocused[] = { 0,1,0,1 };			//bakcground color when focused (selected) (currently green)
			colorShadow[] = { 0.023529,0,0.0313725,0 };		//shadow color (currently dark gray)
			colorBorder[] = { 0.023529,0,0.0313725,0 };		//border color (currently dark gray)
			soundEnter[] = { "",0.09,1 };			//sound upon hovering over the control (sound, volume, pitch)
			soundPush[] = { "",0,0 };			//sound upon pushing the button (sound, volume, pitch)
			soundClick[] = { "",0.07,1 };			//sound upon clicking the button (sound, volume, pitch)
			soundEscape[] = { "",0.09,1 };		//sound upon releasing the pushed button (sound, volume, pitch)
			x = 0.12;			//position on X axis (0-1)
			y = 0.334;			//position on Y axis (0-1)
			w = 0.08;			//width (0-1)
			h = 0.045;			//height (0-1)
			style = 2;		//style of the control
			shadow = 2;			//above
			font = GUI_FONT_BOLD;	//font type
			sizeEx = 0.05;			//font size
			offsetX = 0;		//offset when not pressed on X axis
			offsetY = 0;		//offset when not pressed on Y axis
			offsetPressedX = 0.003;			//offset when pressed on X axis
			offsetPressedY = 0.003;			//offset when pressed on Y axis
			borderSize = 0;			//border size (duh)
			action = "";

		};		//end: RscButton class
		class DeleteWaypoint : RscButton
		{
			access = 0;				//same as above
			idc = 1506;				//ID number
			type = CT_BUTTON;		//type of the control
			text = "DEL";		//text field
			colorText[] = { 1,1,1,1 };		//color of the text (currently white)
			colorDisabled[] = { 0.4,0.4,0.4,0 };		//color when disabled (currently gray)
			colorBackground[] = { 0,0,1,1 };			//background color (currently blue)
			colorBackgroundDisabled[] = { 0.9,0.9.0.9,0 };		//background color when disabled (currently light gray)
			colorBackgroundActive[] = { 1,0,0,1 };		//background color when active (selected, or hovered over) (currently red)
			colorFocused[] = { 0,1,0,1 };			//bakcground color when focused (selected) (currently green)
			colorShadow[] = { 0.023529,0,0.0313725,0 };		//shadow color (currently dark gray)
			colorBorder[] = { 0.023529,0,0.0313725,0 };		//border color (currently dark gray)
			soundEnter[] = { "",0.09,1 };			//sound upon hovering over the control (sound, volume, pitch)
			soundPush[] = { "",0,0 };			//sound upon pushing the button (sound, volume, pitch)
			soundClick[] = { "",0.07,1 };			//sound upon clicking the button (sound, volume, pitch)
			soundEscape[] = { "",0.09,1 };		//sound upon releasing the pushed button (sound, volume, pitch)
			x = 0.21;			//position on X axis (0-1)
			y = 0.334;			//position on Y axis (0-1)
			w = 0.08;			//width (0-1)
			h = 0.045;			//height (0-1)
			style = 2;		//style of the control
			shadow = 2;			//above
			font = GUI_FONT_BOLD;	//font type
			sizeEx = 0.05;			//font size
			offsetX = 0;		//offset when not pressed on X axis
			offsetY = 0;		//offset when not pressed on Y axis
			offsetPressedX = 0.003;			//offset when pressed on X axis
			offsetPressedY = 0.003;			//offset when pressed on Y axis
			borderSize = 0;			//border size (duh)
			action = "";

		};		//end: RscButton class

		class RscListbox_waypoints : RscListbox  //////////////////////////////////////List groups
		{
			idc = 1503;
			x = 0;// 1 * GUI_GRID_W + GUI_GRID_X;
			y = .381;// *GUI_GRID_H + GUI_GRID_Y;
			w = .3;// *GUI_GRID_W;
			h = .3;// *GUI_GRID_H;
				   //onLBSelChanged = {hint str (_this select 0)};
			class items
			{
				class _side
				{
					text = "Waypoints";
					value = 1; // lnbValue
					data = "Weapon_arifle_MSBS65_F"; // lnbData
				};
				
			}; 


		};


		class RscText_Header : RscText
		{
			access = 0;			//0 - Read and Write, 1 - Read and create, 2 - Read, 3 - Read verified
			type = CT_STATIC;	//type of the control
			idc = 0;			//control ID number
			style = ST_CENTER;	//style of the control
			w = 0.3;			//width (0-1)
			h = 0.05;			//height (0-1)
			x = 0;			//position on X axis (0-1)
			y = 0;			//position on Y axis (0-1)
			font = GUI_FONT_BOLD;		//font style
			sizeEx = 0.04;				//font size
			colorBackground[] = { 0,0,0,0 };		//background color, RGBA format (currently transparent)
			colorText[] = { 1,.6,.6,1 };			//background color, RGBA format (currently white)
			text = "420 COMMAND";				//text field
			fixedWidth = 0;				//0,1
			shadow = 0;				//0 - none, 1 - color affected by background, 2 - black
		};	//end: RscText class
		class RscText_UNIT_type : RscText
		{
			access = 0;			//0 - Read and Write, 1 - Read and create, 2 - Read, 3 - Read verified
			type = CT_STATIC;	//type of the control
			idc = 0;			//control ID number
			style = ST_LEFT;	//style of the control
			w = 0.3;			//width (0-1)
			h = 0.052;			//height (0-1)
			x = 0;			//position on X axis (0-1)
			y = 0.33;			//position on Y axis (0-1)
			font = GUI_FONT_NORMAL;		//font style
			sizeEx = 0.04;				//font size
			colorBackground[] = { 0,0,0,0 };		//background color, RGBA format (currently transparent)
			colorText[] = { 1,1,1,1 };			//background color, RGBA format (currently white)
			text = "Waypoints";				//text field
			fixedWidth = 0;				//0,1
			shadow = 0;				//0 - none, 1 - color affected by background, 2 - black
		};	//end: RscText class
		

		class RscText_GroupName : RscText
		{
			access = 0;			//0 - Read and Write, 1 - Read and create, 2 - Read, 3 - Read verified
			type = CT_STATIC;	//type of the control
			idc = 1203;			//control ID number
			style = ST_LEFT;	//style of the control
			w = 0.3;			//width (0-1)
			h = 0.052;			//height (0-1)
			x = 0;			//position on X axis (0-1)
			y = 0.04;			//position on Y axis (0-1)
			font = GUI_FONT_NORMAL;		//font style
			sizeEx = 0.04;				//font size
			colorBackground[] = { 0,0,0,0 };		//background color, RGBA format (currently transparent)
			colorText[] = { 1,1,1,1 };			//background color, RGBA format (currently white)
			text = "Groups";				//text field
			fixedWidth = 0;				//0,1
			shadow = 0;				//0 - none, 1 - color affected by background, 2 - black
		};	//end: RscText class



		
		

		

		class RscButton_1 : RscButton
		{
			access = 0;				//same as above
			idc = 1511;				//ID number
			type = CT_BUTTON;		//type of the control
			text = "Add";		//text field
			colorText[] = { 1,1,1,1 };		//color of the text (currently white)
			colorDisabled[] = { 0.4,0.4,0.4,0 };		//color when disabled (currently gray)
			colorBackground[] = { 0,0,1,1 };			//background color (currently blue)
			colorBackgroundDisabled[] = { 0.9,0.9.0.9,0 };		//background color when disabled (currently light gray)
			colorBackgroundActive[] = { 1,0,0,1 };		//background color when active (selected, or hovered over) (currently red)
			colorFocused[] = { 0,1,0,1 };			//bakcground color when focused (selected) (currently green)
			colorShadow[] = { 0.023529,0,0.0313725,0 };		//shadow color (currently dark gray)
			colorBorder[] = { 0.023529,0,0.0313725,0 };		//border color (currently dark gray)
			soundEnter[] = { "",0.09,1 };			//sound upon hovering over the control (sound, volume, pitch)
			soundPush[] = { "",0,0 };			//sound upon pushing the button (sound, volume, pitch)
			soundClick[] = { "",0.07,1 };			//sound upon clicking the button (sound, volume, pitch)
			soundEscape[] = { "",0.09,1 };		//sound upon releasing the pushed button (sound, volume, pitch)
			x = 0.04;			//position on X axis (0-1)
			y = 0.8;			//position on Y axis (0-1)
			w = 0.1;			//width (0-1)
			h = 0.06;			//height (0-1)
			style = 2;		//style of the control
			shadow = 2;			//above
			font = GUI_FONT_BOLD;	//font type
			sizeEx = 0.05;			//font size
			offsetX = 0;		//offset when not pressed on X axis
			offsetY = 0;		//offset when not pressed on Y axis
			offsetPressedX = 0.003;			//offset when pressed on X axis
			offsetPressedY = 0.003;			//offset when pressed on Y axis
			borderSize = 0;			//border size (duh)
			action = "";  

		};		//end: RscButton class

		class RscButton_2 : RscButton
		{
			access = 0;				//same as above
			idc = 1510;				//ID number
			type = CT_BUTTON;		//type of the control
			text = "Done";		//text field
			colorText[] = { 1,1,1,1 };		//color of the text (currently white)
			colorDisabled[] = { 0.4,0.4,0.4,0 };		//color when disabled (currently gray)
			colorBackground[] = { 0,0,1,1 };			//background color (currently blue)
			colorBackgroundDisabled[] = { 0.9,0.9.0.9,0 };		//background color when disabled (currently light gray)
			colorBackgroundActive[] = { 1,0,0,1 };		//background color when active (selected, or hovered over) (currently red)
			colorFocused[] = { 0,1,0,1 };			//bakcground color when focused (selected) (currently green)
			colorShadow[] = { 0.023529,0,0.0313725,0 };		//shadow color (currently dark gray)
			colorBorder[] = { 0.023529,0,0.0313725,0 };		//border color (currently dark gray)
			soundEnter[] = { "",0.09,1 };			//sound upon hovering over the control (sound, volume, pitch)
			soundPush[] = { "",0,0 };			//sound upon pushing the button (sound, volume, pitch)
			soundClick[] = { "",0.07,1 };			//sound upon clicking the button (sound, volume, pitch)
			soundEscape[] = { "",0.09,1 };		//sound upon releasing the pushed button (sound, volume, pitch)
			x = 0.2;			//position on X axis (0-1)
			y = 0.8;			//position on Y axis (0-1)
			w = 0.1;			//width (0-1)
			h = 0.06;			//height (0-1)
			style = 2;		//style of the control
			shadow = 2;			//above
			font = GUI_FONT_BOLD;	//font type
			sizeEx = 0.05;			//font size
			offsetX = 0;		//offset when not pressed on X axis
			offsetY = 0;		//offset when not pressed on Y axis
			offsetPressedX = 0.003;			//offset when pressed on X axis
			offsetPressedY = 0.003;			//offset when pressed on Y axis
			borderSize = 0;			//border size (duh)
									//action = "this = [_this,(lbText [1500,(lbCurSel 1500)]) execVM 'equip.sqf';";  

		};		//end: RscButton class
	};	//end: controls class

};	//end: MyFirstDialog class