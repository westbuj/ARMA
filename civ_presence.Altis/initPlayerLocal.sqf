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


