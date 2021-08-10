-- Dungeons & Raids - The Burning Crusade

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-----------------------
-- Dungeons Category --
-----------------------

local category = AchieveIt.Categories:addCategory(CatID.DungeonsAndRaids_BurningCrusade, Difficulty.Normal, {
	660,	-- The Arcatraz
	666,	-- Auchenai Crypts
	648,	-- The Blood Furnace
	659,	-- The Botanica
	652,	-- The Escape From Durnholde
	647,	-- Hellfire Ramparts
	661,	-- Magister's Terrace
	651,	-- Mana-Tombs
	658,	-- The Mechanar
	655,	-- Opening of the Dark Portal
	653,	-- Sethekk Halls
	654,	-- Shadow Labyrinth
	657,	-- The Shattered Halls
	656,	-- The Steamvault
	649,	-- The Slave Pens
	650,	-- Underbog
});

local category = AchieveIt.Categories:addCategory(CatID.DungeonsAndRaids_BurningCrusade, Difficulty.Heroic, {
	667,	-- Heroic: Hellfire Ramparts
	668,	-- Heroic: The Blood Furnace
	669,	-- Heroic: The Slave Pens
	670,	-- Heroic: Underbog
	671,	-- Heroic: Mana-Tombs
	672,	-- Heroic: Auchenai Crypts
	673,	-- Heroic: The Escape From Durnholde
	674,	-- Heroic: Sethekk Halls
	675,	-- Heroic: Shadow Labyrinth
	676,	-- Heroic: Opening of the Dark Portal
	677,	-- Heroic: The Steamvault
	678,	-- Heroic: The Shattered Halls
	679,	-- Heroic: The Mechanar
	680,	-- Heroic: The Botanica
	681,	-- Heroic: The Arcatraz
	682,	-- Heroic: Magister's Terrace
});

local category = AchieveIt.Categories:addCategory(CatID.DungeonsAndRaids_BurningCrusade, _G["RAIDS"], {
	690,	-- Karazhan
	692,	-- Gruul's Lair
	693,	-- Magtheridon's Lair
	694,	-- Serpentshrine Cavern
	696,	-- Tempest Keep
	695,	-- The Battle for Mount Hyjal
	697,	-- The Black Temple
	698,	-- Sunwell Plateau
});
