

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

class RscEdit
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] =
	{
		0,
		0,
		0,
		0
	};
	colorText[] =
	{
		0.95,
		0.95,
		0.95,
		1
	};
	colorDisabled[] =
	{
		1,
		1,
		1,
		0.25
	};
	colorSelection[] =
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
		1
	};
	autocomplete = "";
	text = "";
	size = 0.2;
	style = "0x00 + 0x40";
	font = "RobotoCondensed";
	shadow = 2;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	canModify = 1;
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

#define CT_MAP_MAIN 101
#define ST_PICTURE 48

class RscMapControl
{
	access = 0;
	idc = -1;
	type = CT_MAP_MAIN;
	style = ST_PICTURE;

	x = 0.10;
	y = 0.10;
	w = 0.80;
	h = 0.60;

	colorBackground[] = { 1.00, 1.00, 1.00, 1.00 };
	colorText[] = { 0.00, 0.00, 0.00, 1.00 };
	colorSea[] = { 0.56, 0.80, 0.98, 0.50 };
	colorForest[] = { 0.60, 0.80, 0.20, 0.50 };
	colorRocks[] = { 0.50, 0.50, 0.50, 0.50 };
	colorCountlines[] = { 0.65, 0.45, 0.27, 0.50 };
	colorMainCountlines[] = { 0.65, 0.45, 0.27, 1.00 };
	colorCountlinesWater[] = { 0.00, 0.53, 1.00, 0.50 };
	colorMainCountlinesWater[] = { 0.00, 0.53, 1.00, 1.00 };
	colorForestBorder[] = { 0.40, 0.80, 0.00, 1.00 };
	colorRocksBorder[] = { 0.50, 0.50, 0.50, 1.00 };
	colorPowerLines[] = { 0.00, 0.00, 0.00, 1.00 };
	colorNames[] = { 0.00, 0.00, 0.00, 1.00 };
	colorInactive[] = { 1.00, 1.00, 1.00, 0.50 };
	colorLevels[] = { 0.00, 0.00, 0.00, 1.00 };

	font = "TahomaB";
	sizeEx = 0.040000;

	fontLabel = "TahomaB";
	sizeExLabel = 0.02;
	fontGrid = "TahomaB";
	sizeExGrid = 0.02;
	fontUnits = "TahomaB";
	sizeExUnits = 0.02;
	fontNames = "TahomaB";
	sizeExNames = 0.02;
	fontInfo = "TahomaB";
	sizeExInfo = 0.02;
	fontLevel = "TahomaB";
	sizeExLevel = 0.02;

	ptsPerSquareSea = 6;
	ptsPerSquareTxt = 8;
	ptsPerSquareCLn = 8;
	ptsPerSquareExp = 8;
	ptsPerSquareCost = 8;
	ptsPerSquareFor = "4.0f";
	ptsPerSquareForEdge = "10.0f";
	ptsPerSquareRoad = 2;
	ptsPerSquareObj = 10;

	//text = "\ca\ui\data\map_background2_co.paa";
	showCountourInterval = 2;
	scaleDefault = 0.1;
	onMouseButtonClick = "";
	onMouseButtonDblClick = "";

	class ActiveMarker
	{
		color[] = { 0.30, 0.10, 0.90, 1.00 };
		size = 50;
	};
	class Bunker
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Bunker_CA.paa";
		size = 14;
		color[] = { 0, 0, 0, 1 };
		importance = "1.5 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Bush
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Bush_CA.paa";
		size = 7;
		color[] = { 0.45, 0.64, 0.33, 0.4 };
		importance = "0.2 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class BusStop
	{
		icon = "\A3\ui_f\data\map\mapcontrol\BusStop_CA.paa";
		size = 24;
		color[] = { 1, 1, 1, 1 };
		importance = "1 * 10 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Command
	{
		icon = "#(argb,8,8,3)color(1,1,1,1)";
		color[] = { 0.00, 0.00, 0.00, 1.00 };
		size = 18;
		importance = 1.00;
		coefMin = 1.00;
		coefMax = 1.00;
	};
	class Cross
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
		size = 24;
		color[] = { 0, 0, 0, 1 };
		importance = "0.7 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Fortress
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Bunker_CA.paa";
		size = 14;
		color[] = { 0, 0, 0, 1 };
		importance = "2 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Fuelstation
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Fuelstation_CA.paa";
		size = 24;
		color[] = { 1, 1, 1, 1 };
		importance = "2 * 16 * 0.05";
		coefMin = 0.75;
		coefMax = 4.00;
	};
	class Fountain
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		size = 11;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Hospital
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
		size = 24;
		importance = "2 * 16 * 0.05";
		coefMin = 0.50;
		coefMax = 4;
	};
	class Chapel
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
		size = 24;
		color[] = { 0, 0, 0, 1 };
		importance = "1 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Church
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
		size = 24;
		importance = "2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Lighthouse
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
		size = 24;
		importance = "3 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Quay
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
		size = 24;
		importance = "2 * 16 * 0.05";
		coefMin = 0.50;
		coefMax = 4.00;
	};
	class Rock
	{
		color[] = { 0.1, 0.1, 0.1, 0.8 };
		icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Ruin
	{
		icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		importance = 0.96;
		color[] = { 0.78, 0.00, 0.05, 1.00 };
		size = 16;
		//importance = "1.2 * 16 * 0.05";
		coefMin = 1.00;
		coefMax = 4.00;
	};
	class Stack
	{
		icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
		color[] = { 0.00, 0.35, 0.70, 1.00 };
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Tree
	{
		icon = "\A3\ui_f\data\map\mapcontrol\tree_CA.paa";
		color[] = { 0.45, 0.64, 0.33, 0.4 };
		size = 12;
		importance = "0.9 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class SmallTree
	{
		icon = "\A3\ui_f\data\map\mapcontrol\SmallTree_CA.paa";
		size = 12;
		color[] = { 0.45, 0.64, 0.33, 0.4 };
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Tourism
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Tourism_CA.paa";
		size = 16;
		color[] = { 0, 0, 0, 1 };
		importance = "1 * 16 * 0.05";
		coefMin = 0.70;
		coefMax = 4.00;
	};
	class Transmitter
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa";
		size = 24;
		importance = "2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class ViewTower
	{
		icon = "\A3\ui_f\data\map\mapcontrol\ViewTower_CA.paa";
		size = 16;
		color[] = { 0, 0, 0, 1 };
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.50;
		coefMax = 4.00;
	};
	class Watertower
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
		size = 24;
		importance = "1.2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Waypoint
	{
		color[] = { 1, 1, 1, 1 };
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		icon = "\a3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		size = 18;
	};
	class WaypointCompleted
	{
		icon = "\ca\ui\data\map_waypoint_completed_ca.paa";
		color[] = { 0.00, 0.00, 0.00, 1.00 };
		size = 24;
		importance = 1.00;
		coefMin = 1.00;
		coefMax = 1.00;
	};
};
class RscCombo
{
	access = 0;
	type = CT_COMBO;
	style = ST_LEFT;
	h = 0.05;
	wholeHeight = 0.25;
	colorSelect[] = { 0.6,0.6,0.6,1 };
	colorText[] = { 1,1,1,1 };
	colorBackground[] = { 0.2,0.2,0.2,1 };
	colorScrollbar[] = { 1,1,1,1 };
	font = "TahomaB";
	sizeEx = 0.04;
	soundSelect[] = { "",0.1,1 };
	soundExpand[] = { "",0.1,1 };
	soundCollapse[] = { "",0.1,1 };
	maxHistoryDelay = 1.0;
	shadow = 0;
	class ComboScrollBar : ScrollBar
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
};