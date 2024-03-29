------------------------------------------
-- Dungeons & Raids - Lich King Dungeon --
------------------------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local wotlk_dungeon_ids = {
	132, -- Ahn'kahet: The Old Kingdom
	157, -- Azjol-Nerub - The Brood Pit
	158, -- Azjol-Nerub - Hadronox's Lair
	159, -- Azjol-Nerub - The Gilded Gate
	160, -- Drak'Tharon Keep - The Vestibules of Drak'Tharon
	161, -- Drak'Tharon Keep - Drak'Tharon Overlook
	154, -- Gundrak
	138, -- Halls of Lightning - Unyielding Garrison
	139, -- Halls of Lightning - Walk of the Makers
	185, -- Halls of Reflection
	140, -- Halls of Stone	Dungeon	The Storm Peaks	view
	823, -- Pit of Saron
	130, -- The Culling of Stratholme - The Culling of Stratholme
	131, -- The Culling of Stratholme - Stratholme City
	183, -- The Forge of Souls
	129, -- The Nexus
	142, -- The Oculus	Orphan
	143, -- The Oculus - Band of Variance
	144, -- The Oculus - Band of Acceleration
	145, -- The Oculus - Band of Transmutation
	146, -- The Oculus - Band of Alignment
	168, -- The Violet Hold
	171, -- Trial of the Champion
	133, -- Utgarde Keep - Njorndir Preparation
	134, -- Utgarde Keep - Dragonflayer Ascent
	135, -- Utgarde Keep - Tyr's Terrace
	136, -- Utgarde Pinnacle - Lower Pinnacle
	137, -- Utgarde Pinnacle - Upper Pinnacle
}

local naxx_raid_ids = {
	162, -- Naxxramas - The Construct Quarter
	163, -- Naxxramas - The Arachnid Quarter
	164, -- Naxxramas - The Military Quarter
	165, -- Naxxramas - The Plague Quarter
	166, -- Naxxramas - The Lower Necropolis
	167, -- Naxxramas - The Upper Necropolis
}

local ulduar_raid_ids={
	147, -- Ulduar - Ulduar
	148, -- Ulduar - The Antechamber of Ulduar
	149, -- Ulduar - The Inner Sanctum of Ulduar
	150, -- Ulduar - The Prison of Yogg-Saron
	151, -- Ulduar - The Spark of Imagination
	152, -- Ulduar - The Mind's Eye
}

local icc_raid_ids={
	186, -- Icecrown Citadel - The Lower Citadel
	187, -- Icecrown Citadel - The Rampart of Skulls
	188, -- Icecrown Citadel - Deathbringer's Rise
	189, -- Icecrown Citadel - The Frost Queen's Lair
	190, -- Icecrown Citadel - The Upper Reaches
	191, -- Icecrown Citadel - Royal Quarters
	192, -- Icecrown Citadel - The Frozen Throne
	193, -- Icecrown Citadel - Frostmourne
}

AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Glory"], {
	2136,	-- Glory of the Hero
});

---------------------------
-- Dungeons Sub Category --
---------------------------

AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, Difficulty.Normal, {
	481,	-- Ahn'kahet: The Old Kingdom
	480,	-- Azjol-Nerub
	482,	-- Drak'Tharon Keep
	484,	-- Gundrak
	486,	-- Halls of Lightning
	4518,	-- Halls of Reflection
	485,	-- Halls of Stone
	4517,	-- Pit of Saron
	479,	-- The Culling of Stratholme
	4516,	-- The Forge of Souls
	478,	-- The Nexus
	487,	-- The Oculus
	483,	-- The Violet Hold
	{ id = 3778, faction = AchieveIt.Factions.HORDE },	-- Trial of the Champion
	{ id = 4296, faction = AchieveIt.Factions.ALLIANCE },	-- Trial of the Champion
	477,	-- Utgarde Keep
	488,	-- Utgarde Pinnacle
}).locate = function()

	return	AchieveIt:Contains(wotlk_dungeon_ids,C_Map.GetBestMapForUnit("player")) and
			AchieveIt.difficulty.isDungeon();

end;


AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, Difficulty.Heroic, {
	492,	-- Heroic: Ahn'kahet: The Old Kingdom
	491,	-- Heroic: Azjol-Nerub
	493,	-- Heroic: Drak'Tharon Keep
	495,	-- Heroic: Gundrak
	497,	-- Heroic: Halls of Lightning
	4521,	-- Heroic: Halls of Reflection
	496,	-- Heroic: Halls of Stone
	4520,	-- Heroic: Pit of Saron
	500,	-- Heroic: The Culling of Stratholme
	4519,	-- Heroic: The Forge of Souls
	490,	-- Heroic: The Nexus
	498,	-- Heroic: The Oculus
	494,	-- Heroic: The Violet Hold
	{ id = 4297, faction = AchieveIt.Factions.HORDE },	-- Heroic: Trial of the Champion
	{ id = 4298, faction = AchieveIt.Factions.ALLIANCE },	-- Heroic: Trial of the Champion
	489,	-- Heroic: Utgarde Keep
	499,	-- Heroic: Utgarde Pinnacle
}).locate = function()

	return 	AchieveIt:Contains(wotlk_dungeon_ids,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isHeroicDungeon();

end;


--------------------------------
-- Ahn'kahet: The Old Kingdom --
--------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Ahn'kahet: The Old Kingdom"], {
	481,	-- Ahn'kahet: The Old Kingdom
	492,	-- Heroic: Ahn'kahet: The Old Kingdom
});

category:addChild(L["Elder Nadox"], {
	2038,	-- Respect Your Elders
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and	
			UnitName("target") == L["Elder Nadox"];

end;

category:addChild(L["Jedoga Shadowseeker"], {
	2056,	-- Volunteer Work
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Jedoga Shadowseeker"];

end;

category:addChild(L["Herald Volazj"], {
	1862,	-- Volazj's Quick Demise
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Herald Volazj"];

end;

category:inheritAchievements();

-----------------
-- Azjol-Nerub --
-----------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Azjol-Nerub"], {
	480,	-- Azjol-Nerub
	491,	-- Heroic: Azjol-Nerub
});

category:addChild(L["Krik'thir the Gatewatcher"], {
	1296,	-- Watch Him Die
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Krik'thir the Gatewatcher"];

end;

category:addChild(L["Hadronox"], {
	1297,	-- Hadronox Denied
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Hadronox"];

end;

category:addChild(L["Anub'arak"], {
	1860,	-- Gotta Go!
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Anub'ara"];

end;

category:inheritAchievements();

----------------------
-- Drak'Tharon Keep --
----------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Drak'Tharon Keep"], {
	482,	-- Drak'Tharon Keep
	493,	-- Heroic: Drak'Tharon Keep
});

category:addChild(L["Trollgore"], {
	2151,	-- Consumption Junction
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Trollgore"];

end;

category:addChild(L["Novos the Summoner"], {
	2057,	-- Oh Novos!
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Novos the Summoner"];

end;

category:addChild(L["King Dred"], {
	2039,	-- Better Off Dred
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["King Dred"];

end;

category:inheritAchievements();

-------------
-- Gundrak --
-------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Gundrak"], {
	484,	-- Gundrak
	495,	-- Heroic: Gundrak
});

category:addChild(L["Slad'ran"], {
	2058,	-- Snakes. Why'd It Have To Be Snakes?
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Slad'ran"];

end;

category:addChild(L["Moorabi"], {
	2040,	-- Less-rabi
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Moorabi"];

end;

category:addChild(L["Eck the Ferocious"], {
	1864,	-- What the Eck?
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Eck the Ferocious"];

end;

category:addChild(L["Gal'darah"], {
	2152,	-- Share The Love
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Gal'darah"];

end;

category:inheritAchievements();

------------------------
-- Halls of Lightning --
------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Halls of Lightning"], {
	486,	-- Halls of Lightning
	497,	-- Heroic: Halls of Lightning
});

category:addChild(L["General Bjarngrim"], {
	1834,	-- Lightning Struck
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["General Bjarngrim"];

end;

category:addChild(L["Volkhan"], {
	2042,	-- Shatter Resistant
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Volkhan"];

end;

category:addChild(L["Loken"], {
	1867,	-- Timely Death
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Loken"];

end;

category:inheritAchievements();

-------------------------
-- Halls of Reflection --
-------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Halls of Reflection"], {
	4518,	-- The Halls of Reflection
	4521,	-- Heroic: The Halls of Reflection
});

category:addChild(L["The Lich King"], {
	4526,	-- We're Not Retreating; We're Advancing in a Different Direction.
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["The Lich King"];

end;

category:inheritAchievements();

--------------------
-- Halls of Stone --
--------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Halls of Stone"], {
	485,	-- Halls of Stone
	496,	-- Heroic: Halls of Stone
});

category:addChild(L["Maiden of Grief"], {
	1866,	-- Good Grief
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Maiden of Grief"];

end;

category:addChild(L["The Tribunal of Ages"], {
	2154,	-- Brann Spankin' New
});

category:addChild(L["Sjonnir The Ironshaper"], {
	2155,	-- Abuse the Ooze
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Sjonnir The Ironshaper"];

end;

category:inheritAchievements();

------------------
-- Pit of Saron --
------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Pit of Saron"], {
	4517,	-- The Pit of Saron
	4520,	-- Heroic: The Pit of Saron
});

category:addChild(L["Forgemaster Garfrost"], {
	4524,	-- Doesn't Go to Eleven
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Forgemaster Garfrost"];

end;

category:addChild(L["Scourgelord Tyrannus"], {
	4525,	-- Don't Look Up
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Scourgelord Tyrannus"];

end;

category:inheritAchievements();

-------------------------------
-- The Culling of Stratholme --
-------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["The Culling of Stratholme"], {
	479,	-- The Culling of Stratholme
	500,	-- Heroic: The Culling of Stratholme
	1872,	-- Zombiefest!
});

category:addChild(L["Infinite Corruptor"], {
	1817,	-- The Culling of Time
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Infinite Corruptor"];

end;


category:inheritAchievements();

------------------------
-- The Forge of Souls --
------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["The Forge of Souls"], {
	4516,	-- The Forge of Souls
	4519,	-- Heroic: The Forge of Souls
});

category:addChild(L["Bronjahm"], {
	4522,	-- Soul Power
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Bronjahm"];

end;

category:addChild(L["Devourer of Souls"], {
	4523,	-- Three Faced
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Devourer of Souls"];

end;

category:inheritAchievements();

---------------
-- The Nexus --
---------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["The Nexus"], {
	478,	-- The Nexus
	490,	-- Heroic: The Nexus
});


category:addChild(L["Grand Magus Telestra"], {
	2150,	-- Split Personality
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Grand Magus Telestra"];

end;

category:addChild(L["Anomalus"], {
	2037,	-- Chaos Theory
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Anomalus"];

end;

category:addChild(L["Keristrasza"], {
	2036,	-- Intense Cold
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Keristrasza"];

end;

category:inheritAchievements();

----------------
-- The Oculus --
----------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["The Oculus"], {
	487,	-- The Oculus
	498,	-- Heroic: The Oculus
});

category:addChild(L["Ley-Guardian Eregos"], {
	1868,	-- Make It Count
	1871,	-- Experienced Drake Rider
	2036,	-- Intense Cold
	2046,	-- Amber Void
	2045,	-- Emerald Void
	2044,	-- Ruby Void
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Ley-Guardian Eregos"];

end;

category:inheritAchievements();

---------------------
-- The Violet Hold --
---------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["The Violet Hold"], {
	483,	-- The Violet Hold
	494,	-- Heroic: The Violet Hold
	1865,	-- Lockdown!
});

category:addChild(L["Zuramat the Obliterator"], {
	2153,	-- A Void Dance
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Zuramat the Obliterator"];

end;

category:addChild(L["Ichoron"], {
	2041,	-- Dehydration
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Ichoron"];

end;

category:addChild(L["Cyanigosa"], {
	1816,	-- Defenseless
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Cyanigosa"];

end;

category:inheritAchievements();

---------------------------
-- Trial of the Champion --
---------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Trial of the Champion"], {
	{ id = 3778, faction = AchieveIt.Factions.HORDE },	-- Trial of the Champion
	{ id = 4296, faction = AchieveIt.Factions.ALLIANCE },	-- Trial of the Champion
	{ id = 4297, faction = AchieveIt.Factions.HORDE },	-- Heroic: Trial of the Champion
	{ id = 4298, faction = AchieveIt.Factions.ALLIANCE },	-- Heroic: Trial of the Champion
});

category:addChild(L["Argent Confessor Paletress"], {
	3802,	-- Argent Confessor
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Argent Confessor Paletress"];

end;

category:addChild(L["Eadric the Pure"], {
	3803,	-- The Faceroller
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Eadric the Pure"];

end;

category:addChild(L["The Black Knight"], {
	3804,	-- I've Had Worse
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["The Black Knight"];

end;

category:inheritAchievements();

------------------
-- Urgarde Keep --
------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Utgarde Keep"], {
	477,	-- Utgarde Keep
	489,	-- Heroic: Utgarde Keep
});

category:addChild(L["Prince Keleseth"], {
	1919,	-- On The Rocks
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Prince Keleseth"];

end;

category:inheritAchievements();

---------------------
-- Urgarde Pinacle --
---------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_WrathOfTheLichKing, L["Utgarde Pinnacle"], {
	488,	-- Utgarde Pinnacle
	499,	-- Heroic: Utgarde Pinnacle
});

category:addChild(L["Svala Sorrowgrave"], {
	2043,	-- The Incredible Hulk
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Svala Sorrowgrave"];

end;

category:addChild(L["Skadi the Ruthless"], {
	1873,	-- Lodi Dodi We Loves the Skadi
	2156,	-- My Girl Loves to Skadi All the Time
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["Skadi the Ruthless"];

end;

category:addChild(L["King Ymiron"], {
	2157,	-- King's Bane
}).locate = function() 
	
	return	AchieveIt.difficulty.isHeroicDungeon() and			
			UnitName("target") == L["King Ymiron"];

end;

category:inheritAchievements();

------------------------
-- Raids Sub Category --
------------------------

AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["Glory"], {
	2137,	-- Glory of the Raider 10 Player
	2138,	-- Glory of the Raider 25 Player
	12401,	-- Glory of the Ulduar Raider
	4602,	-- Glory of the Icecrown Raider 10 Player
	4603,	-- Glory of the Icecrown Raider 25 Player
});

AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, _G["RAID_DIFFICULTY_10PLAYER"], {
	1722,	-- Archavon 10 Player
	3136,	-- Emalon 10 Player
	3836,	-- Koralon 10 Player
	4585,	-- Toravon 10 Player
	576,	-- Naxxramas 10 Player
	1876,	-- The Obsidium Sanctum 10 Player
	622,	-- The Eye of Eternity 10 Player
	3917,	-- Trial of the Crusader 10 Player
	3918,	-- Trial of the Grand Crusader 10 Player
	4532,	-- Icecrown Citadel 10 Player
	4636,	-- Icecrown Citadel Heroic 10 Player
	4817,	-- Ruby Sanctum 10 Player
	4818,	-- Ruby Sanctum Heroic 10 Player
});

AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, _G["RAID_DIFFICULTY_25PLAYER"], {
	1721,	-- Archavon 25 Player
	3137,	-- Emalon 25 Player
	3837,	-- Koralon 25 Player
	4586,	-- Toravon 25 Player
	577,	-- Naxxramas 25 Player
	625,	-- The Obsidium Sanctum 25 Player
	623,	-- The Eye of Eternity 25 Player
	3916,	-- Trial of the Crusader 25 Player
	3812,	-- Trial of the Grand Crusader 25 Player
	4608,	-- Icecrown Citadel 25 Player
	4637,	-- Icecrown Citadel Heroic 25 Player
	4815,	-- Ruby Sanctum 25 Player
	4816,	-- Ruby Sanctum Heroic 25 Player
});

--------------------------------
-- Vault of Archavon Category --
--------------------------------

local vaultOfArchavonCategory = AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["Vault of Archavon"]);

vaultOfArchavonCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	1722,	-- Archavon
	3136,	-- Emalon
	3836,	-- Koralon
	4585,	-- Toravon
	4016,	-- Earth, Wind & Fire
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is10PlayerRaid() and
			Zone.Vault_of_Archavon == p_current_map;

end;


vaultOfArchavonCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	1721,	-- Archavon
	3137,	-- Emalon
	3837,	-- Koralon
	4586,	-- Toravon
	4017,	-- Earth, Wind & Fire
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is25PlayerRaid() and
			Zone.Vault_of_Archavon == p_current_map;

end;

vaultOfArchavonCategory:inheritAchievements();

------------------------
-- Naxxramas Category --
------------------------

local naxxramasCategory = AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["Naxxramas"]);

local naxxZones = naxxramasCategory:addChild((L["Glory"]), {
	2137,	-- Glory of the Raider 10 Player
	2138,	-- Glory of the Raider 25 Player
});

local naxxZones = naxxramasCategory:addChild(L["Progress"]);

naxxZones:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	576,	-- Fall of Naxxramas
	562,	-- Arachnid Quarter
	566,	-- Plague Quarter
	568,	-- Military Quarter
	564,	-- Construct Quarter
	572,	-- Sapphiron's Demise
	574,	-- Kelthuzad's Defeat
	578,	-- The Dedicated Few
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
				AchieveIt:Contains(naxx_raid_ids,C_Map.GetBestMapForUnit("player"));

end;

naxxZones:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	577,	-- Fall of Naxxramas
	563,	-- Arachnid Quarter
	567,	-- Plague Quarter
	569,	-- Military Quarter
	565,	-- Construct Quarter
	573,	-- Sapphiron's Demise
	575,	-- Kelthuzad's Defeat
	579,	-- The Dedicated Few
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is25PlayerRaid() and
			AchieveIt:Contains(naxx_raid_ids,C_Map.GetBestMapForUnit("player")) ;

end;

naxxZones:inheritAchievements();

local naxxAnubrekhanCategory = naxxramasCategory:addChild(L["Anub'Rekhan"]);

naxxAnubrekhanCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	1858,	-- Arachnophobia
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Anub'Rekhan"];

end;

naxxAnubrekhanCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	1859,	-- Arachnophobia
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Anub'Rekhan"];

end;

naxxAnubrekhanCategory:inheritAchievements();

local naxxFaerlinaCategory = naxxramasCategory:addChild(L["Grand Widow Faerlina"]);

naxxFaerlinaCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	1997,	-- Momma Said Knock You Out
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Grand Widow Faerlina"];

end;

naxxFaerlinaCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	2140,	-- Momma Said Knock You Out
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Grand Widow Faerlina"];

end;

naxxFaerlinaCategory:inheritAchievements();

local naxxMaexxnaCategory = naxxramasCategory:addChild(L["Maexxna"]);

naxxMaexxnaCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	1858,	-- Arachnophobia
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Maexxna"];

end;

naxxMaexxnaCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	1859,	-- Arachnophobia
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Maexxna"];

end;

naxxMaexxnaCategory:inheritAchievements();

local naxxHeiganCategory = naxxramasCategory:addChild(L["Heigan the Unclean"]);

naxxHeiganCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	1996,	-- Safety Dance
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Heigan the Unclean"];

end;

naxxHeiganCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	2139,	-- Safety Dance
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Heigan the Unclean"];

end;

naxxHeiganCategory:inheritAchievements();

local naxxLoathebCategory = naxxramasCategory:addChild(L["Loatheb"]);

naxxLoathebCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	2182,	-- Spore Loser
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Loatheb"];

end;

naxxLoathebCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	2183,	-- Spore Loser
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Loatheb"];

end;

naxxLoathebCategory:inheritAchievements();

local naxxHorsemenCategory = naxxramasCategory:addChild(L["The Four Horsemen"]);

naxxHorsemenCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	2176,	-- And They Would All Go Down Together
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			(UnitName("target") == L["Baron Rivendare"] or
			UnitName("target") == L["Lady Blaumeux"] or
			UnitName("target") == L["Sir Zeliek"] or
			UnitName("target") == L["Thane Korth'azz"]);

end;

naxxHorsemenCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	2177,	-- And They Would All Go Down Together
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			(UnitName("target") == L["Baron Rivendare"] or
			UnitName("target") == L["Lady Blaumeux"] or
			UnitName("target") == L["Sir Zeliek"] or
			UnitName("target") == L["Thane Korth'azz"]);

end;

naxxHorsemenCategory:inheritAchievements();

local naxxPatchwerkCategory = naxxramasCategory:addChild(L["Patchwerk"]);

naxxPatchwerkCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	1856,	-- Make Quick Werk of Him
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Patchwerk"];

end;

naxxPatchwerkCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	1857,	-- Make Quick Werk of Him
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Patchwerk"];

end;

naxxPatchwerkCategory:inheritAchievements();

local naxxThaddiusCategory = naxxramasCategory:addChild(L["Thaddius"]);

naxxThaddiusCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	2178,	-- Shocking!
	2180,	-- Subtraction
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Thaddius"];

end;

naxxThaddiusCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	2179,	-- Shocking!
	2181,	-- Subtraction
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Thaddius"];

end;

naxxThaddiusCategory:inheritAchievements();

local naxxSapphironCategory = naxxramasCategory:addChild(L["Sapphiron"]);

naxxSapphironCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	572,	-- Sapphiron's Demise!
	2146,	-- The Hundred Club
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Sapphiron"];

end;

naxxSapphironCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	573,	-- Sapphiron's Demise!
	2147,	-- The Hundred Club
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Sapphiron"];

end;

naxxSapphironCategory:inheritAchievements();

local naxxKelthuzadCategory = naxxramasCategory:addChild(L["Kel'Thuzad"]);

naxxKelthuzadCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	574,	-- Kel'Thuzad's Defeat
	2184,	-- Just Can't Get Enough
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Kel'Thuzad"];

end;

naxxKelthuzadCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	575,	-- Kel'Thuzad's Defeat
	2185,	-- Just Can't Get Enough
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Kel'Thuzad"];

end;

naxxKelthuzadCategory:inheritAchievements();

naxxramasCategory:inheritAchievements();

-----------------------------------
-- The Obsidian Sanctum Category --
-----------------------------------

local obsidianSanctumCategory = AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["The Obsidian Sanctum"]);

obsidianSanctumCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	1876,	-- Besting the Black Dragonflight
	2047,	-- Gonna Go When the Volcano Blows
	624,	-- Less Is More
	2049,	-- Twilight Assist
	2050,	-- Twilight Duo
	2051,	-- The Twilight Zone
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is10PlayerRaid() and
			Zone.Obsidium_Sanctum == p_current_map;

end;

obsidianSanctumCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	625,	-- Besting the Black Dragonflight
	2048,	-- Gonna Go When the Volcano Blows
	1877,	-- Less Is More
	2052,	-- Twilight Assist
	2053,	-- Twilight Duo
	2054,	-- The Twilight Zone
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is25PlayerRaid() and
			Zone.Obsidium_Sanctum == p_current_map;

end;

obsidianSanctumCategory:inheritAchievements();

----------------------------------
-- The Eye of Eternity Category --
----------------------------------

local eyeCategory = AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["The Eye of Eternity"]);

eyeCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	622,	-- The Spellweaver's Downfall
	1869,	-- A Poke in the Eye
	2148,	-- Denyin' the Scion
	1874,	-- You Don't Have an Eternity
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is10PlayerRaid() and
			Zone.The_Eye_of_Eternity == p_current_map;

end;

eyeCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	623,	-- The Spellweaver's Downfall
	1870,	-- A Poke in the Eye
	2149,	-- Denyin' the Scion
	1875,	-- You Don't Have an Eternity
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is25PlayerRaid() and
			Zone.The_Eye_of_Eternity == p_current_map;

end;

eyeCategory:inheritAchievements();

---------------------
-- Ulduar Category --
---------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["Ulduar"]);

category:addChild(L["Glory"], {
	12401,	-- Glory of the Ulduar Raider
});

category:addChild(L["Progress"], {
	12297,	-- The Siege of Ulduar
	12302,	-- The Antechamber of Ulduar
	12309,	-- The Keepers of Ulduar
	12310,	-- The Descent into Madness
	12311,	-- The Secrets of Ulduar
	12399,	-- Observed
}).locate = function()

	return	not AchieveIt.difficulty.isRaidFinder() and
			AchieveIt:Contains(ulduar_raid_ids,C_Map.GetBestMapForUnit("player"));

end;

category:addChild(L["Flame Leviathan"], {
	12312,	-- Dwarfageddon
	12319,	-- Nuked from Orbit
	12320,	-- Orbit-uary
	12317,	-- Orbital Bombardment
	12318,	-- Orbital Devastation
	12316,	-- Shutout
	12315,	-- Take Out Those Turrets
	12314,	-- Three Car Garage
	12313,	-- Unbroken
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Flame Leviathan"];

end;

category:addChild(L["Ignis the Furnace Master"], {
	12324,	-- Hot Pocket
	12323,	-- Shattered
	12325,	-- Stokin' the Furnace
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Ignis the Furnace Master"];

end;

category:addChild(L["Razorscale"], {
	12321,	-- A Quick Shave
	12322,	-- Iron Dwarf, Medium Rare
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Razorscale"];

end;

category:addChild(L["XT-002 Deconstructor"], {
	12330,	-- Heartbreaker
	12329,	-- Must Deconstruct Faster
	12326,	-- Nerf Engineering
	12328,	-- Nerf Gravity Bombs
	12327,	-- Nerf Scrapbots
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["XT-002 Deconstructor"];

end;

category:addChild(L["Assembly of Iron"], {
	12335,	-- But I'm On Your Side
	12336,	-- Can't Do That While Stunned
	12332,	-- I Choose You, Runemaster Molgeim
	12334,	-- I Choose You, Steelbreaker
	12333,	-- I Choose You, Stormcaller Brundir
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Runemaster Molgeim"] or
			UnitName("target") == L["Steelbreaker"] or
			UnitName("target") == L["Stormcaller Brundir"]);

end;

category:addChild(L["Kologarn"], {
	12338,	-- Disarmed
	12339,	-- If Looks Could Kill
	12340,	-- Rubble and Roll
	12337,	-- With Open Arms
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Kologarn"];

end;

category:addChild(L["Auriaya"], {
	12341,	-- Crazy Cat Lady
	12342,	-- Nine Lives
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Auriaya"];

end;

category:addChild(L["Algalon the Observer"], {
	12399,	-- Observed
	12400,	-- Supermassive
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Algalon the Observer"];

end;

category:addChild(L["Freya"], {
	12361,	-- Con-speed-atory
	12362,	-- Deforestation
	12363,	-- Getting Back to Nature
	12364,	-- Knock on Wood
	12365,	-- Knock, Knock on Wood
	12366,	-- Knock, Knock, Knock on Wood
	12360,	-- Lumberjacked
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Freya"];

end;

category:addChild(L["Hodir"], {
	12343,	-- Cheese the Freeze
	12345,	-- Getting Cold in Here
	12347,	-- I Could Say That This Cache Was Rare
	12344,	-- I Have the Coolest Friends
	12346,	-- Staying Buffed All Winter
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Hodir"];

end;

category:addChild(L["Mimiron"], {
	12369,	-- Firefighter
	12368,	-- Not-So-Friendly Fire
	12367,	-- Set Up Us the Bomb
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Mimiron"];

end;

category:addChild(L["Thorim"], {
	12348,	-- Don't Stand in the Lightning
	12349,	-- I'll Take You All On
	12352,	-- Lose Your Illusion
	12351,	-- Siffed
	12350,	-- Who Needs Bloodlust?
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Thorim"];

end;

category:addChild(L["General Vezax"], {
	12373,	-- I Love the Smell of Saronite in the Morning
	12372,	-- Shadowdodger
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["General Vezax"];

end;

category:addChild(L["Yogg-Saron"], {
	12388,	-- Alone in the Darkness
	12387,	-- One Light in the Darkness
	12386,	-- Two Lights in the Darkness
	12385,	-- Three Lights in the Darkness
	12395,	-- Drive Me Crazy
	12396,	-- He's Not Getting Any Older
	12398,	-- In His House He Waits Dreaming
	12384,	-- Kiss and Make Up
	12397,	-- They're Coming Out of the Walls
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Yogg-Saron"];

end;

category:inheritAchievements();

------------------------------------
-- Trial of the Crusader Category --
------------------------------------

local trialCategory = AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["Trial of the Crusader"]);

local bossCategory = trialCategory:addChild(L["Progress"], {});

bossCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	3917,	-- Call of the Crusade (10 Player)
	3918,	-- Call of the Grand Crusade (10 player)
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is10PlayerRaid() and
			Zone.Trial_of_the_Crusader == p_current_map;

end;

bossCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	3916,	-- Call of the Crusade (25 player)
	3812,	-- Call of the Grand Crusade (25 player)
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is25PlayerRaid() and
			Zone.Trial_of_the_Crusader == p_current_map;
	
end;

bossCategory:inheritAchievements();

local beastsCategory = trialCategory:addChild(L["The Northrend Beasts"], {});

beastsCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	3936,	-- Not One, But Two Jormungars
	3797,	-- Upper Back Pain
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			(UnitName("target") == L["Acidmaw"] or
			UnitName("target") == L["Dreadscale"] or
			UnitName("target") == L["Gormok the Impaler"] or
			UnitName("target") == L["Icehowl"]);

end;

beastsCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	3937,	-- Not One, But Two Jormungars
	3813,	-- Upper Back Pain
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			(UnitName("target") == L["Acidmaw"] or
			UnitName("target") == L["Dreadscale"] or
			UnitName("target") == L["Gormok the Impaler"] or
			UnitName("target") == L["Icehowl"]);

end;

beastsCategory:inheritAchievements();

local jaraxxusCategory = trialCategory:addChild(L["Lord Jaraxxus"], {});

jaraxxusCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	3996,	-- Three Sixty Pain Spike
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Lord Jaraxxus"];

end;

jaraxxusCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	3997,	-- Three Sixty Pain Spike
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Lord Jaraxxus"];

end;

jaraxxusCategory:inheritAchievements();

if UnitFactionGroup("player") == "Horde" then 

local factionChampionsCategory = trialCategory:addChild(L["Faction Champions_A"], {});

factionChampionsCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	3798,	-- Resilience Will Fix It
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			(UnitName("target") == L["Alyssia Moonstalker"] or
			UnitName("target") == L["Anthar Forgemender"] or
			UnitName("target") == L["Baelnor Lightbearer"] or
			UnitName("target") == L["Brienna Nightfell"] or
			UnitName("target") == L["Irieth Shadowstep"] or
			UnitName("target") == L["Kavina Grovesong"] or
			UnitName("target") == L["Melador Valestrider"] or
			UnitName("target") == L["Noozle Whizzlestick"] or
			UnitName("target") == L["Saamul"] or
			UnitName("target") == L["Serissa Grimdabbler"] or
			UnitName("target") == L["Shaabad"] or
			UnitName("target") == L["Shocuul"] or
			UnitName("target") == L["Tyrius Duskblade"] or
			UnitName("target") == L["Velanaa"]);

end;

factionChampionsCategory:inheritAchievements();

else
 
local factionChampionsCategory = trialCategory:addChild(L["Faction Champions_H"], {});


factionChampionsCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	3798,	-- Resilience Will Fix It
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			(UnitName("target") == L["Birana Stormhoof"] or
			UnitName("target") == L["Broln Stouthorn"] or
			UnitName("target") == L["Caiphus the Stern"] or
			UnitName("target") == L["Erin Misthoof"] or
			UnitName("target") == L["Ginselle Blightslinger"] or
			UnitName("target") == L["Gorgrim Shadowcleave"] or
			UnitName("target") == L["Harkzog"] or
			UnitName("target") == L["Liandra Suncaller"] or
			UnitName("target") == L["Malithas Brightblade"] or
			UnitName("target") == L["Maz'dinah"] or
			UnitName("target") == L["Narrhok Steelbreaker"] or
			UnitName("target") == L["Ruj'kah"] or
			UnitName("target") == L["Thrakgar"] or
			UnitName("target") == L["Vivienne Blackwhisper"]);

end;

factionChampionsCategory:inheritAchievements();

end;

local twinValkyrCategory = trialCategory:addChild(L["The Twin Val'kyr"], {});

twinValkyrCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	3799,	-- Salt and Pepper
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			(UnitName("target") == L["Eydis"] or
			UnitName("target") == L["Fjola"]);

end;

twinValkyrCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	3815,	-- Salt and Pepper
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			(UnitName("target") == L["Eydis"] or
			UnitName("target") == L["Fjola"]);

end;

twinValkyrCategory:inheritAchievements();

local anubarakCategory = trialCategory:addChild(L["Anub'arak"], {});

anubarakCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	3800,	-- The Traitor King
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Anub'arak"];

end;

anubarakCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	3816,	-- The Traitor King
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Anub'arak"];

end;

anubarakCategory:inheritAchievements();

trialCategory:inheritAchievements();

------------------------------
-- Onyxia's Lair Category --
------------------------------

local onyxiaCategory = AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["Onyxia's Lair"]);

onyxiaCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4396,	-- Onyxia's Lair
	4404,	-- She Deep Breaths More
	4402,	-- More Dots!
	4403,	-- Many Whelps! Handle It!
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is10PlayerRaid() and
			Zone.Onyxias_Lair == p_current_map;

end;

onyxiaCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4397,	-- Onyxia's Lair
	4407,	-- She Deep Breaths More
	4405,	-- More Dots!
	4406,	-- Many Whelps! Handle It!
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is25PlayerRaid() and
			Zone.Onyxias_Lair == p_current_map;

end;

onyxiaCategory:inheritAchievements();

-------------------------------
-- Icecrown Citadel Category --
-------------------------------

local icecrownCategory = AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["Icecrown Citadel"]);

local bossCategory = icecrownCategory:addChild((L["Glory"]), {
	4602,	-- Glory of the Icecrown Raider 10 Player
	4603,	-- Glory of the Icecrown Raider 25 Player
});


local bossCategory = icecrownCategory:addChild(L["Progress"], {});

bossCategory:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4531,	-- Storming the Citadel (10 player)
	4528,	-- The Plagueworks (10 player)
	4529,	-- The Crimson Hall (10 player)
	4527,	-- The Frostwing Halls (10 player)
	4530,	-- The Frozen Throne (10 player)
	4532,	-- Fall of the Lich King (10 player)
	4628,	-- Heroic: Storming the Citadel (10 player)
	4629,	-- Heroic: The Plagueworks (10 player)
	4630,	-- Heroic: The Crimson Hall (10 player)
	4631,	-- Heroic: The Frostwing Halls (10 player)
	4636,	-- Heroic: Fall of the Lich King (10 player)
	4583,	-- Bane of the Fallen King
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is10PlayerRaid() and
			AchieveIt:Contains(icc_raid_ids,C_Map.GetBestMapForUnit("player"));

end;

bossCategory:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4604,	-- Storming the Citadel (25 player)
	4605,	-- The Plagueworks (25 player)
	4606,	-- The Crimson Hall (25 player)
	4607,	-- The Frostwing Halls (25 player)
	4597,	-- The Frozen Throne (25 player)
	4608,	-- Fall of the Lich King (25 player)
	4632,	-- Heroic: Storming the Citadel (25 player)
	4633,	-- Heroic: The Plagueworks (25 player)
	4634,	-- Heroic: The Crimson Hall (25 player)
	4635,	-- Heroic: The Frostwing Halls (25 player)
	4637,	-- Heroic: Fall of the Lich King (25 player)
	4584,	-- The Light of Dawn
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is25PlayerRaid() and
			AchieveIt:Contains(uicc_raid_ids,C_Map.GetBestMapForUnit("player"));

end;

bossCategory:inheritAchievements();

local category = icecrownCategory:addChild(L["Lord Marrowgar"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4534,	-- Boned (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Lord Marrowgar"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4610,	-- Boned (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Lord Marrowgar"];

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Lady Deathwhisper"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4535,	-- Full House (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Lady Deathwhisper"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4611,	-- Full House (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Lady Deathwhisper"];

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Icecrown Gunship Battle"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4536,	-- I'm on a Boat (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			C_Map.GetBestMapForUnit("player") == 187;

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4612,	-- I'm on a Boat (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			C_Map.GetBestMapForUnit("player") == 187;

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Deathbringer Saurfang"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4537,	-- I've Gone and Made a Mess (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Deathbringer Saurfang"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4613,	-- I've Gone and Made a Mess (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Deathbringer Saurfang"];

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Festergut"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4577,	-- Flu Shot Shortage (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Festergut"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4615,	-- Flu Shot Shortage (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Festergut"];

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Rotface"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4538,	-- Dances with Oozes (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Rotface"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4614,	-- Dances with Oozes (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Rotface"];

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Professor Putricide"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4578,	-- Nausea, Heartburn, Indigestion... (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Professor Putricide"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4616,	-- Nausea, Heartburn, Indigestion... (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Professor Putricide"];

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Blood Prince Council"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4582,	-- The Orb Whisperer (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			(UnitName("target") == L["Prince Keleseth"] or
			UnitName("target") == L["Prince Taldaram"] or
			UnitName("target") == L["Prince Valanar"]);

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4617,	-- The Orb Whisperer (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			(UnitName("target") == L["Prince Keleseth"] or
			UnitName("target") == L["Prince Taldaram"] or
			UnitName("target") == L["Prince Valanar"]);

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Blood-Queen Lana'thel"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4539,	-- Once Bitten, Twice Shy (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Blood-Queen Lana'thel"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4618,	-- Once Bitten, Twice Shy (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Blood-Queen Lana'thel"];

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Valithria Dreamwalker"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4579,	-- Portal Jockey (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Valithria Dreamwalker"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4619,	-- Portal Jockey (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Valithria Dreamwalker"];

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["Sindragosa"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4580,	-- All You Can Eat (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["Sindragosa"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4620,	-- All You Can Eat (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["Sindragosa"];

end;

category:inheritAchievements();

local category = icecrownCategory:addChild(L["The Lich King"], {});

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4530,	-- The Frozen Throne (10 player)
	4583,	-- Bane of the Fallen King
	4601,	-- Been Waiting a Long Time for This (10 player)
	4581,	-- Neck-Deep in Vile (10 player)
}).locate = function()

	return	AchieveIt.difficulty.is10PlayerRaid() and
			UnitName("target") == L["The Lich King"];

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4597,	-- The Frozen Throne (25 player)
	4584,	-- The Light of Dawn
	4621,	-- Been Waiting a Long Time for This (25 player)
	4622,	-- Neck-Deep in Vile (25 player)
}).locate = function()

	return	AchieveIt.difficulty.is25PlayerRaid() and
			UnitName("target") == L["The Lich King"];

end;

category:inheritAchievements();

icecrownCategory:inheritAchievements();

---------------------------
-- Ruby Sanctum Category --
---------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_WrathOfTheLichKing, L["Ruby Sanctum"]);

category:addChild(_G["RAID_DIFFICULTY_10PLAYER"], {
	4817,	-- The Twilight Destroyer (10 player)
	4818,	-- Heroic: The Twilight Destroyer (10 player)
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is10PlayerRaid() and
			Zone.The_Ruby_Sanctum == p_current_map;

end;

category:addChild(_G["RAID_DIFFICULTY_25PLAYER"], {
	4815,	-- The Twilight Destroyer (25 player)
	4816,	-- Heroic: The Twilight Destroyer (25 player)
}).locate = function(p_current_map)

	return	AchieveIt.difficulty.is25PlayerRaid() and
			Zone.The_Ruby_Sanctum == p_current_map;

end;

category:inheritAchievements();