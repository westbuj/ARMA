
_group = (_this select 0);
	{

		_unit = _x;
		_unit addAction
			[
			"Recruit Unit",
			{
			  [(_this select 0)] join group (_this select 1);
			  (_this select 0) removeAction (_this select 2);
			},
			[],
			6,
			true,
			true,
			"",
			"_this distance _target < 5"
			];
		
	}forEach (units _group);