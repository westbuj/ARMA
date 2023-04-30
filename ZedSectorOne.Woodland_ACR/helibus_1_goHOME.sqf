
sleep 4;

_wp =Helibus_1 addWaypoint [getMarkerPos "HeliBus_1_helopad", 0];
_wp setWaypointType "GETIN";

_wp =Helibus_1 addWaypoint [getMarkerPos "HeliBus_1_approach", 0];
	_wp setWaypointType "MOVE";

sleep 4;

HeliBus_1_return = false;

_wp =Helibus_1 addWaypoint [getMarkerPos "HeliBusHome", 0];
_wp setWaypointType "GETOUT";

