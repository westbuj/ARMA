
class groupSpawnDialog			//Dialog class name, gets called by: handle = CreateDialog "name"
{
	idd = 9001;						//Display control number
	movingenable = false;			//True/False to enable moving the dialog with mouse
	enableSimulation = 1;		//True/False to enable world simulation in the background

	
	class controls {

		class RscEdit_1400 : RscEdit
		{
			idc = 1400;
			x = 0.25;
			y = 0.3;
			w = 0.127;
			h = 0.06;
			maxChars = 10;
		};

		class RscListbox_1503 : RscListbox       //////////////////////////////////////set group detail
		{
			idc = 1503;
			x = .41;
			y = .3;
			w = .3;
			h = .45;
			//onLBSelChanged = {hint str (_this select 0)};
			


			class items
			{
				class _side
				{
					text = "West";
					value = 1; // lnbValue
					data = "Weapon_arifle_MSBS65_F"; // lnbData
				};				

			};
			
		};
		class RscListbox_Components : RscListbox  //////////////////////////////////////List groups
		{
			idc = 1502;
			x = .1;// 1 * GUI_GRID_W + GUI_GRID_X;
			y = .46;// *GUI_GRID_H + GUI_GRID_Y;
			w = .3;// *GUI_GRID_W;
			h = .25;// *GUI_GRID_H;
				   //onLBSelChanged = {hint str (_this select 0)};
			


			class items
			{
				class _side
				{
					text = "West";
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
			style = ST_LEFT;	//style of the control
			w = 0.8;			//width (0-1)
			h = 0.05;			//height (0-1)
			x = 0.25;			//position on X axis (0-1)
			y = 0.24;			//position on Y axis (0-1)
			font = GUI_FONT_BOLD;		//font style
			sizeEx = 0.04;				//font size
			colorBackground[] = { 0,0,0,0 };		//background color, RGBA format (currently transparent)
			colorText[] = { 1,.6,.6,1 };			//background color, RGBA format (currently white)
			text = "HIGH COMMAND - Group Provisioning";				//text field
			fixedWidth = 0;				//0,1
			shadow = 0;				//0 - none, 1 - color affected by background, 2 - black
		};	//end: RscText class
		class RscText_UNIT_type : RscText
		{
			access = 0;			//0 - Read and Write, 1 - Read and create, 2 - Read, 3 - Read verified
			type = CT_STATIC;	//type of the control
			idc = 0;			//control ID number
			style = ST_LEFT;	//style of the control
			w = 0.8;			//width (0-1)
			h = 0.05;			//height (0-1)
			x = 0.1;			//position on X axis (0-1)
			y = 0.3;			//position on Y axis (0-1)
			font = GUI_FONT_NORMAL;		//font style
			sizeEx = 0.04;				//font size
			colorBackground[] = { 0,0,0,0 };		//background color, RGBA format (currently transparent)
			colorText[] = { 1,1,1,1 };			//background color, RGBA format (currently white)
			text = "Group Name:";				//text field
			fixedWidth = 0;				//0,1
			shadow = 0;				//0 - none, 1 - color affected by background, 2 - black
		};	//end: RscText class
		

		class RscText_GroupName : RscText
		{
			access = 0;			//0 - Read and Write, 1 - Read and create, 2 - Read, 3 - Read verified
			type = CT_STATIC;	//type of the control
			idc = 1203;			//control ID number
			style = ST_CENTER;	//style of the control
			w = 0.3;			//width (0-1)
			h = 0.052;			//height (0-1)
			x = 0.1;			//position on X axis (0-1)
			y = 0.35;			//position on Y axis (0-1)
			font = GUI_FONT_NORMAL;		//font style
			sizeEx = 0.04;				//font size
			colorBackground[] = { 0,0,0,0 };		//background color, RGBA format (currently transparent)
			colorText[] = { 0,0,1,1 };			//background color, RGBA format (currently white)
			text = "Group";				//text field
			fixedWidth = 0;				//0,1
			shadow = 0;				//0 - none, 1 - color affected by background, 2 - black
		};	//end: RscText class



		
		

		

		class RscPicture_1200 : RscPicture
		{
			idc = 1201;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = .12;// 1 * GUI_GRID_W + GUI_GRID_X;
			y = .4;// *GUI_GRID_H + GUI_GRID_Y;
			w = .1;// *GUI_GRID_W;
			h = .05;// *GUI_GRID_H;
		};
		class RscPicture_1250 : RscPicture
		{
			idc = 1251;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = .27;// 1 * GUI_GRID_W + GUI_GRID_X;
			y = .4;// *GUI_GRID_H + GUI_GRID_Y;
			w = .1;// *GUI_GRID_W;
			h = .05;// *GUI_GRID_H;
		};
		

		class RscButton_1 : RscButton
		{
			access = 0;				//same as above
			idc = 1504;				//ID number
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
			x = 0.14;			//position on X axis (0-1)
			y = 0.72;			//position on Y axis (0-1)
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
			idc = 1504;				//ID number
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
			x = 0.27;			//position on X axis (0-1)
			y = 0.72;			//position on Y axis (0-1)
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