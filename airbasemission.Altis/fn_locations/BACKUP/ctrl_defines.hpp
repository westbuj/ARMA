class ScrollBar //ListScrollBar is class name required for Arma 3
{
	color[] = { 1,1,1,0.6 };
	colorActive[] = { 1,1,1,1 };
	colorDisabled[] = { 1,1,1,0.3 };
	thumb = "#(argb,8,8,3)color(1,1,1,1)";
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	border = "#(argb,8,8,3)color(1,1,1,1)";
	shadow = 0;
};

class RscText
{
	access = 0;			//0 - Read and Write, 1 - Read and create, 2 - Read, 3 - Read verified
	type = CT_STATIC;	//type of the control
	idc = -1;			//control ID number
	style = ST_LEFT;	//style of the control
	w = 0.8;			//width (0-1)
	h = 0.05;			//height (0-1)
	x = 0.5;			//position on X axis (0-1)
	y = 0.5;			//position on Y axis (0-1)
	font = GUI_FONT_NORMAL;		//font style
	sizeEx = 0.04;				//font size
	colorBackground[] = { 0,0,0,0 };		//background color, RGBA format (currently transparent)
	colorText[] = { 1,1,1,1 };			//background color, RGBA format (currently white)
	text = "TEXT EXAMPLE";				//text field
	fixedWidth = 0;				//0,1
	shadow = 0;				//0 - none, 1 - color affected by background, 2 - black
};	//end: RscText class


class RscButton
{

	access = 0;				//same as above
	idc = -1;				//ID number
	type = CT_BUTTON;		//type of the control
	text = "BUTTON";		//text field
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
	x = 0.5;			//position on X axis (0-1)
	y = 0.8;			//position on Y axis (0-1)
	w = 0.2;			//width (0-1)
	h = 0.1;			//height (0-1)
	style = 2;		//style of the control
	shadow = 2;			//above
	font = GUI_FONT_BOLD;	//font type
	sizeEx = 0.05;			//font size
	offsetX = 0;		//offset when not pressed on X axis
	offsetY = 0;		//offset when not pressed on Y axis
	offsetPressedX = 0.003;			//offset when pressed on X axis
	offsetPressedY = 0.003;			//offset when pressed on Y axis
	borderSize = 0;			//border size (duh)
	action = "closedialog 0";	//action executed upon clicking the button (currently closes the dialog itself)
};		//end: RscButton class

class RscListBox
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 5;
	rowHeight = 0;
	colorText[] =	{		1,		1,		1,		1	};
	colorDisabled[] =	{		1,		1,		1,		0.25	};
	colorScrollbar[] =	{		1,		0,		0,		0	};
	colorSelect[] =	{		0,		0,		0,		1	};
	colorSelect2[] =	{		0,		0,		0,		1	};
	colorSelectBackground[] =	{		0.95,		0.95,		0.95,		1	};
	colorSelectBackground2[] =	{		1,		1,		1,		0.5	};
	colorBackground[] =	{		0,		0,		0,		0.3	};
	soundSelect[] =	{		"\A3\ui_f\data\sound\RscListbox\soundSelect",		0.09,		1	};
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	colorPicture[] =	{		1,		1,		1,		1	};
	colorPictureSelected[] =	{		1,		1,		1,		1	};
	colorPictureDisabled[] =	{		1,		1,		1,		0.25	};
	colorPictureRight[] =	{		1,		1,		1,		1	};
	colorPictureRightSelected[] =	{		1,		1,		1,		1	};
	colorPictureRightDisabled[] =	{		1,		1,		1,		0.25	};
	colorTextRight[] =	{		1,		1,		1,		1	};
	colorSelectRight[] =	{		0,		0,		0,		1	};
	colorSelect2Right[] =	{		0,		0,		0,		1	};
	tooltipColorText[] =	{		1,		1,		1,		1	};
	tooltipColorBox[] =	{		1,		1,		1,		1	};
	tooltipColorShade[] =	{		0,		0,		0,		0.65	};
	class ListScrollBar : ScrollBar //ListScrollBar is class name required for Arma 3
	{
		color[] = { 1,1,1,0.6 };
		colorActive[] = { 1,1,1,1 };
		colorDisabled[] = { 1,1,1,0.3 };
		thumb = "#(argb,8,8,3)color(1,1,1,1)";
		arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
		arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
		border = "#(argb,8,8,3)color(1,1,1,1)";
		shadow = 0;
	};
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.3;
	style = 16;
	font = GUI_FONT_NORMAL;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	colorShadow[] =	{		0,		0,		0,		0.5	};
	period = 1.2;
	maxHistoryDelay = 1;
	
};
class RscPicture
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] =
	{
		0,
		0,
		0,
		0
	};
	colorText[] =
	{
		1,
		1,
		1,
		1
	};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
	tooltipColorText[] =
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] =
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] =
	{
		0,
		0,
		0,
		0.65
	};
};



