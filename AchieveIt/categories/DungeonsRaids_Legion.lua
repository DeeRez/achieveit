----------------------------------------
-- Dungeons & Raids - Legion Dungeon  --
----------------------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local legion_dungeon_ids = {
732, -- Violet Hold
751, -- Black Rook Hold - The Ravenscrypt
752, -- Black Rook Hold - The Grand Hall
753, -- Black Rook Hold - Ravenshold
754, -- Black Rook Hold - The Rook's Roost
755, -- Black Rook Hold - Lord Ravencrest's Chamber
756, -- Black Rook Hold - The Raven's Crown
845, -- Cathedral of Eternal Night - Hall of the Moon
846, -- Cathedral of Eternal Night - Twilight Grove
847, -- Cathedral of Eternal Night - The Emerald Archives	
848, -- Cathedral of Eternal Night - Path of Illumination	
849, -- Cathedral of Eternal Night - Sacristy of Elune
733, -- Darkheart Thicket
713, -- Eye of Azshara
703, -- Halls of Valor - Halls of Valor
704, -- Halls of Valor - The High Gate
705, -- Halls of Valor - Halls of Valor
706, -- Helmouth Cliffs - Helmouth Cliffs
707, -- Helmouth Cliffs - The Hold
708, -- Helmouth Cliffs - The Naglfar
731, -- Neltharion's Lair
677, -- Vault of the Wardens - Illidari Ward
678, -- Vault of the Wardens - Vault of the Wardens
679, -- Vault of the Wardens - The Warden's Court
}

local nightmare_raid_ids ={
777, -- The Emerald Nightmare - Clutch of CorruptionH
778, -- The Emerald Nightmare - Core of the Nightmare
779, -- The Emerald Nightmare - Mulgore
780, -- The Emerald Nightmare - Un'goro Crater
781, -- The Emerald Nightmare - The Emerald Nightmare
782, -- The Emerald Nightmare - Ashenvale
783, -- The Emerald Nightmare - The Hinterlands
784, -- The Emerald Nightmare - Duskwood
785, -- The Emerald Nightmare - Feralas	Dungeon	Kalimdor
786, -- The Emerald Nightmare - Grizzly Hills
787, -- The Emerald Nightmare - Moonglade
788, -- The Emerald Nightmare - Rift of Aln
789, -- The Emerald Nightmare - The Emerald Dream
}

local tov_raid_ids = {
806, -- Trial of Valor - Trial of Valor
807, -- Trial of Valor - Trial of Valor
808, -- Trial of Valor - Helheim
}

local nighthold_raid_ids = {
764, -- The Nighthold - The Nightwell
765, -- The Nighthold - Arcing Depths
766, -- The Nighthold - The Nighthold
767, -- The Nighthold - Shal'Dorei Terrace
768, -- The Nighthold - Captain's Quarters
769, -- The Nighthold - Astromancer's Rise
770, -- The Nighthold - The Nightspire
771, -- The Nighthold - Elisande's Quarters
772, -- The Nighthold - The Font of Night
}

local tomb_raid_ids ={
850, -- Tomb of Sargeras - Chamber of the Moon
851, -- Tomb of Sargeras - The Abyssal Throne
852, -- Tomb of Sargeras - Terrace of the Moon
853, -- Tomb of Sargeras - The Guardian's Sanctum
854, -- Tomb of Sargeras - Chamber of the Avatar
855, -- Tomb of Sargeras - Felstorm's Breach
856, -- Tomb of Sargeras - The Twisting Nether
}

local antorus_raid_ids ={
909, -- Antorus, the Burning Throne - Antorus, the Burning Throne	Dungeon	Antoran Wastes	view	
910, -- Antorus, the Burning Throne - Gaze of the Legion	Dungeon	Antorus, the Burning Throne	view	
911, -- Antorus, the Burning Throne - Halls of the Boundless Reach	Dungeon	Antorus, the Burning Throne	view	
912, -- Antorus, the Burning Throne - Elunaria	Dungeon	Antorus, the Burning Throne	view	
913, -- Antorus, the Burning Throne - Elarian Sanctuary	Dungeon	Antorus, the Burning Throne	view	
914, -- Antorus, the Burning Throne - The Exhaust	Dungeon	Antorus, the Burning Throne	view	
915, -- Antorus, the Burning Throne - The Burning Throne	Dungeon	Antorus, the Burning Throne	view	
916, -- Antorus, the Burning Throne - Chamber of Anguish	Dungeon	Antorus, the Burning Throne	view	
917, -- Antorus, the Burning Throne - The World Soul	Dungeon	Antorus, the Burning Throne	view	
918, -- Antorus, the Burning Throne - Seat of the Pantheon	Dungeon	Antorus, the Burning Throne	view	
919, -- Antorus, the Burning Throne - Upper Deck	Dungeon	Antorus, the Burning Throne	view	
920, -- Antorus, the Burning Throne - Lower Deck
}
--------------------
-- Glory Category --
--------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Glory"], {
	11163,	-- Glory of the Legion Hero
});

-----------------------
-- Dungeons Category --
-----------------------

AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, Difficulty.Normal, {
	10798,	-- Assault on Violet Hold
	10804,	-- Black Rook Hold
	11700,	-- Cathedral of Eternal Night
	10783,	-- Darkheart Thicket
	10780,	-- Eye of Azshara
	10786,	-- Halls Of Valor
	10807,	-- Maw of Souls
	10795,	-- Neltharion's Lair
	10801,	-- Vault of the Wardens
}).locate = function()
	return AchieveIt:Contains(legion_dungeon_ids,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isDungeon();
end;

------------------------------
-- Heroic Dungeons Category --
------------------------------

AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, Difficulty.Heroic, {
	10799, -- Heroic: Assault on Violet Hold
	10805, -- Heroic: Black Rook Hold
	11701, -- Heroic: Cathedral of Eternal Night
	10784, -- Heroic: Darkheart Thicket
	10781, -- Heroic: Eye of Azshara
	10788, -- Heroic: Halls of Valor
	10808, -- Heroic: Maw of Souls
	10796, -- Heroic: Neltharion's Lair
	11929, -- Heroic: Return to Karazhan
	12007, -- Heroic: Seat of the Triumvirate
	10802, -- Heroic: Vault of the Wardens
}).locate = function()
	return AchieveIt:Contains(legion_dungeon_ids,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isHeroicDungeon();
end;

------------------------------
-- Mythic Dungeons Category --
------------------------------

AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, Difficulty.Mythic, {
	10800, -- Mythic: Assault on Violet Hold
	10806, -- Mythic: Black Rook Hold
	11702, -- Mythic: Cathedral of Eternal Night
	10816, -- Mythic: Court of Stars
	10785, -- Mythic: Darkheart Thicket
	10782, -- Mythic: Eye of Azshara
	10789, -- Mythic: Halls of Valor
	10809, -- Mythic: Maw of Souls
	10797, -- Mythic: Neltharion's Lair
	11429, -- Mythic: Return to Karazhan
	12008, -- Mythic: Seat of the Triumvirate
	10813, -- Mythic: The Arcway
	10803, -- Mythic: Vault of the Wardens
}).locate = function()
	return AchieveIt:Contains(legion_dungeon_ids,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isMythicDungeon();
end;


-------------------------------------
-- Assault on Violet Hold Category --
------------------------------------- 

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Assault on Violet Hold"], {
	10798,	-- Assault on Violet Hold
	10799,	-- Heroic: Assault on Violet Hold
	10800,	-- Mythic: Assault on Violet Hold
});

category:addChild(L["Festerface"], {
	10554,	-- I Made a Food!
}).locate = function() 	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Festerface"];
end;

category:addChild(L["Millificent Manastorm"], {
	10553,	-- You're Just Making It WORSE!
}).locate = function() 
	return	C_Map.GetBestMapForUnit("player") == 732 and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Millificent Manastorm"];
end;

category:inheritAchievements();


------------------------------
-- Black Rook Hold Category --
------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Black Rook Hold"], {
	10804,	-- Black Rook Hold
	10805,	-- Heroic: Black Rook Hold
	10806,	-- Mythic: Black Rook Hold
	10709,	-- You Used to Scrawl Me In Your Fel Tome
});

category:addChild(L["Amalgam of Souls"], {
	10710,	-- Black Rook Moan
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Amalgam of Souls"];
end;

category:addChild(L["Illysanna Ravencrest"], {
	10711,	-- Adds? More Like Bads
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Illysanna Ravencrest"];
end;

category:inheritAchievements();

--------------------------------
-- Cathedral of Eternal Night --
--------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Cathedral of Eternal Night"], {
	11700,	-- Cathedral of Eternal Night
	11701,	-- Heroic: Cathedral of Eternal Night
	11702,	-- Mythic: Cathedral of Eternal Night
});

category:addChild(L["Agronox"], {
	11768,	-- Boom Bloom
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Agronox"];
end;

category:addChild(L["Thrashbite the Scornful"], {
	11769, -- A Steamy Romance Saga
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Thrashbite the Scornful"];
end

category:addChild(L["Mephistroth"], {
	11703,	-- Master of Shadows
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Mephistroth"];
end


category:inheritAchievements();

-----------------------------
-- Court of Stars Category --
-----------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Court of Stars"], {
	10816,	-- Mythic: Court of Stars
});

category:addChild(L["Patrol Captain Gerdo"], {
	10610,	-- Waiting For Gerdo
});

category:addChild(L["Advisor Melandrus"], {
	10611,	-- Dropping Some Eaves
});

category:inheritAchievements();

--------------------------------
-- Darkheart Thicket Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Darkheart Thicket"], {
	10783,	-- Darkheart Thicket
	10784,	-- Heroic: Darkheart Thicket
	10785,	-- Mythic: Darkheart Thicket
});

category:addChild(L["Dresaron"], {
	10766,	-- Egg-cellent!
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Dresaron"];
end;

category:addChild(L["Shade of Xavius"], {
	10769,	-- Burning Down the House
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Shade of Xavius"];
end;

category:inheritAchievements();

------------------------------
-- Eye of Azshara Category  --
------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Eye of Azshara"], {
	10780,	-- Eye of Azshara
	10781,	-- Heroic: Eye of Azshara
	10782,	-- Mythic: Eye of Azshara
});

category:addChild(L["Warlord Parjesh"], {
	10456,	-- But You Say He's Just a Friend
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Warlord Parjesh"];
end;

category:addChild(L["Lady Hatecoil"], {
	10457,	-- Stay Salty
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Lady Hatecoil"];
end;

category:addChild(L["Wrath of Azshara"], {
	10458,	-- Ready for Raiding V
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Wrath of Azshara"];
end;

category:inheritAchievements();

-----------------------------
-- Halls Of Valor Category --
-----------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Halls Of Valor"], {
	10786,	-- Halls Of Valor
	10788,	-- Heroic: Halls Of Valor
	10789,	-- Mythic: Halls Of Valor
	10544,	-- Stag Party
});

category:addChild(L["Odyn_HoV"], {
	10543,	-- Surge Protector
	10542,	-- I Got What You Mead
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Odyn_HoV"];
end;

category:inheritAchievements();

-----------------------
-- Return to Karazhan Category --
-----------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Return to Karazhan"], {
	11929,	-- Heroic: Return to Karazhan
	11429,	-- Mythic: Return to Karazhan
	11433,	-- Burn after Reading
	11430,	-- One Night in Karazhan
	11431,	-- The Rat Pack
});

category:addChild(L["Opera Hall"], {
	11335,	-- Season Tickets
});

category:addChild(L["Moroes"], {
	11338,	-- Dine and Bash
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Moroes"];
end;

category:addChild(L["Shade of Medivh"], {
	11432,	-- Scared Straight
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Shade of Medivh"];
end;

category:addChild(L["Mana Devourerl"], {
	11431, -- The Rat Pack
});

category:inheritAchievements();

---------------------------
-- Maw of Souls Category --
---------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Maw of Souls"], {
	10807,	-- Maw of Souls
	10808,	-- Heroic: Maw of Souls
	10809,	-- Mythic: Maw of Souls
	10411,	-- Helheim Hath No Fury
});

category:addChild(L["Ymiron, the Fallen King"], {
	10413,	-- Instant Karma
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Ymiron, the Fallen King"];
end;

category:addChild(L["Helya_MoS"], {
	10412,	-- Poor Unfortunate Souls
});

category:inheritAchievements();

--------------------------------
-- Neltharion's Lair Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Neltharion's Lair"], {
	10795,	-- Neltharion's Lair
	10796,	-- Heroic: Neltharion's Lair
	10797,	-- Mythic: Neltharion's Lair
	10996,	-- Got to Ketchum All
});

category:addChild(L["Naraxas"], {
	10875,	-- Can't Eat Just One
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Naraxas"];
end;

category:inheritAchievements();

-----------------------------
-- Seat of the Triumvirate --
-----------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Seat of the Triumvirate"], {
	12007,	-- Heroic: Seat of the Triumverate
	12008,	-- Mythic: Seat of the Triumverate
});

category:addChild(L["Zuraal the Ascended"], {
	12004,	-- Welcome the Void
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Zuraal the Ascended"];
end;

category:addChild(L["Saprish"], {
	12005,	-- Let it All Out
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Saprish"];
end;

category:addChild(L["L'ura"], {
	12009,	-- Darker Side
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["L'ura"];
end;

category:inheritAchievements();

-------------------------
-- The Arcway Category --
-------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["The Arcway"], {
	10813,	-- Mythic: The Arcway
});

category:addChild(L["Ivanyr"], {
	10773,	-- Arcanic Cling
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Ivanyr"];
end;

category:addChild(L["Corstilax"], {
	10775,	-- Clean House
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Corstilax"];
end;

category:addChild(L["Advisor Vandros"], {
	10776,	-- No Time to Waste
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Advisor Vandros"];
end;

category:inheritAchievements();

-----------------------------------
-- Vault of the Wardens Category --
-----------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Legion, L["Vault of the Wardens"], {
	10801,	-- Vault of the Wardens
	10802,	-- Heroic: Vault of the Wardens
	10803,	-- Mythic: Vault of the Wardens
	10707,	-- A Specter, Illuminated
});

category:addChild(L["Ash'Golm"], {
	10679,	-- I Ain't Even Cold
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Ash'Golm"];
end;

category:addChild(L["Cordana Felsong"], {
	10680,	-- Who's Afraid of the Dark?
}).locate = function() 
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Cordana Felsong"];
end;

category:inheritAchievements();



------------------------------------
-- Dungeons & Raids - Legion Raid --
------------------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");


---------------------------
-- World Bosses Category --
---------------------------

AchieveIt.Categories:addCategory(CatID.Raids_Legion, L["World Bosses"], {
	11160,	-- Unleashed Monstrosities
	11786,	-- Terrors of the Shore
});

----------------------
-- Glory Category --
----------------------

AchieveIt.Categories:addCategory(CatID.Raids_Legion, L["Glory"], {
	11180,	-- Glory of the Legion Raider
	11763,	-- Glory of the Tomb Raider
	11987,	-- Glory of the Argus Raider
});

---------------------------
-- The Emerald Nightmare --
---------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Legion, L["The Emerald Nightmare"]);

category:addChild(L["Progress"], {
	10818,	-- Darkbough
	10819,	-- Tormented Guardians
	10820,	-- Rift of Aln
	10821,	-- Mythic: Nythendra
	10823,	-- Mythic: Il'gynoth
	10822,	-- Mythic: Elerethe Renferal
	10824,	-- Mythic: Ursoc,
	10825,	-- Mythic: Dragons of Nightmare
	10826,	-- Mythic: Cenarius
	10827,	-- Mythic: Xavius
}).locate = function()
	return AchieveIt:Contains(nightmare_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

category:addChild(L["Nythendra"], {
	10821,	-- Mythic: Nythendra
	10555,	-- Buggy Fight
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Nythendra"];
end;

category:addChild(L["Il'gynoth, Heart of Corruption"], {
	10823,	-- Mythic: Il'gynoth
	10830,	-- Took the Red Eye Down
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Il'gynoth"] or 
			 UnitName("target") == L["Eye of Il'gynoth"]);
end;

category:addChild(L["Elerethe Renferal"], {
	10822,	-- Mythic: Elerethe Renferal
	10771,	-- webbing Crashers
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Elerethe Renferal"];
end;

category:addChild(L["Ursoc"], {
	10824,	-- Mythic: Ursoc
	10753,	-- Scare Bear
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Ursoc"];
end;

category:addChild(L["Dragons of Nightmare"], {
	10825,	-- Mythic: Dragons of Nightmare
	10663,	-- Imagined Dragons World Tour
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Emeriss"] or
			 UnitName("target") == L["Lethon"] or
			 UnitName("target") == L["Taerar"] or
			 UnitName("target") == L["Ysondre"]);
end;

category:addChild(L["Cenarius"], {
	10826,	-- Mythic: Cenarius
	10772,	-- Use the Force(s)
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Cenarius"];
end;

category:addChild(L["Xavius"], {
	10827,	-- Mythic: Xavius
	10755,	-- I Attack the Darkness
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Xavius"];
end;

category:inheritAchievements();

--------------------
-- Trial of Valor --
--------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Legion, L["Trial of Valor"]);

category:addChild(L["Progress"], {
	11394,	-- Trial of Valor
	11426,	-- Heroic: Trial of Valor
	11396,	-- Mythic: Odyn
	11397,	-- Mythic: Guarm
	11398,	-- Mythic: Helya
}).locate = function()
	return AchieveIt:Contains(tov_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

category:addChild(L["Odyn_ToV"], {
	11396,	-- Mythic: Odyn
	11337,	-- You Runed Everything!
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Odyn_ToV"] or 
			 UnitName("target") == L["Hymdall"] or
			 UnitName("target") == L["Hyrja"]);
end;

category:addChild(L["Guarm"], {
	11397,	-- Mythic: Guarm
	11386,	-- Boneafide Tri Tip
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Guarm"];
end;

category:addChild(L["Helya_ToV"], {
	11398,	-- Mythic: Helya
	11377,	-- Patient Zero
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Helya_ToV"];
end;

category:inheritAchievements();

-------------------
-- The Nighthold --
-------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Legion, L["The Nighthold"]);

category:addChild(L["Progress"], {
	10829,	-- Arcing Aqueducts
	10837,	-- Royal Athenaeum
	10838,	-- Nightspire
	10839,	-- Betrayer's Rise
	10840,	-- Mythic: Skorpyron
	10842,	-- Mythic: Chromatic Anomaly
	10843,	-- Mythic: Trilliax
	10844,	-- Mythic: Spellblade Aluriel
	10847,	-- Mythic: Tichondrius
	10848,	-- Mythic: Krosus
	10846,	-- Mythic: High Botanist Tel'arn
	10845,	-- Mythic: Star Augur Etraeus
	10849,	-- Mythic: Grand Magistrix Elisande
	10850,	-- Mythic: Gul'dan
}).locate = function()
	return AchieveIt:Contains(nighthold_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

category:addChild(L["Skorpyron"], {
	10840,	-- Mythic: Skorpyron
	10678,	-- Cage Rematch
}).locate = function()
    return 	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Skorpyron"];
end;

category:addChild(L["Chronomatic Anomaly"], {
	10842,	-- Mythic: Chronomatic Anomaly
	10697,	-- Grand Opening
}).locate = function()
    return 	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Chronomatic Anomaly"];
end;

category:addChild(L["Trilliax"], {
	10843,	-- Mythic: Trilliax
	10742,	-- Gluten Free
}).locate = function()
    return 	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Trilliax"];
end;

category:addChild(L["Spellblade Aluriel"], {
	10844,	-- Mythic: Spellblade Aluriel
	10817,	-- A Change In Scenery
}).locate = function()
    return 	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Spellblade Aluriel"];
end;

category:addChild(L["Tichondrius"], {
	10847,	-- Mythic: Tichondrius
	10704,	-- Not For You
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
            UnitName("target") == L["Tichondrius"];
end;

category:addChild(L["Krosus"], {
	10848,	-- Mythic: Krosus
	10575,	-- Burning Bridges
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and 
			UnitName("target") == L["Krosus"];
end;

category:addChild(L["High Botanist Tel'arn"], {
	10846,	-- Mythic: High Botanist Tel'arn
	10754,	-- Fruit of All Evil
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
            (UnitName("target") == L["High Botanist Tel'arn"] or
			UnitName("target") == L["Arcanist Tel'arn"] or
			UnitName("target") == L["Naturalist Tel'arn"] or
			UnitName("target") == L["Solarist Tel'arn"]);
end;

category:addChild(L["Star Augur Etraeus"], {
	10845,	-- Mythic: Star Augur Etraeus
	10851,	-- Elementalry!
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
            UnitName("target") == L["Star Augur Etraeus"];
end;

category:addChild(L["Grand Magistrix Elisande"], {
	10849,	-- Mythic: Grand Magistrix Elisande
	10699,	-- Infinitesimal
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Elisande"];
end;

category:addChild(L["Gul'dan"], {
	10850,	-- Mythic: Gul'dan
	10696,	-- I've Got My Eyes On You
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
            UnitName("target") == L["Gul'dan"];
end;

category:inheritAchievements();

----------------------
-- Tomb of Sargeras --
----------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Legion, L["Tomb of Sargeras"]);

category:addChild(L["Progress"], {
	11787,	-- The Gates of Hell
	11788,	-- Wailing Halls
	11789,	-- Chamber of the Avatar
	11790,	-- Deceiver's Fall
	11767,	-- Mythic: Goroth
	11774,	-- Mythic: Demonic Inquisition
	11775,	-- Mythic: Harjatan
	11777,	-- Mythic: Sisters of the Moon
	11776,	-- Mythic: Mistress Sassz'ine
	11778,	-- Mythic: The Desolate	Host
	11779,	-- Mythic: Maiden of Vigilance
	11780,	-- Mythic: Fallen Avatar
	11781,	-- Mythic: Kil'jaeden
	11763,	-- Glory of the Tomb Raider
}).locate = function()
	return AchieveIt:Contains(tomb_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

category:addChild(L["Goroth"], {
	11767,	-- Mythic: Goroth
	11724,	-- Fel Turkey
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Goroth"];
end;

category:addChild(L["Demonic Inquisition"], {
	11774,	-- Mythic: Demonic Inquisition
	11696,	-- Grin and Bear It
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Atrigan"] or
			UnitName("target") == L["Belac"]);
end;

category:addChild(L["Harjatan"], {
	11775,	-- Mythic: Harjatan
	11699,	-- Grand Fin-ale
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Harjatan"];
end;

category:addChild(L["Sisters of the Moon"], {
	11777,	-- Mythic: Sisters of the Moon
	11773,	-- Wax On, Wax Off
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Huntress Kasparian"];
end;

category:addChild(L["Mistress Sassz'ine"], {
	11776,	-- Mythic: Mistress Sassz'ine
	11676,	-- Five Course Seafood Buffet
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Mistress Sassz'ine"];
end;

category:addChild(L["The Desolate Host"], {
	11778,	-- Mythic: The Desolate Host
	11674,	-- Great Soul, Great Purpose
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Engine of Souls"];
end;

category:addChild(L["Maiden of Vigilance"], {
	11779,	-- Mythic: Maiden of Vigilance
	11675,	-- Sky Walker
}).locate = function()
    return  not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Maiden of Vigilance"];
end;

category:addChild(L["Fallen Avatar"], {
	11780,	-- Mythic: Fallen Avatar
	11683,	-- Bingo!
}).locate = function()
    return 	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Fallen Avatar"];
end;

category:addChild(L["Kil'jaeden_ToS"], {
	11781,	-- Mythic: Kil'jaeden
	11770,	-- Dark Souls
}).locate = function()
    return 	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Kil'jaeden_ToS"];
end;

category:inheritAchievements();

---------------------------------
-- Antorus, The Burning Throne --
---------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Legion, L["Antorus, The Burning Throne"]);

category:addChild(L["Progress"], {
	11988,	-- Light's Breach
	11989,	-- Hopes End
	11990,	-- Forbidden Descent
	11991,	-- Seat of the Pantheon
	11992,	-- Mythic: Garothi Worldbreaker
	11993,	-- Mythic: Hounds of Sargeras
	11994,	-- Mythic: Antoran High Command
	11995,	-- Mythic: Portalkeepr Hasabel
	11996,	-- Mythic: Eonar the Lifebinder
	11997,	-- Mythic: Imonar the Soulhunter
	11998,	-- Mythic: Kin'aroth
	11999,	-- Mythic: Varimathras
	12000,	-- Mythic: The Coven of Shivarra
	12001,	-- Mythic: Aggramar
	12002,	-- Mythic: Argus the Unmaker
	11987,	-- Glory of the Argus Raider
}).locate = function()
	return AchieveIt:Contains(antorus_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

category:addChild(L["Garothi Worldbreaker"], {
	11992,	-- Mythic: Garothi Worldbreaker
	11930,	-- Worm-monger
}).locate = function()
    return  not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Garothi Worldbreaker"];
end;

category:addChild(L["Felhounds of Sargeras"], {
	11993,	-- Mythic: Hounds of Sargeras
	12065,	-- Hounds Good To Me
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["F'harg"] or
			UnitName("target") ==L["Shatug"]);
end;

category:addChild(L["Antoran High Command"], {
	11994,	-- Mythic: Antoran High Command
	12129,	-- This is the War Room!
}).locate = function()
	return not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Admiral Svirax"] or
			UnitName("target") ==L["Chief Engineer Ishkar"] or 
			UnitName("target") == L["General Erodus"]);
end;

category:addChild(L["Portalkeeper Hasabel"], {
	11995,	-- Mythic: Portalkeeper Hasabel
	11928,	-- Portal Combat
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Portalkeeper Hasabel"];
end;

category:addChild(L["Eonar the Life-Binder"], {
	11996,	-- Mythic: Eonar the Life-Binder
	12067,	-- Spheres of Influence
}).locate = function()
    return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Essence of Eonar"];
end;

category:addChild(L["Imonar the Soulhunter"], {
	11997,	-- Mythic: Imonar the Soulhunter
	11949,	-- Hard to Kill
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Imonar the Soulhunter"];
end;

category:addChild(L["Kin'garoth"], {
	11998,	-- Mythic: Kin'garoth
	12030,	-- The World Revolves Around Me
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Kin'garoth"];
end;

category:addChild(L["Varimathras"], {
	11999,	-- Mythic: Varimathras
	11948,	-- Together We Stand
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Varimathras"];
end;

category:addChild(L["The Coven of Shivarra"], {
	12000,	-- Mythic: The Coven of Shivarra
	12046,	-- Remember the Titans
}).locate = function()
    return 	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Noura, Mother of Flames"] or 
			UnitName("target") == L["Asara, Mother of Night"] or
			UnitName("target") ==L["Diima, Mother of Gloom"] or 
			UnitName("target") == L["Thu'raya, Mother of the Cosmos"]);
end;

category:addChild(L["Aggramar"], {
	12001,	-- Mythic: Aggramar
	11915,	-- Don't Sweat the Technique
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Aggramar"];
end;

category:addChild(L["Argus the Unmaker"], {
	12002,	-- Mythic: Argus the Unmaker
	12257,	-- Stardust Crusaders
}).locate = function()
    return not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Argus the Unmaker"];
end;

category:inheritAchievements();

