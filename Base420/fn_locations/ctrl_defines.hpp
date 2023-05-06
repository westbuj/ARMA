

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

class RscCombo
{
	access = 0;
	type = CT_COMBO;
	style = ST_LEFT;
	h = 0.05;
	wholeHeight = 0.25;
	colorDisabled[] = { 1,		1,		1,		0.25 };
	colorSelect[] = { 0.6,0.6,0.6,1 };
	colorText[] = { 1,1,1,1 };
	colorBackground[] = { 0.2,0.2,0.2,1 };
	colorScrollbar[] = { 1,1,1,1 };
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
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

#define CT_MAP_MAIN 101
#define ST_PICTURE 48
class RscMapControl
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 101;
	idc = 51;
	style = 48;

	colorDisabled[] = { 1,		1,		1,		0.25 };


	colorBackground[] = { 0.969, 0.957, 0.949, 1 };
	colorOutside[] = { 0, 0, 0, 1 };
	colorText[] = { 0, 0, 0, 1 };
	font = "TahomaB";
	sizeEx = 0.04;
	colorSea[] = { 0.467, 0.631, 0.851, 0.5 };
	colorForest[] = { 0.624, 0.78, 0.388, 0.5 };
	colorRocks[] = { 0, 0, 0, 0.3 };
	colorCountlines[] = { 0.572, 0.354, 0.188, 0.25 };
	colorMainCountlines[] = { 0.572, 0.354, 0.188, 0.5 };
	colorCountlinesWater[] = { 0.491, 0.577, 0.702, 0.3 };
	colorMainCountlinesWater[] = { 0.491, 0.577, 0.702, 0.6 };
	colorForestBorder[] = { 0, 0, 0, 0 };
	colorRocksBorder[] = { 0, 0, 0, 0 };
	colorPowerLines[] = { 0.1, 0.1, 0.1, 1 };
	colorRailWay[] = { 0.8, 0.2, 0, 1 };
	colorNames[] = { 0.1, 0.1, 0.1, 0.9 };
	colorInactive[] = { 1, 1, 1, 0.5 };
	colorLevels[] = { 0.286, 0.177, 0.094, 0.5 };
	colorTracks[] = { 0.84, 0.76, 0.65, 0.15 };
	colorRoads[] = { 0.7, 0.7, 0.7, 1 };
	colorMainRoads[] = { 0.9, 0.5, 0.3, 1 };
	colorTracksFill[] = { 0.84, 0.76, 0.65, 1 };
	colorRoadsFill[] = { 1, 1, 1, 1 };
	colorMainRoadsFill[] = { 1, 0.6, 0.4, 1 };
	colorGrid[] = { 0.1, 0.1, 0.1, 0.6 };
	colorGridMap[] = { 0.1, 0.1, 0.1, 0.6 };
	stickX[] = { 0.2,{ "Gamma", 1, 1.5 } };
	stickY[] = { 0.2,{ "Gamma", 1, 1.5 } };
	class Legend
	{
		colorBackground[] = { 1, 1, 1, 0.5 };
		color[] = { 0, 0, 0, 1 };
		x = "SafeZoneX + 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		y = "SafeZoneY + safezoneH - 4.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		w = "10 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		h = "3.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		font = "RobotoCondensed";
		sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	};
	class ActiveMarker
	{
		color[] = { 0.3, 0.1, 0.9, 1 };
		size = 50;
	};
	class Command
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\a3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class Task
	{
		taskNone = "#(argb,8,8,3)color(0,0,0,0)";
		taskCreated = "#(argb,8,8,3)color(0,0,0,1)";
		taskAssigned = "#(argb,8,8,3)color(1,1,1,1)";
		taskSucceeded = "#(argb,8,8,3)color(0,1,0,1)";
		taskFailed = "#(argb,8,8,3)color(1,0,0,1)";
		taskCanceled = "#(argb,8,8,3)color(1,0.5,0,1)";
		colorCreated[] = { 1, 1, 1, 1 };
		colorCanceled[] = { 0.7, 0.7, 0.7, 1 };
		colorDone[] = { 0.7, 1, 0.3, 1 };
		colorFailed[] = { 1, 0.3, 0.2, 1 };
		color[] = { "(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])" };
		icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
		iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
		iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
		iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
		iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
		size = 27;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class CustomMark
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\a3\ui_f\data\map\mapcontrol\custommark_ca.paa";
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class Tree
	{
		color[] = { 0.45, 0.64, 0.33, 0.4 };
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		size = 12;
		importance = "0.9 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class SmallTree
	{
		color[] = { 0.45, 0.64, 0.33, 0.4 };
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		size = 12;
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Bush
	{
		color[] = { 0.45, 0.64, 0.33, 0.4 };
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		size = "14/2";
		importance = "0.2 * 14 * 0.05 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Church
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Chapel
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Cross
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Rock
	{
		color[] = { 0.1, 0.1, 0.1, 0.8 };
		icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Bunker
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		size = 14;
		importance = "1.5 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Fortress
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Fountain
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		size = 11;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class ViewTower
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class Lighthouse
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Quay
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Fuelstation
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Hospital
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class BusStop
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\busstop_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class LineMarker
	{
		textureComboBoxColor = "#(argb,8,8,3)color(1,1,1,1)";
		lineWidthThin = 0.008;
		lineWidthThick = 0.014;
		lineDistanceMin = 3e-005;
		lineLengthMin = 5;
	};
	class Transmitter
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Stack
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.4;
		coefMax = 2;
	};
	class Ruin
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		size = 16;
		importance = "1.2 * 16 * 0.05";
		coefMin = 1;
		coefMax = 4;
	};
	class Tourism
	{
		color[] = { 0, 0, 0, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.7;
		coefMax = 4;
	};
	class Watertower
	{
		color[] = { 1, 1, 1, 1 };
		icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
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
		color[] = { 1, 1, 1, 1 };
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		icon = "\a3\ui_f\data\map\mapcontrol\waypointcompleted_ca.paa";
		size = 18;
	};
	moveOnEdges = 1;
	x = "SafeZoneXAbs";
	y = "SafeZoneY + 1.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	w = "SafeZoneWAbs";
	h = "SafeZoneH - 1.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	shadow = 0;
	ptsPerSquareSea = 5;
	ptsPerSquareTxt = 20;
	ptsPerSquareCLn = 10;
	ptsPerSquareExp = 10;
	ptsPerSquareCost = 10;
	ptsPerSquareFor = 9;
	ptsPerSquareForEdge = 9;
	ptsPerSquareRoad = 6;
	ptsPerSquareObj = 9;
	showCountourInterval = 0;
	scaleMin = 0.001;
	scaleMax = 1;
	scaleDefault = 0.16;
	maxSatelliteAlpha = 0.85;
	alphaFadeStartScale = 2;
	alphaFadeEndScale = 2;
	colorTrails[] = { 0.84, 0.76, 0.65, 0.15 };
	colorTrailsFill[] = { 0.84, 0.76, 0.65, 0.65 };
	widthRailWay = 4;
	fontLabel = "RobotoCondensed";
	sizeExLabel = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	fontGrid = "TahomaB";
	sizeExGrid = 0.02;
	fontUnits = "TahomaB";
	sizeExUnits = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	fontNames = "RobotoCondensed";
	sizeExNames = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8) * 2";
	fontInfo = "RobotoCondensed";
	sizeExInfo = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	fontLevel = "TahomaB";
	sizeExLevel = 0.02;
	text = "#(argb,8,8,3)color(1,1,1,1)";// "\A3\EditorPreviews_F\Data\CfgVehicles\MapBoard_altis_F.jpg";// "\A3\Map_Altis\data\ui_Altis_ca.paa"; //"#(argb,8,8,3)color(1,1,1,1)";
	idcMarkerColor = -1;
	idcMarkerIcon = -1;
	textureComboBoxColor = "#(argb,8,8,3)color(1,1,1,1)";
	showMarkers = 1;
	class power
	{
		icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = { 1, 1, 1, 1 };
	};
	class powersolar
	{
		icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = { 1, 1, 1, 1 };
	};
	class powerwave
	{
		icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = { 1, 1, 1, 1 };
	};
	class powerwind
	{
		icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = { 1, 1, 1, 1 };
	};
	class Shipwreck
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Shipwreck_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
		color[] = { 0, 0, 0, 1 };
	};
};