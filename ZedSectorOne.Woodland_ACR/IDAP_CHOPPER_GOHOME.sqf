

_wp =ChopperGroup addWaypoint [position extractionCopter, 0];
_wp setWaypointType "GETIN";

// are all players in chopper and flag is not set
//{alive _x} count (allPlayers  ) == {alive _x && _x in extractionCopter} count (allPlayers )  && ({alive _x} count allPlayers) > 0 && !ChopperGroupReturnToHome


_wp =ChopperGroup addWaypoint [getMarkerPos "IDAP_CHOPPER_HOME", 0];
_wp setWaypointType "MOVE"; 

_wp =ChopperGroup addWaypoint [getMarkerPos "IDAP_CHOPPER_HOME", 0];
_wp setWaypointType "GETOUT";

_wp =ChopperGroup addWaypoint [getMarkerPos "IDAP_CHOPPER_HOME", 0];
_wp setWaypointType "GETIN";

ChopperGroupReturnToHome = false;