
local	CatID	= AchieveItConstants.CategoryIDs
local	Zone = AchieveItConstants.zone

--------------
-- Pandaria --
--------------


local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");



---------------------------
-- Timless Isle Category --
---------------------------

AchieveIt.Categories:addCategory(CatID.Exploration_Pandaria, AchieveIt.GetMapName(Zone.Timeless_Isle), {
	8716,  -- Emissary of Ordos
	8726,  -- Extreme Treasure Hunter
	8725,  -- Eyes On The Ground
	8712,  -- Killing Time
	8723,  -- Legend of the Past
	8724,  -- Pilgrimage
	8730,  -- Rolo's Riddle
	8714,  -- Timeless Champion
	8784,  -- Timeless Legends
	8722,  -- Timeless Nutriment
	8729,  -- Treasure, Treasure Everywhere
	8727,  -- Where There's Pirates, There's Booty
	8743,  -- Zarhym Altogether
}).locate =	function(p_current_map)

	return Zone.Timeless_Isle	==	 p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Exploration_Pandaria, L["Lore"], {
	6856,  -- Ballad of Liu Lang
	6716,  -- Between a Saurok and a Hard Place
	6846,  -- Fish Tales
	8051,  -- Gods and Monsters
	6857,  -- Heart of the Mantid Swarm
	6850,  -- Hozen in the Mist
	8050,  -- Rumbles of Thunder
	6754,  -- The Dark Heart of the Mogu
	6855,  -- The Seven Burdens of Shaohao
	6847,  -- The Song of the Yaungol
	8049,  -- The Zandalari Prophecy
	6858,  -- What Is Worth Fighting For
});

AchieveIt.Categories:addCategory(CatID.Exploration_Pandaria, L["Map"], {
	6978,  -- Explore Dread Wastes
	6351,  -- Explore Jade Forest
	6975,  -- Explore Krasarang Wilds
	6976,  -- Explore Kun-Lai Summit
	6977,  -- Explore Townlong Steppes
	6979,  -- Explore Vale of Eternal Blossoms
	6969,  -- Explore Valley of the Four Winds
});

AchieveIt.Categories:addCategory(CatID.Exploration_Pandaria, L["Treasure"], {
	7996,  -- Bounty of Pandaria
	8726,  -- Extreme Treasure Hunter
	7282,  -- Finders Keepers
	7995,  -- Fortune of Pandaria
	7284,  -- Is Another Man's Treasure
	7281,  -- Lost and Found
	7283,  -- One Man's Trash...
	7997,  -- Riches of Pandaria
	7994,  -- Treasure of Pandaria
	8729,  -- Treasure, Treasure Everywhere
	8727,  -- Where There's Pirates, There's Booty
});

AchieveIt.Categories:addCategory(CatID.Exploration_Pandaria, L["Champions"], {
	7437,  -- A Worthy Opponent
	7438,  -- Could We Find More Like That?
	7439,  -- Glorious!
});

-------------
-- Draenor --
-------------

AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, L["Map"], {
	8937,  -- Explore Frostfire Ridge
	8939,  -- Explore Gorgrond
	8942,  -- Explore Nagrand
	8938,  -- Explore Shadowmoon Valley
	8941,  -- Explore Spires of Arak
	8940,  -- Explore Talador
	10260, -- Explore Tanaan Jungle
	8935,  -- Draenor Explorer
});

AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, L["Treasure"], {
	9727,  -- Expert Treasure Hunter
	9728,  -- Grand Treasure Hunter
	10261, -- Jungle Treasure Hunter
	10262, -- Jungle Treasure Master
	10348, -- Master Treasure Hunter
	9726,  -- Treasure Hunter
});

AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, L["Pathfinder"], {
	8935,  -- Draenor Explorer
	{ id	= 9564, faction = AchieveIt.Factions.ALLIANCE}, -- Securing Draenor
	{ id	= 9562, faction = AchieveIt.Factions.HORDE}, -- Securing Draenor
	{ id	= 10350, faction = AchieveIt.Factions.ALLIANCE}, -- Tanaan Diplomat
	{ id	= 10349, faction = AchieveIt.Factions.HORDE}, -- Tanaan Diplomat
	{ id	= 9833, faction = AchieveIt.Factions.ALLIANCE},	-- Loremaster of Draenor
	{ id	= 9923, faction = AchieveIt.Factions.HORDE}, -- Loremaster of Draenor
	10348,	-- Master Treasure Hunter
	10018,	-- Draenor Pathfinder
});

AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, AchieveIt.GetMapName(Zone.Frostfire_Ridge), {
	8937,  -- Explore Frostfire Ridge
});
	
AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, AchieveIt.GetMapName(Zone.Shadowmoon_Valley), {	
	8938,  -- Explore Shadowmoon Valley
});	

AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, AchieveIt.GetMapName(Zone.Gorgrond), {
	8939,  -- Explore Gorgrond
	9400,  -- Gorgrond Monster Hunter
	9402,  -- Prove Your Strength
	9401,  -- Shredder Maniac
});

AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, AchieveIt.GetMapName(Zone.Talador), {	
	8940,  -- Explore Talador
});	

AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, AchieveIt.GetMapName(Zone.Spires_of_Arak), {	
	8941,  -- Explore Spires of Arak
});

AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, AchieveIt.GetMapName(Zone.Nagrand_WoD), {	
	8942,  -- Explore Nagrand
});

AchieveIt.Categories:addCategory(CatID.Exploration_Draenor, AchieveIt.GetMapName(Zone.Tanaan_Jungle), {
	9727,  -- Expert Treasure Hunter
	10260, -- Explore Tanaan Jungle
	9728,  -- Grand Treasure Hunter
	10061, -- Hellbane
	10069, -- I Came, I Clawed, I Conquered
	10259, -- Jungle Hunter
	10070, -- Jungle Stalker
	10261, -- Jungle Treasure Hunter
	10262, -- Jungle Treasure Master
	10348, -- Master Treasure Hunter
	9726,  -- Treasure Hunter
});


------------
-- Legion --
------------


AchieveIt.Categories:addCategory(CatID.Exploration_Legion, L["Pathfinder"], {
	11190, -- Broken Isles Pathfinder. Part One
	11446, -- Broken Isles Pathfinder. Part One
});


-------------
-- Dalaran --
-------------

AchieveIt.Categories:addCategory(CatID.Exploration_Legion, AchieveIt.GetMapName(Zone.Dalaran), {
	11066, -- Underbelly Tycoon
});

------------
-- Azsuna --
------------

AchieveIt.Categories:addCategory(CatID.Exploration_Legion, AchieveIt.GetMapName(Zone.Azsuna), {
	11261, -- Adventurer of Azsuna
	10665, -- Explore Azsuna
	11175, -- Higher Dimensional Learning
	11256, -- Treasures of Azsuna
});

------------------
-- Highmountain --
------------------

AchieveIt.Categories:addCategory(CatID.Exploration_Legion, AchieveIt.GetMapName(Zone.Highmountain), {
	11264, -- Adventurer of Highmountain
	10667, -- Explore Highmountain
	11257, -- Treasures of Highmountain
});

---------------
-- Stormheim --
---------------

AchieveIt.Categories:addCategory(CatID.Exploration_Legion, AchieveIt.GetMapName(Zone.Stormheim), {
	11263, -- Adventurer of Stormheim
	10668, -- Explore Stormheim
	10627, -- Going Up
	11257, -- Treasures of Stormheim
});

----------------
-- Val'sharah --
----------------

AchieveIt.Categories:addCategory(CatID.Exploration_Legion, AchieveIt.GetMapName(Zone.Valsharah), {
	11262, -- Adventurer of Val'sharah
	10666, -- Explore Val'sharah
	11258, -- Treasures of Val'sharah
});

-------------
-- Suramar --
-------------

AchieveIt.Categories:addCategory(CatID.Exploration_Legion, AchieveIt.GetMapName(Zone.Suramar), {
	11265, -- Adventurer of Suramar
	10669, -- Explore Suramar
	11260, -- Treasures of Suramar
});

------------------
-- Broken Shore --
------------------

AchieveIt.Categories:addCategory(CatID.Exploration_Legion, AchieveIt.GetMapName(Zone.Broken_Shore), {
	11543, -- Explore Broken Shore
	11802, -- Bringing Home the Beacon
	11841, -- Naxt Victim
});

-----------
-- Argus --
-----------

AchieveIt.Categories:addCategory(CatID.Exploration_Legion, AchieveIt.GetMapName(Zone.Argus), {
	12077, -- Adventurer of Argus
	12069, -- Explore Argus
	12078, -- Commander of Argus
	12028, -- Envision Invasion Eradication
	12084, -- Infused and Abused
	12026, -- Invasion Obliteration
	12083, -- Paragon of Argus
	12074, -- Shoot First, Loot Later
});


------------------------
-- Battle for Azeroth --
------------------------


AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, L["Map"], {
	12557, -- Explore Drustvar
	12561, -- Explore Nazmir
	12558, -- Explore Stormsong Valley
	12556, -- Explore Tiragarde Sound
	12560, -- Explore Vol'dun
	12559, -- Explore Zuldazar
	12988, -- Battle for Azeroth Explorer
	13776, -- Explore Mechagon
	13712. -- Explore Nazjatar
});

AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, L["Lore"], {
	12482, -- Get Hek'd
	13036, -- A Loa of a Tale
	13061, -- Three Sheets to the Wind
	13029, -- Eating Out of the Palm of My Tiny Hand
	13027, -- Mushroom Harvest
	14159, -- Combating the Corruption
	14160, -- Rare to Well Done
	14158, -- It's Not A Tumor!
});


AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, L["Pathfinder"], {
	12988, -- Battle for Azeroth Explorer
	13144, -- Wide World of Quests
	{	id	= 12510,	faction = AchieveIt.Factions.ALLIANCE},	-- Ready for War
	{	id	= 12509,	faction = AchieveIt.Factions.HORDE}, -- Ready for War
	{	id	= 12593,	faction = AchieveIt.Factions.ALLIANCE},	-- Kul Tourist
	{	id	= 12479,	faction = AchieveIt.Factions.HORDE}, -- Zandalar Forever!
	12947, -- Azerothian Diplomat
	12989, -- Battle for Azeroth Pathfinder, Part One
	13250, -- Battle for Azeroth Pathfinder, Part Two

});

AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, L["Treasure"], {
	12995, -- Treasures of Drustvar
	12771, -- Treasures of Nazmir
	12853, -- Treasures of Stormsong Valley
	12852, -- Treasures of Tiragarde Sound
	12849, -- Treasures of Vol'dun
	12851, -- Treasures of Zuldazar
});

AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, AchieveIt.GetMapName(Zone.Drustvar), {
	12941, -- Adventurer of Drustvar
	13083, -- Better, Faster, Stronger
	13094, -- Cursed Game Hunter
	13064, -- Drust the Facts, Ma'am
	{ id = 13082, faction = AchieveIt.Factions.ALLIANCE}, -- Everything Old Is New Again
	12557, -- Explore Drustvar
	13087, -- Sausage Sampler
	12995, -- Treasures of Drustvar

});

AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, AchieveIt.GetMapName(Zone.Tiragarde_Sound), {
	12939, -- Adventurer of Tiragarde Sound
	12556, -- Explore Tiragarde Sound
	13058, -- Kul Tiran Up the Dance Floor
	13057, -- Shanty Raid
	12852, -- Treasures of Tiragarde Sound
});

AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, AchieveIt.GetMapName(Zone.Stormsong_Valley), {
	12940, -- Adventurer of Stormsong Valley
	12558, -- Explore Stormsong Valley
	13051, -- Legends of the Tidesages
	12853, -- Treasures of Stormsong Valley
});

AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, AchieveIt.GetMapName(Zone.Nazmir), {
	12942, -- Adventurer of Nazmir
	13024, -- Carved in Stone, Written in Blood
	12588, -- Eat Your Greens
	12561, -- Explore Nazmir
	13028, -- Hoppin' Sad
	12771, -- Treasures of Nazmir
});

AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, AchieveIt.GetMapName(Zone.Voldun), {
	12943, -- Adventurer of Vol'dun
	13018, -- Dune Rider
	12560, -- Explore Vol'dun
	13016, -- Scavenger of the Sands
	12849, -- Treasures of Vol'dun
});

AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, AchieveIt.GetMapName(Zone.Zuldazar), {
	12944, -- Adventurer of Zuldazar
	12559, -- Explore Zuldazar
	12851, -- Treasures of Zuldazar
});

AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, AchieveIt.GetMapName(Zone.Mechagon), {
	13470, -- Rest In Pistons
	13472, -- Deep Pockets
	13473, -- Diversified Investments
	13474, -- Junkyard Machinist
	13696, -- Scrappy's Best Friend
	13686, -- Junkyard Melomaniac
	13475, -- Junkyard Scavenger
	13555, -- Junkyard Tinkmaster
	13478, -- Junkyard Collector
	13556, -- Outside Influences
	13541, -- Mecha-Done
	13479, -- Junkyard Architect
	13477, -- Junkyard Apprentice
	13476, -- Junkyard Tinkerer
	13482, -- Head Financier of Mechagon

});


AchieveIt.Categories:addCategory(CatID.Exploration_BFAzeroth, AchieveIt.GetMapName(Zone.Nazjatar), {
	13712, -- Explore Nazjatar
	13635, -- Tour of the Depths
	13690, -- Nazjatarget Eliminated
	13691, -- I Thought You Said They'd Be Rare
	13692, -- Give Me the Biggest Bag You've Got
	13704, -- Nautical Battlefield Training
	13711, -- A Fistful of Manapearls
	13765, -- Subaquatic Support
	13549, -- Trove Tracker
	13722, -- Terror of the Tadpoles
	13699, -- Periodic Destruction
	13713, -- Nothing to Scry About
	13707, -- Mrrl's Secret Stash
	13763, -- Back to the Depths!
	13764, -- Puzzle Performer
	13836, -- Feline Figures Found
	13638, -- Undersea Usurper
	{ id = 13754, faction = AchieveIt.Factions.ALLIANCE}, -- Veteran: Bladesman Inowari
	{ id = 13755, faction = AchieveIt.Factions.ALLIANCE}, -- Veteran: Farseer Ori
	{ id = 13753, faction = AchieveIt.Factions.ALLIANCE}, -- Veteran: Hunter Akana
	{ id = 13758, faction = AchieveIt.Factions.ALLIANCE}, -- Battle-Scarred: Hunter Akana
	{ id = 13760, faction = AchieveIt.Factions.ALLIANCE}, -- Battle-Scarred: Farseer Ori
	{ id = 13759, faction = AchieveIt.Factions.ALLIANCE}, -- Battle-Scarred: Bladesman Inowari
	{ id = 13745, faction = AchieveIt.Factions.ALLIANCE}, -- Seasoned: Farseer Ori
	{ id = 13743, faction = AchieveIt.Factions.ALLIANCE}, -- Seasoned: Hunter Akana
	{ id = 13744, faction = AchieveIt.Factions.ALLIANCE}, -- Seasoned: Bladesman Inowari
	{ id = 13750, faction = AchieveIt.Factions.HORDE},  -- Battle-Scarred: Neri Sharpfin
	{ id = 13756, faction = AchieveIt.Factions.HORDE}, -- Battle-Scarred: Poen Gillbrack
	{ id = 13757, faction = AchieveIt.Factions.HORDE}, -- Battle-Scarred: Vim Brineheart
	{ id = 13749, faction = AchieveIt.Factions.HORDE}, -- Veteran: Neri Sharpfin
	{ id = 13752, faction = AchieveIt.Factions.HORDE}, -- Veteran: Vim Brineheart
	{ id = 13751, faction = AchieveIt.Factions.HORDE}, -- Veteran: Poen Gillbrack
	{ id = 13746, faction = AchieveIt.Factions.HORDE}, -- Seasoned: Neri Sharpfin
	{ id = 13747, faction = AchieveIt.Factions.HORDE}, -- Seasoned: Poen Gillbrack
	{ id = 13748, faction = AchieveIt.Factions.HORDE}, -- Seasoned: Vim Brineheart
	{ id = 13761, faction = AchieveIt.Factions.HORDE}, -- Aqua Team Murder Force
	{ id = 13762, faction = AchieveIt.Factions.ALLIANCE}, -- Aqua Team Murder Force
	{ id = 13645, faction = AchieveIt.Factions.HORDE}, -- Nautical Battlefield Training

});


-----------------
-- Shadowlands --
-----------------

AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, L["Map"], {
	14304, -- Explore Ardenweald
	14303, -- Explore Bastion
	14306, -- Explore Revendreth
	14305, -- Explore Maldraxxus
	14663, -- Explore The Maw
	15053, -- Explore Korthia
	14825, -- Explorer of the Shadowlands

});

--[[ AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, L["Lore"], {

});
 ]]

--[[ AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, L["Pathfinder"], {


});
 ]]

AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, L["Treasure"], {
	14313, -- Treasures of Ardenweald
	14311, -- Treasures of Bastion
	14314, -- Treasures of Revendreth
	14312, -- Treasures of Maldraxxus

});

AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, AchieveIt.GetMapName(Zone.Ardenweald), {
	14309, -- Adventurer of Ardenweald
	14304, -- Explore Ardenweald
	14313, -- Treasures of Ardenweald
	14509, -- Astra, As Azshara
	14510, -- Dreamweaver, As N'Zoth
	14508, -- Glimmerdust, As Jaina
	14506, -- Glimmerdust, As Kil'jaeden
	14507, -- Mi'kai, As Argus
	14504, -- Niya, As Xavius
	14505, -- Senthii, As Gul'dan
	14353, -- Ardenweald's a Stage
	14774, -- Ardenweald Gourmand
	14779, -- Wild Hunting
	14788, -- Fractured Faerie Tales
	14791, -- Toss a Seed to Your Hunter...

});

AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, AchieveIt.GetMapName(Zone.Bastion), {
	14307, -- Adventurer of Bastion
	14303, -- Explore Bastion
	14311, -- Treasures of Bastion
	14339, -- Shard Labor
	14733, -- In the Hot Seat
	14734, -- Rallying Cry of the Ascended
	14767, -- Count Your Blessings
	14768, -- What is that Melody?

});

AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, AchieveIt.GetMapName(Zone.Maldraxxus), {
	14308, -- Adventurer of Maldraxxus
	14305, -- Explore Maldraxxus
	14312, -- Treasures of Maldraxxus
	14626, -- Harvester of Sorrow
	14634, -- Nine Afterlives
	14721, -- It's In The Mix
	14763, -- Crypt Couture
	14802, -- Bloodsport

});

AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, AchieveIt.GetMapName(Zone.Revendreth), {
	14310, -- Adventurer of Revendreth
	14306, -- Explore Revendreth
	14314, -- Treasures of Revendreth
	14769, -- Bat!
	14272, -- Best Bud With Benefits
	14273, -- Crypt Kicker
	14274, -- Absolution for All
	14276, -- It's Always Sinny in Revendreth
	14277, -- The Accuser's Avowed
	14770, -- What We Ride in the Shadows
	14771, -- The Afterlife Express

});

AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, AchieveIt.GetMapName(Zone.TheMaw), {
	14663, -- Explore The Maw
	14658, -- Soulkeeper's Burden
	14943, -- Guarmageddon
	14659, -- Handling His Henchmen
	14660, -- It's About Sending a Message
	14738, -- Hunting Party
	14742, -- Who Sent You?
	14743, -- Deadly Serious
	14744, -- Better to Be Lucky Than Dead
	14745, -- Grand Theft Shadehound
	14746, -- Prepare for Trouble!
	14747, -- Make it Double!
	15054, -- Minions of the Cold Dark
	14761, -- Deciphering Death's Intentions
	14894, -- To 'Ghast, Two Curios
	14895, -- 'Ghast Five

});

AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, AchieveIt.GetMapName(Zone.Korthia), {

	15053, -- Explore Korthia
	15099, -- Treasures of Korthia
	
});

AchieveIt.Categories:addCategory(CatID.Exploration_Shadowlands, AchieveIt.GetMapName(Zone.ZerethMortis), {

	15391, -- Adventurer of Zereth Mortis
	15512, -- Adventures in Zereth Mortis
	15542, -- Apocopocolypse
	15211, -- Completing the Code
	15404, -- Cosmic Empowerment
	15513, -- Curious Collections
	15402, -- Cyphers of the First Ones
	15392, -- Dune Dominance
	15224, -- Explore Zereth Mortis
	15508, -- Fashion of the First Ones
	15502, -- Sand, Sand Everywhere!
	15406, -- Synthesized
	15407, -- Synthe-fived!
	15410, -- Synthe-superfived
	15411, -- Synthe-supersized
	15509, -- Tales of the Exile
	15229, -- Traversing the Spheres
	15331, -- Treasures of Zereth Mortis
	15514, -- Unlocking the Secrets
	
});