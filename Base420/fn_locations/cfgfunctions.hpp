class JNN {
	tag = "JNN";
	class missionFactory {
		file = "fn_locations";
			class buildingsInRange {};
			class roadsInRange {};
	};
	
	class ambient {
		file = "fn_locations";
		class baseDog {};
	};
	class JNN_HighCommand {
		file = "fn_locations";
		class createGroupFromTemplate {};
		class attachGroupProvisioning {};
		class getFactionDetail {};
		class attachTroopProvisioning {};
		class getManClassesForSide {};
		class getManClassDetails {};
		class attachSquadToHC {};
		class attachMicroManager {};
		class attachMacroManager {};
		class attachReportingManager {};
		class getDefaultWPIcon {};
		class remoteControlledBy {};
	};
	

};