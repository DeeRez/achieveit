-----------------------------------------
-- Dungeons & Raids - Pandaria Dungeon --
-----------------------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local panda_dungeon_ids = {

	437, --	Gate of the Setting Sun - Gate of the Setting Sun
	438, --	Gate of the Setting Sun - Gate Watch Tower
	453, --	Mogu'shan Palace - The Crimson Assembly Hall	
	454, --	Mogu'shan Palace - Vaults of Kings Past
	455, -- Mogu'shan Palace - Throne of Ancient Conquerors
	457, -- Siege of Niuzao Temple - Siege of Niuzao Temple
	458, -- Siege of Niuzao Temple - The Hollowed Out Tree
	459, -- Siege of Niuzao Temple - Upper Tree Ring
	431, -- Scarlet Halls - Training Grounds
	432, -- Scarlet Halls - Athenaeum
	435, -- Scarlet Monastery - Forlorn Cloister
	436, -- Scarlet Monastery - Crusader's Chapel
	476, -- Scholomance - The Reliquary
	477, -- Scholomance - Chamber of Summoning
	478, -- Scholomance - The Upper Study
	479, -- Scholomance - Headmaster's Study
	443, -- Shado-Pan Monastery - Shado-Pan Monastery
	444, -- Shado-Pan Monastery - Cloudstrike Dojo
	445, -- Shado-Pan Monastery - Snowdrift Dojo
	446, -- Shado-Pan Monastery - Sealed Chambers
	439, -- Stormstout Brewery - Grain Cellar
	440, -- Stormstout Brewery - Stormstout Brewhall
	441, -- Stormstout Brewery - The Great Wheel
	442, -- Stormstout Brewery - The Tasting Room
	429, -- Temple of the Jade Serpent - Temple of the Jade Serpent
	430, -- Temple of the Jade Serpent - The Scrollkeeper's Sanctum
};

local msv_raid_ids = {
	471, --	Mogu'shan Vaults - Dais of Conquerors
	472, --	Mogu'shan Vaults - The Repository
	473, --	Mogu'shan Vaults - Forge of the Endless
};

local hof_raid_ids = {
	474, -- Heart of Fear - Oratorium of the Voice
	475, -- Heart of Fear - Heart of Fear
};

local tot_raid_ids = {
	508, -- Throne of Thunder - Overgrown Statuary
	509, -- Throne of Thunder - Royal Amphitheater
	510, -- Throne of Thunder - Forgotten Depths
	511, -- Throne of Thunder - Roost of Ji-Kun
	512, -- Throne of Thunder - Halls of Flesh-Shaping
	513, -- Throne of Thunder - Hall of Kings
	514, -- Throne of Thunder - Pinnacle of Storms
	515, -- Throne of Thunder - Hidden Cell
};

local soo_raid_ids = {
	556, -- Siege of Orgrimmar - Siege of Orgrimmar
	557, -- Siege of Orgrimmar - Pools of Power
	558, -- Siege of Orgrimmar - Vault of Y'Shaarj
	559, -- Siege of Orgrimmar - Gates of Orgrimmar
	560, -- Siege of Orgrimmar - The Valley of Strength
	561, -- Siege of Orgrimmar - The Cleft of Shadow
	562, -- Siege of Orgrimmar - The Descent
	563, -- Siege of Orgrimmar - Kor'Kron Barracks
	564, -- Siege of Orgrimmar - The Menagerie
	565, -- Siege of Orgrimmar - The Siegeworks
	566, -- Siege of Orgrimmar - Chamber of the Paragons
	567, -- Siege of Orgrimmar - The Inner Sanctum
	568, -- Siege of Orgrimmar - Terrace of Endless Spring
	569, -- Siege of Orgrimmar - Temple of the Jade Serpent
	570, -- Siege of Orgrimmar - Temple of the Red Crane
};

AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Glory"], {
	6927,	-- Glory of the Pandaria Hero
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria,Difficulty.Normal, {
	6457,	-- Stormstout Brewery
	6757,	-- Temple of the Jade Serpent
	6755,	-- Mogu'shan Palace
	6469,	-- Shado-Pan Monastery
}).locate = function()

	return AchieveIt:Contains(panda_dungeon_ids,C_Map.GetBestMapForUnit("player")) -- user is in one of these dungeons
			and AchieveIt.difficulty.isDungeon(); -- and it is a normal version

end;

AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria,Difficulty.Heroic, {
	6456,	-- Heroic: Stormstout Brewery
	6758,	-- Heroic: Temple of the Jade Serpent
	6756,	-- Heroic: Mogu'shan Palace
	6470,	-- Heroic: Shado-Pan Monastery
	6759,	-- Heroic: Gate of the Setting Sun
	6763,	-- Heroic: Siege of Niuzao Temple
	6760,	-- Heroic: Scarlet Halls
	6761,	-- Heroic: Scarlet Monastery
	6762,	-- Heroic: Scholomance
}).locate = function()

	return AchieveIt:Contains(panda_dungeon_ids,C_Map.GetBestMapForUnit("player")) -- user is in one of these dungeons
			and AchieveIt.difficulty.isHeroicDungeon(); -- and it is a heroic version

end;

--------------------------------------
-- Gate of the Setting Sun Category --
--------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Gate of the Setting Sun"], {
	6759,	-- Heroic: Gate of the Setting Sun
	6476,	-- Conscriptinator
});

category:addChild(L["Saboteur Kip'tilak"], {
	6479,	-- Bomberman
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Saboteur Kip'tilak"];
		
end;

category:addChild(L["Commander Ri'mok"], {
	6715,	-- Polyformic Acid Science
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Commander Ri'mok"];
		
end;

category:addChild(L["Raigonn"], {
	6945,	-- Mantid Swarm
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Raigonn"];
		
end;

category:inheritAchievements();

-------------------------------
-- Mogu'shan Palace Category --
-------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Mogu'shan Palace"], {
	6755,	-- Mogu'shan Palace
	6756,	-- Heroic: Mogu'shan Palace
	6713,	-- Quarrelsome Quilen Quintet
});

category:addChild(L["Trial of the King"], {
	6715,	-- Polyformic Acid Science
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   (UnitName("target") == L["Haiyan the Unstoppable"] or 
		UnitName("target") == L["Kuai the Brute"] or
		UnitName("target") == L["Ming the Cunning"]);
		
end;

category:addChild(L["Gekkan"], {
	6478,	-- Glintrok N' Roll
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Gekkan"];
		
end;

category:addChild(L["Xin the Weaponmaster"], {
	6736,	-- What Does This Button Do?
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Xin the Weaponmaster"];
		
end;

category:inheritAchievements();

----------------------------
-- Scarlet Halls Category --
----------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Scarlet Halls"], {
	6760,	-- Heroic: Scarlet Halls
});

category:addChild(L["Houndmaster Braun"], {
	6684,	-- Humane Society
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Houndmaster Braun"];
		
end;

category:addChild(L["Armsmaster Harlan"], {
	6427,	-- Mosh Pit
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Armsmaster Harlan"];
		
end;

category:inheritAchievements();

--------------------------------
-- Scarlet Monastery Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Scarlet Monastery"], {
	6761,	-- Heroic: Scarlet Monastery
});

category:addChild(L["Thalnos the Soulrender"], {
	6946,	-- Empowered Spiritualist
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Thalnos the Soulrender"];
		
end;

category:addChild(L["Brother Korloff"], {
	6928,	-- Burning Man
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Brother Korloff"];
		
end;

category:addChild(L["High Inquisitor Whitemane"], {
	6929,	-- And Stay Dead!
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["High Inquisitor Whitemane"];
		
end;

category:inheritAchievements();

--------------------------
-- Scholomance Category --
--------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Scholomance"], {
	6762,	-- Heroic: Scholomance
	6396,	-- Sanguinarian
});

category:addChild(L["Jandice Barov"], {
	6531,	-- Attention to Detail
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Jandice Barov"];
		
end;

category:addChild(L["Rattlegore"], {
	6394,	-- Rattle No More
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Rattlegore"];
		
end;

category:addChild(L["Darkmaster Gandling"], {
	6821,	-- School's Out Forever
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Darkmaster Gandling"];
		
end;

category:inheritAchievements();

----------------------------------
-- Shado-Pan Monastery Category --
----------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Shado-Pan Monastery"], {
	6469,	-- Shado-Pan Monastery
	6470,	-- Heroic: Shado-Pan Monastery
});

category:addChild(L["Gu Cloudstrike"], {
	6715,	-- Polyformic Acid Science
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Gu Cloudstrike"];
		
end;

category:addChild(L["Master Snowdrift"], {
	6477,	-- Respect
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   (UnitName("target") == L["Master Snowdrift"] or
		UnitName("target") == L["Flying Snow"] or
		UnitName("target") == L["Fragrant Lotus"]);
		
end;

category:addChild(L["Sha of Violence"], {
	6472,	-- The Obvious Solution
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Sha of Violence"];
		
end;

category:addChild(L["Taran Zhu"], {
	6471,	-- Hate Leads to Suffering
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Taran Zhu"];
		
end;

category:inheritAchievements();


-------------------------------------
-- Siege of Niuzao Temple Category --
-------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Siege of Niuzao Temple"], {
	6763,	-- Heroic: Siege of Niuzao Temple
});

category:addChild(L["Vizier Jin'bak"], {
	6715,	-- Polyformic Acid Science
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Vizier Jin'bak"];
		
end;

category:addChild(L["Commander Vo'jak"], {
	6688,	-- Where's My Air Support?
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Commander Vo'jak"];
		
end;

category:addChild(L["General Pa'valak"], {
	6485,	-- Return to Sender
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["General Pa'valak"];
		
end;

category:addChild(L["Wing Leader Ner'onok"], {
	6822,	-- Run with the Wind
}).locate = function()
	
	return	AchieveIt.difficulty.isHeroicDungeon() and
	   UnitName("target") == L["Wing Leader Ner'onok"];
		
end;

category:inheritAchievements();

---------------------------------
-- Stormstout Brewery Category --
---------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Stormstout Brewery"], {
	6457,	-- Stormstout Brewery
	6456,	-- Heroic: Stormstout Brewery
	6400,	-- How Did He Get Up There?
	6402,	-- Ling-Ting's Herbal Journey
});

category:addChild(L["Ook-Ook"], {
	6089,	-- Keep Rollin' Rollin' Rollin'
}).locate = function()

	return  AchieveIt.difficulty.isHeroicDungeon()	and
	UnitName("target") == L["Ook-Ook"];

end;

category:addChild(L["Hoptallus"], {
	6420,	-- Hopocalypse Now!
}).locate = function()

	return  AchieveIt.difficulty.isHeroicDungeon()	and
	UnitName("target") == L["Hoptallus"]; 

end;

category:addChild(L["Yan-Zhu the Uncasked"], {
	6715,	-- Polyformic Acid Science
}).locate = function()

	return  AchieveIt.difficulty.isHeroicDungeon()	and
	UnitName("target") == L["Yan-Zhu the Uncasked"];

end;

category:inheritAchievements();

-----------------------------------------
-- Temple of the Jade Serpent Category --
-----------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Temple of the Jade Serpent"], {
	6757,	-- Temple of the Jade Serpent
	6758,	-- Heroic: Temple of the Jade Serpent
});

category:addChild(L["Wise Mari"], {
	6460,	-- Hydrophobia
});

category:addChild(L["Liu Flameheart"], {
	6715,	-- Polyformic Acid Science
});

category:addChild(L["Sha of Doubt"], {
	6475,	-- Cleaning Up
	6671,	-- Seeds of Doubt
});

category:inheritAchievements();

--------------------------------------
-- Dungeons & Raids - Pandaria Raid --
--------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["World Bosses"], {
	6480,	-- Settle Down, Bro
	6517,	-- Extinction Event
	8028,	-- Praise the Sun!
	8123,	-- Millions of Years of Evolution vs. My Fist
	8535,	-- Celestial Challenge
});

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Glory"], {
	6932,	-- Glory of the Pandaria Raider
	8124,	-- Glory of the Thundering Raider
	8454,	-- Glory of the Orgrimmar Raider
});

-------------------------------
-- Mogu'shan Vaults Category --
-------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Mogu'shan Vaults"]);

category:addChild(L["Glory"], {
	6932,	-- Glory of the Pandaria Raider
});

category:addChild(L["Progress"], {
	6458,	-- Guardians of Mogu'shan
	6844,	-- The Vault of Mysteries
	6719,	-- Heroic: Stone Guard
	6720,	-- Heroic: Feng the Accursed
	6721,	-- Heroic: Gara'jal the Spiritbinder
	6722,	-- Heroic: Four Kings
	6723,	-- Heroic: Elegon
	6724,	-- Heroic: Will of the Emperor
}).locate = function()
	
	return	AchieveIt:Contains(msv_raid_ids,C_Map.GetBestMapForUnit("player"));

end;

category:addChild(L["The Stone Guard"], {
	6719,	-- Heroic: Stone Guard
	6823,	-- Must Love Dogs
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Amethyst Guardian"] or
			UnitName("target") == L["Cobalt Guardian"] or
			UnitName("target") == L["Jade Guardian"] or
			UnitName("target") == L["Jasper Guardian"]);

end;

category:addChild(L["Feng the Accursed"], {
	6720,	-- Heroic: Feng the Accursed
	6674,	-- Anything You Can Do, I Can Do Better...
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Feng the Accursed"];

end;

category:addChild(L["Gara'jal the Spiritbinder"], {
	6721,	-- Heroic: Gara'jal the Spiritbinder
	7056,	-- Sorry, Were You Looking for This?
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Gara'jal the Spiritbinder"];

end;

category:addChild(L["The Spirit Kings"], {
	6722,	-- Heroic: Four Kings
	6687,	-- Getting Hot In Here
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Meng the Demented"] or
			UnitName("target") == L["Qiang the Merciless"] or
			UnitName("target") == L["Subetai the Swift"] or
			UnitName("target") == L["Zian of the Endless Shadow"]);

end;

category:addChild(L["Elegon"], {
	6723,	-- Heroic: Elegon
	6686,	-- Straight Six
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Elegon"];

end;

category:addChild(L["Will of the Emperor"], {
	6724,	-- Heroic: Will of the Emperor
	6455,	-- Show Me Your Moves!
});

category:inheritAchievements();


----------------------------
-- Heart of Fear Category --
----------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Heart of Fear"]);

category:addChild(L["Glory"], {
	6932,	-- Glory of the Pandaria Raider
});

category:addChild(L["Progress"], {
	6718,	-- The Dread Approach
	6845,	-- Nightmare of Shek'zeer
	6725,	-- Heroic: Imperial Vizier Zor'lok
	6726,	-- Heroic: Blade Lord Ta'yak
	6727,	-- Heroic: Garalon
	6728,	-- Heroic: Wind Lord Mel'jarak
	6729,	-- Heroic: Amber-Shaper Un'sok
	6730,	-- Heroic: Grand Empress Shek'zeer
}).locate = function()
	
	return	AchieveIt:Contains(hof_raid_ids,C_Map.GetBestMapForUnit("player"));

end;

category:addChild(L["Imperial Vizier Zor'lok"], {
	6725,	-- Heroic: Imperial Vizier Zor'lok
	6937,	-- Overzealous
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Imperial Vizier Zor'lok"];

end;

category:addChild(L["Blade Lord Ta'yak"], {
	6726,	-- Heroic: Blade Lord Ta'yak
	6936,	-- Candle in the Wind
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Blade Lord Ta'yak"];

end;

category:addChild(L["Garalon"], {
	6727,	-- Heroic: Garalon
	6553,	-- Like an Arrow to the Face
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Garalon"];

end;

category:addChild(L["Wind Lord Mel'jarak"], {
	6728,	-- Heroic: Wind Lord Mel'jarak
	6683,	-- Less Than Three
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Wind Lord Mel'jarak"];

end;

category:addChild(L["Amber-Shaper Un'sok"], {
	6729,	-- Heroic: Amber-Shaper Un'sok
	6518,	-- I Heard You Like Amber...
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Amber-Shaper Un'sok"];

end;

category:addChild(L["Grand Empress Shek'zeer"], {
	6730,	-- Heroic: Grand Empress Shek'zeer
	6922,	-- Timing is Everything
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Grand Empress Shek'zeer"];

end;

category:inheritAchievements();


----------------------------------------
-- Terrace of Endless Spring Category --
----------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Terrace of Endless Spring"]);

category:addChild(L["Glory"], {
	6932,	-- Glory of the Pandaria Raider
});

category:addChild(L["Progress"], {
	6689,	-- Terrace of Endless Spring
	6731,	-- Heroic: Protectors of the Endless
	6732,	-- Heroic: Tsulong
	6733,	-- Heroic: Lei Shi
	6734,	-- Heroic: Sha of Fear
}).locate = function()
	
	return	AchieveIt.CurrentMapCheck(Zone.Terrace_of_Endless_Spring);

end
;
 
category:addChild(L["Protectors of the Endless"], {
	6731,	-- Heroic: Protectors of the Endless
	6717,	-- Power Overwhelming
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			   (UnitName("target") == L["Elder Asani"] or
				UnitName("target") == L["Elder Regail"] or
				UnitName("target") == L["Protector Kaolan"]);

end;

category:addChild(L["Tsulong"], {
	6732,	-- Heroic: Tsulong
	6933,	-- Who's Got Two Green Thumbs?
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Tsulong"];

end;

category:addChild(L["Lei Shi"], {
	6733,	-- Heroic: Lei Shi
	6824,	-- Face Clutchers
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Lei Shi"];

end;

category:addChild(L["Sha of Fear"], {
	6734,	-- Heroic: Sha of Fear
	6825,	-- The Mind-Killer
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Sha of Fear"];

end;

category:inheritAchievements();


--------------------------------
-- Throne of Thunder Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Throne of Thunder"]);

category:addChild(L["Glory"], {
	8124,	-- Glory of the Thundering Raider
});

category:addChild(L["Progress"], {
	8069,	-- Last Stand of the Zandalari
	8070,	-- Forgotten Depths
	8071,	-- Halls of Flesh-Shaping
	8072,	-- Pinnacle of Storms
	8056,	-- Heroic: Jin'rokh the Breaker
	8057,	-- Heroic: Horridon
	8058,	-- Heroic: Council of Elders
	8059,	-- Heroic: Tortos
	8060,	-- Heroic: Megaera
	8061,	-- Heroic: Ji-Kun
	8062,	-- Heroic: Durumu the Forgotten
	8063,	-- Heroic: Primordius
	8064,	-- Heroic: Dark Animus
	8065,	-- Heroic: Iron Qon
	8066,	-- Heroic: Twin Consorts
	8067,	-- Heroic: Lei Shen
	8068,	-- Heroic: Ra-den
}).locate = function()
	
	return	AchieveIt:Contains(tot_raid_ids,C_Map.GetBestMapForUnit("player"));

end;

category:addChild(L["Jin'rokh the Breaker"], {
	8056,	-- Heroic: Jin'rokh the Breaker
	8094,	-- Lightning Overload
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Jin'rokh the Breaker"];

end;

category:addChild(L["Horridon"], {
	8057,	-- Heroic: Horridon
	8038,	-- Cretaceous Collector
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Horridon"];

end;

category:addChild(L["Council of Elders"], {
	8058,	-- Heroic: Council of Elders
	8073,	-- Cage Match
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and		   
		   (UnitName("target") == L["Frost King Malakk"] or
			UnitName("target") == L["High Priestess Mar'li"] or
			UnitName("target") == L["Kazra'jin"] or
			UnitName("target") == L["Sul the Sandcrawler"]);

end;

category:addChild(L["Tortos"], {
	8059,	-- Heroic: Tortos
	8077,	-- One-Up
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Tortos"];

end;

category:addChild(L["Megaera"], {
	8060,	-- Heroic: Megaera
	8082,	-- Head Case
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Arcane Head"] or
			UnitName("target") == L["Flaming Head"] or
			UnitName("target") == L["Frozen Head"] or
			UnitName("target") == L["Venomous Head"]);

end;

category:addChild(L["Ji-kun"], {
	8061,	-- Heroic: Ji-Kun
	8097,	-- Soft Hands
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Ji-kun"];

end;

category:addChild(L["Durumu the Forgotten"], {
	8062,	-- Heroic: Durumu the Forgotten
	8098,	-- You Said Crossing the Streams Was Bad
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Durumu"];

end;

category:addChild(L["Primordius"], {
	8063,	-- Heroic: Primordius
	8037,	-- Genetically Unmodified Organism
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Primordius"];

end;

category:addChild(L["Dark Animus"], {
	8064,	-- Heroic: Dark Animus
	8081,	-- Ritualist Who?
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Dark Animus"];

end;

category:addChild(L["Iron Qon"], {
	8065,	-- Heroic: Iron Qon
	8087,	-- Can't Touch This
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Dam'ren"] or
			UnitName("target") == L["Iron Qon"] or
			UnitName("target") == L["Quet'zal"] or
			UnitName("target") == L["Ro'shak"]);

end;

category:addChild(L["Twin Consorts"], {
	8066,	-- Heroic: Twin Consorts
	8086,	-- From Dusk 'til Dawn
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Lu'lin"] or
			UnitName("target") == L["Suen"]);

end;

category:addChild(L["Lei Shen"], {
	8067,	-- Heroic: Lei Shen
	8090,	-- A Complete Circuit
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Lei Shen"];

end;

category:addChild(L["Ra-den"], {
	8068,	-- Heroic: Ra-den
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			AchieveIt:Contains(tot_raid_ids,C_Map.GetBestMapForUnit("player")) and
			UnitName("target") == L["Ra-den"];

end;

category:inheritAchievements();


---------------------------------
-- Siege of Orgrimmar Category --
---------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Siege of Orgrimmar"]);

category:addChild(L["Glory"], {
	8454,	-- Glory of the Orgrimmar Raider
});

category:addChild(L["Progress"], {
	8458,	-- Vale of Eternal Sorrows
	8459,	-- Gates of Retribution
	8461,	-- The Underhold
	8462,	-- Downfall
	{ id = 8679, faction = AchieveIt.Factions.ALLIANCE },	-- Conqueror of Orgrimmar
	{ id = 8680, faction = AchieveIt.Factions.HORDE },	-- Liberator of Orgrimmar
	8463,	-- Heroic: Immerseus
	8465,	-- Heroic: Fallen Protectors
	8466,	-- Heroic: Norushen
	8467,	-- Heroic: Sha of Pride
	8468,	-- Heroic: Galakras
	8469,	-- Heroic: Iron Juggernaut
	8470,	-- Heroic: Kor'kron Dark Shaman
	8471,	-- Heroic: General Nazgrim
	8472,	-- Heroic: Malkorok
	8478,	-- Heroic: Spoils of Pandaria
	8479,	-- Heroic: Thok the Bloodthirsty
	8480,	-- Heroic: Siegecrafter Blackfuse
	8481,	-- Heroic: Paragons of the Klaxxi
	8482,	-- Heroic: Garrosh Hellscream
}).locate = function()

	return AchieveIt:Contains(soo_raid_ids,C_Map.GetBestMapForUnit("player"));

end

category:addChild(L["Immerseus"], {
	8536,	-- No More Tears
	8463,	-- Heroic: Immerseus
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Immerseus"];

end;

category:addChild(L["The Fallen Protectors"], {
	8528,	-- Go Long
	8465,	-- Heroic: Fallen Protectors
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["He Softfoot"] or 
			UnitName("target") == L["Rook Stonetoe"] or 
			UnitName("target") == L["Sun Tenderheart"]);

end;

category:addChild(L["Norushen"], {
	8532,	-- None Shall Pass
	8466,	-- Heroic: Norushen
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Norushen"] or 
			UnitName("target") == L["Amalgam of Corruption"]);

end;

category:addChild(L["Sha of Pride"], {
	8521,	-- Swallow Your Pride
	8467,	-- Heroic: Sha of Pride
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Sha of Pride"];

end;

category:addChild(L["Galakras"], {
	8530,	-- The Immortal Vanguard
	8468,	-- Heroic: Galakras
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Galakras"];

end;

category:addChild(L["Iron Juggernaut"], {
	8520,	-- Fire in the Hole!
	8469,	-- Heroic: Iron Juggernaut
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Iron Juggernaut"];

end;

category:addChild(L["Kor'kron Dark Shaman"], {
	8453,	-- Rescue Raiders
	8470,	-- Heroic: Kor'kron Dark Shaman
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Bloodclaw"] or
			UnitName("target") == L["Darkfang"] or
			UnitName("target") == L["Earthbreaker Haromm"] or	
			UnitName("target") == L["Wavebinder Kardris"]);

end;

category:addChild(L["General Nazgrim"], {
	8448,	-- Gamon Will Save Us!
	8471,	-- Heroic: General Nazgrim
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["General Nazgrim"];

end;

category:addChild(L["Malkorok"], {
	8538,	-- Unlimited Potential
	8472,	-- Heroic: Malkorok
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Malkorok"];

end;

category:addChild(L["Spoils of Pandaria"], {
	8529,	-- Criss Cross
	8478,	-- Heroic: Spoils of Pandaria
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			564 == C_Map.GetBestMapForUnit("player");

end;

category:addChild(L["Thok the Bloodthirsty"], {
	8527,	-- Giant Dinosaur vs. Mega Snail
	8479,	-- Heroic: Thok the Bloodthirsty
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Thok the Bloodthirsty"];

end;

category:addChild(L["Siegecrafter Blackfuse"], {
	8543,	-- Lasers and Magnets and Drills! Oh My!
	8480,	-- Heroic: Siegecrafter Blackfuse
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Siegecrafter Blackfuse"];

end;

category:addChild(L["Paragons of the Klaxxi"], {
	8531,	-- Now We are the Paragon
	8481,	-- Heroic: Paragons of the Klaxxi
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Hisek the Swarmkeeper"] or
			UnitName("target") == L["Iyyokuk the Lucid"] or
			UnitName("target") == L["Ka'roz the Locust"] or
			UnitName("target") == L["Kaz'tik the Manipulator"] or
			UnitName("target") == L["Kil'ruk the Wind-Reaver"] or
			UnitName("target") == L["Korven the Prime"] or
			UnitName("target") == L["Rik'kal the Dissector"] or
			UnitName("target") == L["Skeer the Bloodseeker"] or
			UnitName("target") == L["Xaril the Poisoned Mind"]);

end;

category:addChild(L["Garrosh Hellscream"], {
	8537,	-- Strike!
	{ id = 8679, faction = AchieveIt.Factions.ALLIANCE },	-- Conqueror of Orgrimmar
	{ id = 8680, faction = AchieveIt.Factions.HORDE },	-- Liberator of Orgrimmar
	8482,	-- Heroic: Garrosh Hellscream
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Garrosh Hellscream"];

end;

category:inheritAchievements();


