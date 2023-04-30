_pos = screenToWorld [0.5, 0.5];

for "_i" from 1 to 9 do {

	_group = createGroup [west, true];

	
	_unit = _group createUnit ["B_G_Soldier_LAT2_F", _pos, [], 0, "NONE"];

};