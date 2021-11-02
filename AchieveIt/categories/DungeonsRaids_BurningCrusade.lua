-- Dungeons & Raids - The Burning Crusade

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local bc_dungeon_ids ={ 
	246, --	The Shattered Halls
	256, -- Auchenai Crypts - Halls of the Hereafter
	257, -- Auchenai Crypts - Bridge of Souls
	258, -- Sethekk Halls - Veil Sethekk
	259, -- Sethekk Halls - Halls of Mourning
	260, -- Shadow Labyrinth
	261, -- The Blood Furnace
	262, -- The Underbog
	263, -- The Steamvault - The Steamvault
	264, -- The Steamvault - The Cooling Pools
	265, -- The Slave Pens
	266, -- The Botanica
	267, -- The Mechanar - The Mechanar
	268, -- The Mechanar - Calculation Chamber
	269, -- The Arcatraz - Stasis Block: Trion
	270, -- The Arcatraz - Stasis Block: Maximus
	271, -- The Arcatraz - Containment Core
	272, -- Mana-Tombs	Dungeon	
	273, -- The Black Morass
	274, -- Old Hillsbrad Foothills
	347, -- Hellfire Ramparts
	348, -- Magisters' Terrace - Grand Magister's Asylum
	349 -- Magisters' Terrace - Observation Grounds
};

local bc_raid_ids = {
329, -- Hyjal Summit
330, -- Gruul's Lair
331, -- Magtheridon's Lair
332, -- Serpentshrine Cavern
334, -- Tempest Keep
335, -- Sunwell Plateau - Sunwell Plateau
336, -- Sunwell Plateau - Shrine of the Eclipse
339, -- Black Temple - Black Temple
340, -- Black Temple - Karabor Sewers
341, -- Black Temple - Sanctuary of Shadows
342, -- Black Temple - Halls of Anguish
343, -- Black Temple - Gorefiend's Vigil
344, -- Black Temple - Den of Mortal Delights
345, -- Black Temple - Chamber of Command
346, -- Black Temple - Temple Summit
350, -- Karazhan - Servant's Quarters
351, -- Karazhan - Upper Livery Stables
352, -- Karazhan - The Banquet Hall
353, -- Karazhan - The Guest Chambers
354, -- Karazhan - Opera Hall Balcony
355, -- Karazhan - Master's Terrace
356, -- Karazhan - Lower Broken Stair
357, -- Karazhan - Upper Broken Stair
358, -- Karazhan - The Menagerie
359, -- Karazhan - Guardian's Library
360, -- Karazhan - The Repository
361, -- Karazhan - Upper Library
362, -- Karazhan - The Celestial Watch
363, -- Karazhan - Gamesman's Hall
364, -- Karazhan - Medivh's Chambers
365, -- Karazhan - The Power Station
366, -- Karazhan - Netherspace
};
	
-----------------------
-- Dungeons Category --
-----------------------
local bc_dungeons_cat = AchieveIt.Categories:addCategory(CatID.DungeonsAndRaids_BurningCrusade,_G["DUNGEONS"]);

bc_dungeons_cat:addChild(Difficulty.Normal,{
	666,	-- Auchenai Crypts
	647,	-- Hellfire Ramparts
	661,	-- Magister's Terrace
	651,	-- Mana-Tombs
	655,	-- Opening of the Dark Portal
	653,	-- Sethekk Halls
	654,	-- Shadow Labyrinth
	660,	-- The Arcatraz
	648,	-- The Blood Furnace
	659,	-- The Botanica
	652,	-- The Escape From Durnholde
	658,	-- The Mechanar
	657,	-- The Shattered Halls
	649,	-- The Slave Pens
	656,	-- The Steamvault
	650,	-- Underbog
}).locate = function()

	return AchieveIt:Contains(bc_dungeon_ids,C_Map.GetBestMapForUnit("player")) -- user is in one of these dungeons
			and AchieveIt.difficulty.isDungeon(); -- and it is a normal version

end;

bc_dungeons_cat:addChild(Difficulty.Heroic,{
	672,	-- Heroic: Auchenai Crypts
	667,	-- Heroic: Hellfire Ramparts
	682,	-- Heroic: Magister's Terrace
	671,	-- Heroic: Mana-Tombs
	676,	-- Heroic: Opening of the Dark Portal
	674,	-- Heroic: Sethekk Halls
	675,	-- Heroic: Shadow Labyrinth
	681,	-- Heroic: The Arcatraz
	680,	-- Heroic: The Botanica
	668,	-- Heroic: The Blood Furnace
	673,	-- Heroic: The Escape From Durnholde
	679,	-- Heroic: The Mechanar
	678,	-- Heroic: The Shattered Halls
	669,	-- Heroic: The Slave Pens
	677,	-- Heroic: The Steamvault
	670,	-- Heroic: Underbog
}).locate = function()

	return AchieveIt:Contains(bc_dungeon_ids,C_Map.GetBestMapForUnit("player")) -- user is in one of these dungeons
			and AchieveIt.difficulty.isHeroicDungeon(); -- and it is a heroic version

end;

bc_dungeons_cat:inheritAchievements();

AchieveIt.Categories:addCategory(CatID.DungeonsAndRaids_BurningCrusade, _G["RAIDS"], {
	692,	-- Gruul's Lair
	690,	-- Karazhan
	693,	-- Magtheridon's Lair
	694,	-- Serpentshrine Cavern
	698,	-- Sunwell Plateau
	696,	-- Tempest Keep
	695,	-- The Battle for Mount Hyjal
	697,	-- The Black Temple
}).locate = function()
	return AchieveIt:Contains(bc_raid_ids,C_Map.GetBestMapForUnit("player"))
end;

