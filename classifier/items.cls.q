// *******************************************************************
// armor
itemlist armor = { "body armor" 1	"extra armor" 1 };
	itemlist "body armor" = 
		{ 
		"chest armor" 1 
		"leg armor" 1 
		"arm armor" 1 
		"neck armor" 1 
		"head armor" 1 
		"hand armor" 1 
		};
	itemlist "extra armor" = { shields 1 };
		
		itemlist "chest armor" = 
			{ 
			5055 10 // chain tunic 
			5060 10 // chain tunic  
			5068 30 // leather   
			5083 20 // studded leather   
			5100 15 // ring  
			5133 40 // padded tunic  
			5141 5  // plate   
			5199 1  // bone   
			7170 8  // Studded Xena Armor
			7171 8  // Mirror Studded Xena Armor
		  7172 3  // Plate Xena Armor
			7173 2  //  Mirror Plate Xena Armor
			7174 9  // Leather Xena Armor
			7175 9  // Mirror Leather Xena Armor
			};
		itemlist "leg armor" = 
			{ 
			5054 10 // chain   
			5067 30 // leather   
			5082 20 // studded leather   
			5104 15 // ring  
			5131 40 // padded   
			5137 5  // plate   
			5202 1  // bone
      7168 5  // Xena Leather shorts
      7176 5  // Xena Leather skirts
      7178 5  // Xena Leather bustier
      7180 5  // Xena Studded bustier
			};
		itemlist "arm armor" = 
			{ 
			5061 30 // leather 
			5076 20 // studded leather 
			5102 15 // ring 
			5143 5  // plate 
			5198 1  // bone
			};
		itemlist "neck armor" = 
			{ 
			5063 30 // leather 
			5078 20 // studded leather 
			5139 10 // plate 
			5078 20 // gorget
			}; 
		itemlist "head armor" = { helms 1 coifs 1 };
			itemlist helms = 
				{ 
				// 3731 40 // helmet 
				5145 30 // bucket helm 
				5201 10 // bone 
				5138 20 // plate
				};
			itemlist coifs = 
				{ 
				5051 40 // chain 
				5129 60 // padded cap
				};

		itemlist "hand armor" = 
			{ 
			5062 50 // leather 
			5077 30 // studded leather 
			5099 10 // ring 
			5140 7 // plate 
			5205 3 // bone 
			};
		itemlist shields = 
			{
			7034 30 // wooden shield 
			7027 20 // buckler
			7032 20 // kite
			7028 30 // heater shield
			};

// **********************************************************************************************
// weapons
itemlist weapons = { "everyday weapons" 1 "real weapons" 5 };
	itemlist "everyday weapons" = 
		{ 
		3718 5 // pickaxe 
		3719 1 // pitchfork 
		3721 5 // quarterstaff 
		3779 1 // meat cleaver
		3780 1 // skinning knife
		5109 2 // shepherd's crook
		5110 1 // butcher knife
		}; 
	itemlist "real weapons" = { "blunt weapons" 1 "edged weapons" 1 "ranged weapons" 1 };
		itemlist "blunt weapons" = { cudgels 1 maces 1 hammers 1 };
			itemlist cudgels = 
				{ 
				3721 15 // quarterstaff
				5044 20 // club
				};																																					 
			itemlist maces = 
				{
				3932 70 // mace
				5127 25 // war mace 
				5179 5  // maul
				};
			itemlist hammers = 
				{ 
				5177 80 // war hammer 
				5181 20 // hammerpick 
				};

		itemlist "edged weapons" = { axes 1 swords 1 pole_arms 1 daggers 1 };
			itemlist axes = 
				{
				3907 10 // double-bitted battle axe
				3911 30 // battle axe
				3913 40 // new axe
				3915 15 // double-bitted new axe
				5040 5  // war axe
				};
			itemlist swords =
				{
				3934 20 // broad sword
				3937 20 // long sword
				5046 20 // scimitar
				5048 5  // magic sword
				5049 15 // viking sword
				5118 5 // katana
				5119 5 // katana2
				5185 10 // cutlass
				};
			itemlist pole_arms = 
				{
				3917 10 // bardiche
				3938 40 // spear
				5123 20 // short spear
				5115 10 // 2 handed axe/pole axe
				5125 5  // war fork
				5183 15 // halberd
				};
			itemlist daggers =
				{
				3920 40 // dagger 1
				3921 40 // dagger 2
				5121 20 // kryss
				};
		
		itemlist "ranged weapons" = 
			{
			3919 40 // crossbow
			5117 20 // big crossbow
			5042 40 // bow 
			};
		itemlist missiles = { }; // arrows

// ************************************************************************************************
// clothing
itemlist wearables = { clothing 1 jewelry 1 };
itemlist clothing = { cloaks 1 boots 1 gloves 1 hats 1 belts 1 masks 1 };

	itemlist cloaks = { 5397 1 5424 1 };
	itemlist boots = 
		{
		5905 1 // thigh boots
		5906 1 // thigh boots
		5899 1 // black boots
		5900 1 // black boots
			};
	itemlist gloves = { 5062 1 /* leather gloves */	};
	itemlist hats = 
		{
		5908 1 // Hats 1
		5909 1 //	Hats 2
		5910 1 //	Hats 3
		5911 1 //	Hats 4
		5912 1 //	Hats 5
		5913 1 //	Hats 6
		5914 1 //	Hats 7
		5915 1 //	Hats 8
		5916 1 //	Hats 9
		};
	itemlist belts = 
		{
		5441 1 // gold belt
		5441 1 // gold belt
		};
	itemlist masks = 
		{
		5445 1 //	bear mask	1
		5446 1 //	bear mask	2
		5447 1 //	deer mask	1
		5448 1 //	deer mask	2
		5449 1 //	tribal mask	1
		5450 1 //	tribal mask	2
		5451 1 //	tribal mask	3
		5452 1 //	tribal mask	4
 		};

// ****************************************************************************************************
// jewelry
itemlist jewelry = { necklaces 1 bracelets 1 earings 1 rings 1 };

	itemlist necklaces = 
		{ 
		4229 1 // necklace 1
		4232 1 // necklace 2
		4233 1 // necklace 3
		};
	itemlist bracelets = { 4230 1 };
	itemlist earings = { 4231 1 };
	itemlist rings = { 4234 1 };


// magic related items
itemlist "magic related items" = { reagents 2 scroll 3 "potions" 3 wearables 1 "targetables" 1  "activators" 1 };
	
itemlist reagents = 
	{ 
	3962 1 // BlackPearl	
	3963 1 // BloodMoss	
	3972 1 // Garlic		
	3973 1 // Ginseng		
	3974 1 // Mandrake		
	3976 1 // Nightshade	
	3980 1 // SulfurAsh	
	3981 1 // SpiderSilk	
	};
itemlist spellbooks = 
	{ 
	3834 1 // spellbook	1
	3643 1 // spellbook	2
	};

itemlist scroll =  
	{
	3637 1	// scroll	2
	3638 1	// scroll	3
	3638 1 	// scroll	4
	3639 1	// scroll	5
	3640 1	// scroll	6
	3641 1	// scroll 7
	3642 1 	// scroll	8
	3828 1 	// scroll	10
	3829 1 	// scroll	11																
	3830 1 	// scroll	12
	3831 1 	// scroll	13
	3833 1 	// scroll	15
	};

itemlist "potions" =
	{
	3846  1 // Black Potion  
	3847	1 // Orange Potion  
	3848	1 // Blue Potion 
	3849  1 // White potion
	3850  1 // green potion 
	3851	1 // Red Potion  
	3852	1 // Yellow Potion  
	3853	1 // Purple Potion
	};  

itemlist "targetables" = { wands 2 staves 1 };				 
	itemlist wands = 
		{
		3570 1	// magic wand 1
		3571 1	// magic wand 2
		3572 1	// magic wand 3
		3573 1	// magic wand 4
		};
	itemlist staves = 
		{
		5112 1 // gnarled staff 1
		5113 1 // gnarled staff 2
		};

itemlist "activators" = { "crystal balls" 1 "stationary" 1	};
	itemlist "crystal balls" = 
		{
		3629 1 // crystal ball 1
		};

	itemlist "stationary" =
		{
		3633 1 // brazier 1
		3634 1 // brazier 2
		3635 1 // brazier 3
		4644 1 // statue 1
		4645 1 // statue 2
		4646 1 // statue 3
		4647 1 // statue 4
		4648 1 // statue 5
		};

itemlist "all" = 
	{
	weapons 3
	armor 3
	scroll 3
	targetables 2
	wearables 2
	activators 1
	reagents 1
	};
