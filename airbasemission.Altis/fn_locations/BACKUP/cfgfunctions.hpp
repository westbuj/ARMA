class JNN {
	tag = "JNN";
	class location_info {
		file = "fn_locations";
			class buildingsInRange {};
			class roadsInRange {};
	};
	class manInfo {
		file = "fn_locations";
		class getManClassesForSide {};
		class getManClassDetails {};		
	};
	class provisioning {
		file = "fn_locations";
		class attachTroopProvisioning {};		
	};
	class ambient {
		file = "fn_locations";
		class baseDog {};
	};


};