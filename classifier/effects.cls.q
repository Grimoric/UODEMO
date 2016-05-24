effectlist none = { };

effectlist "scrolls" = { "birds eye" "clumsy" "create food" "feeblemind" "heal" "magic arrow" "night sight" "weaken"
						"agility" "cunning" "cure" "harm" "magic trap" "magic untrap" "protection" "strength"
						"bless" "fireball" "magic lock" "poison" "telekinesis" "teleport" "unlock" "wall of stone"
						"archcure" "archprotection" "curse" "fire field" "greater heal" "lightning" "mana drain" "recall"
						"blade spirits" "dispel field" "incognito" "magic reflection" "mind blast" "paralyze" "poison field" "summon creature"
						"dispel" "energy bolt" "explosion" "invisibility" "mark" "mass curse" "paralyzation field" "reveal"
						"chain lightning" "energy field" "flamestrike" "gate travel" "mana vampire" "mass dispel" "meteor swarm" "polymorph"
						"earthquake" "energy vortex" "resurrection" "summon air elemental" "summon daemon" "summon earth elemental" 
						"summon fire elemental" "summon water elemental" }; 

effectlist "armor defense increasers" = { "armor defense 1" "armor defense 2"	"armor defense 3"
						"armor defense 4" "armor defense 5" } ;
effectlist "weapon damage increasers" = { "weapon damage 1" "weapon damage 2" "weapon damage 3"	"weapon damage 4" 
								"weapon damage 5" } ;
effectlist "weapon skill increasers" = { "weapon skill 1" "weapon skill 2" "weapon skill 3" "weapon skill 4" "weapon skill 5" } ;
effectlist "durability effects" = { "durability 1" "durability 2" "durability 3" "durability 4"	"durability 5" };

effectlist "useables" = { "use birds eye" "use clumsy" "use feeblemind" "use weaken" "use heal"  
							"use greater heal" "use agility" "use cunning" "use strength" "use harm" "use protection" 
							"use curse" "use bless" "use teleport" "use cure" "use mana drain" "use paralyze" 
							"use summon creature" "use summon aire" "use summon daem" "use summon earth" "use summon fire" 
							"use summon water" "use invisibility" "use restoration" } ;
effectlist "useons" = { "useon clumsy" "useon heal" "useon greater heal" "useon feeblemind" "useon magic arrow" 
							"useon weaken" "useon harm" "useon fireball" "useon lightning" "useon mana drain" "useon identify"};
effectlist "wearables" = { "wear clumsy" "wear feeblemind" "wear weaken" "wear agility" "wear cunning" 
							"wear protection" "wear strength" "wear curse" "wear light" "wear birds eye" "wear bless"	
							"wear magic reflect" "wear invisibility" };	 

effectlist "weapon effects" = { "hit clumsy" "hit feeblemind" "hit magic arrow" "hit weaken" "hit harm" 
							"hit fireball" "hit curse" "hit lightning" "hit mana drain" "hit paralyze" };				
							 


// *** ARTIFACT TEMPLATES ***

// *************************Armor Defense Bonuses ******************************
itemeffect "armor defense 1" =
	{
	""
	"defense"
	""
	10
	10
	{ defbonus1 }
	{ "armor defense increasers" "scrolls" }
	};

itemeffect "armor defense 2" =
	{
	""
	"guarding"
	""
	20
	20
	{ defbonus2 }
	{ "armor defense increasers" "scrolls" }
	};

itemeffect "armor defense 3" =
	{
	""
	"hardening"
	""
	35
	35
	{ defbonus3 }
	{ "armor defense increasers" "scrolls" }
	};

itemeffect "armor defense 4" =
	{
	""
	"fortification"
	""
	60
	60
	{ defbonus4 }
	{ "armor defense increasers" "scrolls" }
	};

itemeffect "armor defense 5" =
	{
	""
	"invulnerability"
	""
	100
	100
	{ defbonus5 }
	{ "armor defense increasers" "scrolls" }
	};


// ***********************Weapon Skill Bonuses **************************
itemeffect "weapon skill 1" =
	{
	"accurate"
	""
	""
	5
	5
	{ atkbonus1 }
	{ "weapon skill increasers" "scrolls" }
	};

itemeffect "weapon skill 2" =
	{
	"surpassingly accurate"
	""
	""
	20
	20
	{ atkbonus2 }
	{ "weapon skill increasers" "scrolls" }
	};

itemeffect "weapon skill 3" =
	{
	"eminently accurate"
	""
	""
	35
	35
	{ atkbonus3 }
	{ "weapon skill increasers" "scrolls" }
	};

itemeffect "weapon skill 4" =
	{
	"exceedingly accurate"
	""
	""
	60
	60
	{ atkbonus4 }
	{ "weapon skill increasers" "scrolls" }
	};

itemeffect "weapon skill 5" =
	{
	"supremely accurate"
	""
	""
	100
	100
	{ atkbonus5 }
	{ "weapon skill increasers" "scrolls" }
	};

// ********************** Weapon Damage Bonuses *****************************
itemeffect "weapon damage 1" =
	{
	""
	"ruin"
	""
	6
	6
	{ dambonus1 }
	{ "weapon damage increasers" "scrolls" }
	};

itemeffect "weapon damage 2" =
	{
	""
	"might"
	""
	11
	11
	{ dambonus2 }
	{ "weapon damage increasers" "scrolls" }
	};

itemeffect "weapon damage 3" =
	{
	""
	"force"
	""
	51
	51
	{ dambonus3 }
	{ "weapon damage increasers" "scrolls" }
	};

itemeffect "weapon damage 4" =
	{
	""
	"power"
	""
	51
	51
	{ dambonus4 }
	{ "weapon damage increasers" "scrolls" }
	};

itemeffect "weapon damage 5" =
	{
	""
	"vanquishing"
	""
	101
	101
	{ dambonus5 }
	{ "weapon damage increasers" "scrolls" }
	};



// ************ Artifact durabilty section *********************
itemeffect "durability 1" =
	{
	"durable"
	""
	""
	3
	3
	{ durbonus1 }
	{ "durability effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "durability 2" =
	{
	"substantial"
	""
	""
	6
	6
	{ durbonus2 }
	{ "durability effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "durability 3" =
	{
	"massive"
	""
	""
	12
	12
	{ durbonus3 }
	{ "durability effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "durability 4" =
	{
	"fortified"
	""
	""
	24
	24
	{ durbonus4 }
	{ "durability effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "durability 5" =
	{
	"indestructable"
	""
	""
	48
	48
	{ durbonus5 }
	{ "durability effects" "scrolls" "useons" "useables" "wearables" }
	};


// ***************** Spell Effects - USE (effects user) ********************
itemeffect "use birds eye" =
	{
	""
	"seeing"
	"charges"
	3
	300
	{ usebirdi }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use protection" =
	{
	""
	"protection"
	"charges"
	6
	600
	{ useprtct }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use clumsy" =
	{
	""
	"clumsiness"
	"charges"
	3
	30
	{ useclmsy }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use feeblemind" =
	{
	""
	"feeblemindedness"
	"charges"
	3
	30
	{ usefblmd }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use weaken" =
	{
	""
	"weakness"
	"charges"
	3
	30
	{ useweak }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use heal" =
	{
	""
	"healing"
	"charges"
	3
	300
	{ useheal }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use greater heal" =
	{
	""
	"great healing"
	"charges"
	15
	1500
	{ usegheal }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use agility" =
	{
	""
	"agility"
	"charges"
	6
	60
	{ useagil }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use cunning" =
	{
	""
	"cunning"
	"charges"
	6
	60
	{ usecunn }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use strength" =
	{
	""
	"strength"
	"charges"
	6
	60
	{ usestrgth }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use harm" =
	{
	""
	"harming"
	"charges"
	6
	60
	{ useharm }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use curse" =
	{
	""
	"curses"
	"charges"
	15
	150
	{ usecurse }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use bless" =
	{
	""
	"blessedness"
	"charges"
	15
	150
	{ usebless }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use teleport" =
	{
	""
	"teleporting"
	"charges"
	15
	150
	{ usetport }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use cure" =
	{
	""
	"curing"
	"charges"
	15
	150
	{ usecure }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use mana drain" =
	{
	""
	"mana draining"
	"charges"
	15
	150
	{ usemdran }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use paralyze" =
	{
	""
	"paralyzation"
	"charges"
	24
	240
	{ usepara }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use summon creature" =
	{
	""
	"creature summoning"
	"charges"
	15
	75
	{ usescrtr }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use summon aire" =
	{
	""
	"air elemental summoning"
	"charges"
	102
	306
	{ usesaire }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use summon daem" =
	{
	""
	"daemon summoning"
	"charges"
	102
	306
	{ usesdaem }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use summon earth" =
	{
	""
	"earth elemental summoning"
	"charges"
	102
	306
	{ useserth }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use summon fire" =
	{
	""
	"fire elemental summoning"
	"charges"
	102
	306
	{ usesfire }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

itemeffect "use summon water" =
	{
	""
	"water elemental summoning"
	"charges"
	102
	306
	{ usesh2o }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

	itemeffect "use invisibility" =
	{
	""
	"invisibility"
	"charges"
	39
	390
	{ useinvis }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};

	itemeffect "use restoration" =
	{
	""
	"restfulness"
	"charges"
	10
	50
	{ userestore }
	{ "useables" "useons" "wearables" "durability effects" "scrolls" "weapon effects" }
	};


// ***************** Spell Effects - "useons" (targetable) ********************
itemeffect "useon clumsy" =
	{
	""
	"clumsiness"
	"charges"
	3
	300
	{ useonclmsy }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "useon identify" =
	{
	""
	"identification"
	"charges"
	3
	300
	{ identifyeffect }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};



itemeffect "useon heal" =
	{
	""
	"healing"
	"charges"
	3
	300
	{ useonheal }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "useon feeblemind" =
	{
	""
	"feeblemindedness"
	"charges"
	3
	300
	{ useonfblmd }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "useon weaken" =
	{
	""
	"weakness"
	"charges"
	3
	300
	{ useonweak }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "useon magarrow" =
	{
	""
	"magic arrows"
	"charges"
	3
	300
	{ useonmarrw }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "useon harm" =
	{
	""
	"harming"
	"charges"
	6
	600
	{ useonharm }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "useon fireball" =
	{
	""
	"fireballs"
	"charges"
	9
	900
	{ useonfball }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "useon greater heal" =
	{
	""
	"great healing"
	"charges"
	15
	1500
	{ useongheal }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "useon lightning" =
	{
	""
	"lightning"
	"charges"
	15
	1500
	{ useonltng }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" } 
	};

itemeffect "useon mana drain" =
	{
	""
	"mana draining"
	"charges"
	15
	1500
	{ useonmdran }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

 
// ***************** Spell Effects - Weapon Effects ********************
itemeffect "wear clumsy" =
	{
	""
	"clumsiness"
	"charges"
	3
	15
	{ wearclmsy }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear feeblemind" =
	{
	""
	"feeblemindedness"
	"charges"
	3
	15
	{ wearfblmd }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear weaken" =
	{
	""
	"weakness"
	"charges"
	3
	15
	{ wearweak }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear agility" =
	{
	""
	"agility"
	"charges"
	6
	60
	{ wearagil }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear cunning" =
	{
	""
	"cunning"
	"charges"
	6
	60
	{ wearcunn }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear strength" =
	{
	""
	"strength"
	"charges"
	6
	60
	{ wearclmsy }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear protection" =
	{
	""
	"protection"
	"charges"
	6
	120
	{ wearprtct }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear curse" =
	{
	""
	"curses"
	"charges"
	15
	75
	{ wearcurse }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear light" =
	{
	""
	"night eyes"
	"charges"
	3
	300
	{ wearlight }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear birds eye" =
	{
	""
	"seeing"
	"charges"
	3
	300
	{ wearbirdi }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear bless" =
	{
	""
	"blessings"
	"charges"
	9
	90
	{ wearbless }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear magic reflect" =
	{
	""
	"spell reflection"
	"charges"
	24
	360
	{ wearrflct }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};

itemeffect "wear invisibility" =
	{
	""
	"invisibility"
	"charges"
	39
	390
	{ wearinvis }
	{ "useons" "wearables" "useables" "scrolls" "durability effects" "weapon effects" }
	};


// ***************** Spell Effects - Weapon Effects ********************
itemeffect "hit clumsy" =
	{
	""
	"clumsiness"
	"charges"
	3
	15
	{ hitclmsy }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "hit feeblemind" =
	{
	""
	"feeblemindedness"
	"charges"
	3
	15
	{ hitfblmd }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "hit weaken" =
	{
	""
	"weakness"
	"charges"
	3
	15
	{ hitweak }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "hit magarrow" =
	{
	""
	"burning"
	"charges"
	3
	30
	{ hitmarrw }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "hit harm" =
	{
	""
	"wounding"
	"charges"
	6
	60
	{ hitharm }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "hit fireball" =
	{
	""
	"daemon's breath"
	"charges"
	9
	90
	{ hitfball }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "hit lightning" =
	{
	""
	"thunder"
	"charges"
	15
	150
	{ hitltng }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "hit mana drain" =
	{
	""
	"mages bane"
	"charges"
	15
	150
	{ hitmdran }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "hit paralyze" =
	{
	""
	"ghoul's touch"
	"charges"
	24
	240
	{ hitpara }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

itemeffect "hit curse" =
	{
	""
	"evil"
	"charges"
	24
	240
	{ hitcurse }
	{ "weapon effects" "scrolls" "useons" "useables" "wearables" }
	};

// ********************************************************************************************
// Scroll/spells

itemeffect "bird's eye"	=
	{
	""
	"bird's eye"
	""
	3
	3
	{ birdi }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "clumsy"	= 
	{
	""
	"clumsiness"
	""
	3
	3
	{ clumsy }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "create food" = 
	{
	""
	"create food"
	""
	3
	3
	{ creatfod }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "feeblemind" = 
	{
	""
	"feeblemindedness"
	""
	3
	3
	{ feblmind }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "heal"	= 
	{
	""
	"healing"
	""
	3
	3
	{ heal }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "magic arrow" = 
	{
	""
	"magic arrow"
	""
	3
	3
	{ magarrow }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "night sight" = 
	{
	""
	"night sight"
	""
	3
	3
	{ nitesite }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "weaken"	= 
	{
	""
	"weakness"
	""
	3
	3
	{ weak }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "agility" = 
	{
	""
	"agility"
	""
	6
	6
	{ agility }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "cunning" = 
	{
	""
	"cunning"
	""
	6
	6
	{ cunning }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "cure"	= 
	{
	""
	"cure"
	""
	6
	6
	{ cure }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "harm"	=
	{
	""
	"harm"
	""
	6
	6
	{ harm }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "magic trap"	=
	{
	""
	"magic trap"
	""
	6
	6
	{ magctrap }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "magic untrap"	=
	{
	""
	"magic untrap"
	""
	6
	6
	{ mguntrap }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "protection"	=
	{
	""
	"protection"
	""
	6
	6
	{ protect }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "strength"	=
	{
	""
	"strength"
	""
	6
	6
	{ strength }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "bless" =
	{
	""
	"bless"
	""
	9
	9
	{ bless }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "fireball"	=
	{
	""
	"fireball"
	""
	9
	9
	{ fireball }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "magic lock"	=
	{
	""
	"magic lock"
	""
	9
	9
	{ magclock }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "poison"	=
	{
	""
	"poison"
	""
	9
	9
	{ poison }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "telekinesis" =
	{
	""
	"telekinesis"
	""
	9
	9
	{ telknsis }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "teleport"	=
	{
	""
	"teleport"
	""
	9
	9
	{ teleport }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "unlock"	=
	{
	""
	"unlock"
	""
	9
	9
	{ unlock }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "wall of stone" =
	{
	""
	"wall of stone"
	""
	9
	9
	{ wallston }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "archcure"	=
	{
	""
	"archcure"
	""
	15
	15
	{ archcure }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "archprotection"	=
	{
	""
	"archprotection"
	""
	15
	15
	{ aprotect }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "curse" =
	{
	""
	"curse"
	""
	15
	15
	{ curse }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "fire field"	=
	{
	""
	"fire field"
	""
	15
	15
	{ firefild }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "greater heal"	=
	{
	""
	"greater heal"
	""
	15
	15
	{ grtheal }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "lightning" =
	{
	""
	"lightning"
	""
	15
	15
	{ lightng }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "mana drain"	=
	{
	""
	"mana drain"
	""
	15
	15
	{ manadran }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "recall"	=
	{
	""
	"recall"
	""
	15
	15
	{ recall }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "blade spirits" =
	{
	""
	"blade spirits"
	""
	24
	24
	{ bldsprts }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "dispel field"	=
	{
	""
	"dispel field"
	""
	24
	24
	{ dsplfild }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "incognito" =
	{
	""
	"incognito"
	""
	24
	24
	{ incognto }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "magic reflection"	=
	{
	""
	"magic reflection"
	""
	24
	24
	{ magrflct }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "mind blast"	=
	{
	""
	"mind blast"
	""
	24
	24
	{ mindblst }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "paralyze"	=
	{
	""
	"paralyze"
	""
	24
	24
	{ paralyze }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "poison field"	=
	{
	""
	"poison field"
	""
	24
	24
	{ posnfild }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "summon creature" =
	{
	""
	"creature summoning"
	""
	24
	24
	{ summoncr }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "dispel"	=
	{
	""
	"dispel"
	""
	39
	39
	{ dispel }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "energy bolt" =
	{
	""
	"energy bolt"
	""
	39
	39
	{ nrgybolt }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "explosion" =
	{
	""
	"explosion"
	""
	39
	39
	{ exploson }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "invisibility"	=
	{
	""
	"invisibility"
	""
	39
	39
	{ invis }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "mark"	=
	{
	""
	"mark"
	""
	39
	39
	{ mark }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "mass curse"	=
	{
	""
	"mass curse"
	""
	39
	39
	{ mascurse }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "paralyzation field"	=
	{
	""
	"paralyzation field"
	""
	39
	39
	{ parafild }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "reveal"	=
	{
	""
	"reveal"
	""
	39
	39
	{ reveal }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "chain lightning" =
	{
	""
	"chain lightning"
	""
	63
	63
	{ chainltg }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "energy field"	=
	{
	""
	"energy field"
	""
	63
	63
	{ nrgyfild }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "flamestrike" =
	{
	""
	"flamestrike"
	""
	63
	63
	{ flamstrk }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "gate travel" =
	{
	""
	"gate travel"
	""
	63
	63
	{ gatetrvl }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "mana vampire"	=
	{
	""
	"mana vampire"
	""
	63
	63
	{ manavamp }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "mass dispel" =
	{
	""
	"mass dispel"
	""
	63
	63
	{ massdspl }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "meteor swarm"	=
	{
	""
	"meteor swarm"
	""
	63
	63
	{ meteor }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "polymorph" =
	{
	""
	"polymorph"
	""
	63
	63
	{ polymrph }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "earthquake"	=
	{
	""
	"earthquake"
	""
	102
	102
	{ earthquk }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "energy vortex" =
	{
	""
	"energy vortex"
	""
	102
	102
	{ nrgyvrts }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "resurrection"	=
	{
	""
	"resurrection"
	""
	102
	102
	{ resurect }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "summon air elemental"	=
	{
	""
	"air elemental summoning"	
	""
	102
	102
	{ sumaire }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "summon daemon" =
	{
	""
	"daemon summoning" 
	""
	102
	102
	{ sumdaem }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "summon earth elemental"	=
	{
	""
	"earth elemental summoning"	
	""
	102
	102
	{ sumearth }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "summon fire elemental" =
	{
	""
	"fire elemental summoning" 
	""
	102
	102
	{ sumfire }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};

itemeffect "summon water elemental"	=
	{
	""
	"water elemental summoning"
	""
	102
	102
	{ sumh2o }
	{ "useons" "wearables" "useables" "armor defense increasers" "weapon damage increasers" 
					"weapon skill increasers" "durability effects" "scrolls" }
	};
	
