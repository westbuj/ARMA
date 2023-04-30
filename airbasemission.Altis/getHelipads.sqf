//parms = array of objects to compare distance, min dist, max dist

_source_objects = (_this select 0);
_min = (_this select 1);
_max = (_this select 2);

_blds =[];
_bldg = "";

	{
		_blds = _blds + nearestobjects [_x,["helipad"], _max];
	}forEach _source_objects;

	_b = random ((count _blds) -1 );

	_bldg = (_blds select _b);
	{
		while {((_x distance _bldg) < _min)}do{
			_b = random ((count _blds) -1 );
				_bldg = (_blds select _b);
			};

			
	}forEach _source_objects;

_bldg;