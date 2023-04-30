if (isNil "PLAYMUSIC_CLASS") then { PLAYMUSIC_CLASS = ""; };

if (!isDedicated) then {
	"PLAYMUSIC_CLASS" addPublicVariableEventHandler {playMusic PLAYMUSIC_CLASS;};
};

if (!isDedicated) then {
	"LOADINGMUSIC_CLASS" addPublicVariableEventHandler {playMusic LOADINGMUSIC_CLASS;};
};

if (isNil "PLAYSOUND_CLASS") then { PLAYSOUND_CLASS = ""; };

if (!isDedicated) then {
	"PLAYSOUND_CLASS" addPublicVariableEventHandler {playSound PLAYSOUND_CLASS;};
};
player addAction ["420 Command","fn_locations\macroManagerDialog.sqf",["West", "BLU_F"]];

//[player] call JNN_fnc_attachTroopProvisioning; [player] call JNN_fnc_attachGroupProvisioning;[player] call JNN_fnc_attachMacroManager;