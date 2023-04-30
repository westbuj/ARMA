_h = [22,.25,25] execVM "skipTime.sqf";

[0,0,false] spawn BIS_fnc_cinemaBorder;
playSound "Music_2";
sleep 1;
titleText ["<t color='#ff0000' size='5'>ZED ALERT!</t><br/>One way to the outskirts", "PLAIN", -1, true, true];
sleep 3;
titleText ["<t color='#ff0000' size='5'>objective</t><br/>Take Miller to the Analyst", "PLAIN", -1, true, true];
sleep 3;
titleText ["<t color='#ff0000' size='5'>destination</t><br/>about 3 km northeast", "PLAIN", -1, true, true];
sleep 3;

[1,1,false] spawn BIS_fnc_cinemaBorder;

ChopperGroupReturnToHome = true;

//ExtractionGroup

_wp =ChopperGroup addWaypoint [getMarkerPos "outpost_1_approach", 0];
_wp setWaypointType "MOVE";



_wp =ChopperGroup addWaypoint [getMarkerPos "outpost_1_helopad", 0];
_wp setWaypointType "GETOUT";




