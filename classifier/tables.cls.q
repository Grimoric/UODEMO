effecttable main =
	{
	30 effecttable "weapon effects"
	30 effecttable "armor effects"
	30 effecttable "scrolls"
	7  effecttable "useables"
	15 effecttable "useons"			
	7  effecttable "wearables"
	} ;

	// *************************************************
	effecttable "weapon effects" =
		{
		35 effecttable "weapon skill increasers"
		30 effecttable "weapon damage increasers"
		25 effecttable "durability effects"
		10 effecttable "weapon other effects"
		} ;

		effecttable "weapon damage increasers" =
			{
			50 effect "weapon damage 1" { weapons 1 }
			25 effect "weapon damage 2" { weapons 1 }
			14 effect "weapon damage 3" { weapons 1 }
			8  effect "weapon damage 4" { weapons 1 }
			3  effect "weapon damage 5" { weapons 1 }
			} ;

		effecttable "weapon skill increasers" =
			{
			50 effect "weapon skill 1" { weapons 1 }
			25 effect "weapon skill 2" { weapons 1 }
			14 effect "weapon skill 3" { weapons 1 }
			8  effect "weapon skill 4" { weapons 1 }
			3  effect "weapon skill 5" { weapons 1 }
			} ;
	
		effecttable "weapon other effects" =
			{
			20  effect "hit silver"        { weapons 1 }
			12	effect "hit clumsy"				 { weapons 1 }
			12	effect "hit feeblemind"		 { weapons 1 }
			10	effect "hit magic arrow"	 { weapons 1 }
			12	effect "hit weaken"				 { weapons 1 }
			8 	effect "hit harm"					 { weapons 1 }
			4 	effect "hit fireball"			 { weapons 1 }
			4		effect "hit curse"				 { weapons 1 }
			2		effect "hit lightning"		 { weapons 1 }
			4		effect "hit mana drain"		 { weapons 1 }
			12	effect "hit paralyze"			 { weapons 1 }
			} ;
	

	// **********************************************
	effecttable "armor effects" = 
		{
		75 effecttable "armor defense increasers"
		25 effecttable "durability effects"
		} ;

		effecttable "armor defense increasers" =
			{
			50 effect "armor defense 1" { armor 1 }
			25 effect "armor defense 2" { armor 1 }
			14 effect "armor defense 3" { armor 1 }
			8  effect "armor defense 4" { armor 1 }
			3  effect "armor defense 5" { armor 1 }
			} ;

	// **********************************************
	effecttable "durability effects" =
		{
		50 effect "durability 1" { armor 1 weapons 1 }
		25 effect "durability 2" { armor 1 weapons 1 }
		14 effect "durability 3" { armor 1 weapons 1 }
		8  effect "durability 4" { armor 1 weapons 1 }
		3  effect "durability 5" { armor 1 weapons 1 }
		} ;

// ************************************************
	effecttable "useables"	=
		{
		20	 effect "use birds eye" { stationary 1 } 
		40	 effecttable "use helpers"
		10	 effecttable "use cursed items"
		20	 effecttable "use benificial items"
		15	 effecttable "use escapes"
		5	   effecttable "use summoners"
		};
		
		effecttable "use helpers" =
			{
			30   effect "use restoration" { stationary 1 }
			30	 effect "use heal" { stationary 1 }
		  5    effect "use greater heal" { stationary 1 }
			10	 effect "use protection" { stationary 1 }
			25	 effect "use cure" { stationary 1 }
		  };

		effecttable "use cursed items" =
			{
			20  effect "use clumsy" { stationary 1 }
		  20  effect "use feeblemind" { stationary 1 }
		  20  effect "use weaken" { stationary 1 }
		  20  effect "use harm" { stationary 1 }
		  12  effect "use mana drain" { stationary 1 }
		  6	  effect "use paralyze" { stationary 1 }
		  2	  effect "use curse" { stationary 1 }
		  };

		effecttable "use benificial items" =
			{
			30   effect "use agility" { stationary 1 }
		  30   effect "use cunning" { stationary 1 }
		  30   effect "use strength" { stationary 1 }
			10 	 effect "use bless" { stationary 1 }
		  };

		effecttable "use escapes" =
			{
			50   effect "use teleport" { rings 1 }
		  50 	 effect "use invisibility" { rings 1 }
			};
		
		effecttable "use summoners" =
			{
			55  effect "use summon creature" { stationary 1 }
		  10   effect "use summon aire" { stationary 1 }
		  5    effect "use summon daem" { stationary 1 }
		  10   effect "use summon earth" { stationary 1 }
		  10   effect "use summon fire" { stationary 1 }
		  10   effect "use summon water" { stationary 1 }
		  };

	// *****************************************************
	effecttable "useons" =
		{
		30	 effecttable "useon helpers"
		30	 effecttable "useon stat alterers"
		30	 effecttable "useon damagers"
		};

		effecttable "useon helpers" =
			{
			40	 effect "useon identify" { targetables 1 }
			40	 effect "useon heal" { targetables 1 }
		  20   effect "useon greater heal" { targetables 1 }
			};

		effecttable "useon stat alterers" =
			{
			33	 effect "useon clumsy"  { targetables 1 }					
		  33   effect "useon feeblemind" { targetables 1 }
		  33   effect "useon weaken" { targetables 1 }
		  };

		effecttable "useon damagers" =
			{
			30	 effect "useon magic arrow" { targetables 1 }
		  25   effect "useon harm" { targetables 1 }
		  20   effect "useon fireball" { targetables 1 }
		  15   effect "useon lightning" { targetables 1 }
		  10   effect "useon mana drain" { targetables 1 }
			};

	// **********************************************************
	effecttable "wearables" =
		{
		50	 effecttable "wear useful things"
		20	 effecttable "wear benificial items"
		20	 effecttable "wear protections"
		10   effecttable "wear cursed	items"
		};

		effecttable "wear cursed items" =
			{
			30	 effect "wear clumsy" { wearables 2 armor 1 }
		  30   effect "wear feeblemind" { wearables 2 armor 1 }
		  30   effect "wear weaken" { wearables 2 armor 1 }
			10	 effect "wear curse" { wearables 2 armor 1 }
		  };

		effecttable "wear benificial items" =
			{
			30   effect "wear agility" { wearables 1 armor 1 }
		  30   effect "wear cunning" { wearables 1 armor 1 }
			30	 effect "wear strength" { wearables 1 armor 1 }
			10	 effect "wear bless" { wearables 1 armor 1 }
		  };

		effecttable "wear protections" =
			{
			50	 effect "wear protection" { wearables 1 armor 1  }
		  20 	 effect "wear magic reflect" { wearables 1 armor 1 }
		  30   effect "wear invisibility" { wearables 1 }
			};

		effecttable "wear useful things" =
			{
			50	 effect "wear light" { wearables 1 }
		  50   effect "wear birds eye" { wearables 1 }
		  };

// **************************************************
	
	effecttable "scrolls" =
		{
		80	 effecttable "circle one"
		50	 effecttable "circle two"
		32	 effecttable "circle three"
		20	 effecttable "circle four"
		12	 effecttable "circle five"
		7		 effecttable "circle six"
		4		 effecttable "circle seven"
		1		 effecttable "circle eight"
		};

		effecttable "circle one" =
		{
		10	 effect "birds eye"				{ scroll 1	}
		10	 effect "clumsy"					{ scroll 1	}
		10	 effect "create food"			{ scroll 1	}
		10	 effect "feeblemind"			{ scroll 1	}
		10	 effect "heal"						{ scroll 1	}
		10	 effect "magic arrow"			{ scroll 1	}
		10	 effect "night sight" 		{ scroll 1	}
		10	 effect "weaken"					{ scroll 1	}
		};				
						
		effecttable "circle two" =
		{
		10	 effect "agility" 				{ scroll 1	}
		10	 effect "cunning" 				{ scroll 1	}
		10	 effect "cure" 						{ scroll 1	}
		10	 effect "harm" 						{ scroll 1	}
		10	 effect "magic trap" 			{ scroll 1	}
		10	 effect "magic untrap" 		{ scroll 1	}
		10	 effect "protection" 			{ scroll 1	}
		10	 effect "strength"				{ scroll 1	}
		};

		effecttable "circle three" =
		{
		10	 effect "bless" 					{ scroll 1	}
		10	 effect "fireball" 				{ scroll 1	}
		10	 effect "magic lock" 			{ scroll 1	}
		10	 effect "poison" 					{ scroll 1	}
		10	 effect "telekinesis" 		{ scroll 1	}
		10	 effect "teleport" 				{ scroll 1	}
		10	 effect "unlock" 					{ scroll 1	}
		10	 effect "wall of stone"		{ scroll 1	}
		};

		effecttable "circle four"	=
		{
		10	 effect "archcure" 					{ scroll 1	}
		10	 effect "archprotection" 		{ scroll 1	}
		10	 effect "curse" 						{ scroll 1	}
		10	 effect "fire field" 				{ scroll 1	}
		10	 effect "greater heal" 			{ scroll 1	}
		10	 effect "lightning" 				{ scroll 1	}
		10	 effect "mana drain" 				{ scroll 1	}
		10	 effect "recall"						{ scroll 1	}
		};

		effecttable "circle five"	=
		{
		10	 effect "blade spirits" 		{ scroll 1	}
		10	 effect "dispel field" 			{ scroll 1	}
		10	 effect "incognito" 				{ scroll 1	}
		10	 effect "magic reflection"	{ scroll 1	}
		10	 effect "mind blast" 				{ scroll 1	}
		10	 effect "paralyze" 					{ scroll 1	}
		10	 effect "poison field" 			{ scroll 1	}
		10	 effect "summon creature"		{ scroll 1	}
		};
		
		effecttable "circle six" =
		{
		10	 effect "dispel" 					{ scroll 1	}
		10	 effect "energy bolt" 		{ scroll 1	}
		10	 effect "explosion" 			{ scroll 1	}
		10	 effect "invisibility" 		{ scroll 1	}
		10	 effect "mark" 						{ scroll 1	}
		10	 effect "mass curse" 			{ scroll 1	}
		10	 effect "paralyzation field" 	{ scroll 1	}
		10	 effect "reveal"					{ scroll 1	}
		};
				
		effecttable "circle seven" =
		{
		10	 effect "chain lightning" { scroll 1	}
		10	 effect "energy field" 		{ scroll 1	}
		10	 effect "flamestrike" 		{ scroll 1	}
		10	 effect "gate travel" 		{ scroll 1	}
		10	 effect "mana vampire" 		{ scroll 1	}
		10	 effect "mass dispel" 		{ scroll 1	}
		10	 effect "meteor swarm" 		{ scroll 1	}
		10	 effect "polymorph"				{ scroll 1	}
		};

		effecttable "circle eight" =
		{
		10	 effect "earthquake" 				{ scroll 1	}
		10	 effect "energy vortex" 		{ scroll 1	}
		10	 effect "resurrection" 			{ scroll 1	}
		10	 effect "summon air elemental" 			{ scroll 1	}
		10	 effect "summon daemon" 						{ scroll 1	}
		10	 effect "summon earth elemental"		{ scroll 1	}
		10	 effect "summon fire elemental" 		{ scroll 1	}
		10	 effect "summon water elemental" 		{ scroll 1	}
		};
		
