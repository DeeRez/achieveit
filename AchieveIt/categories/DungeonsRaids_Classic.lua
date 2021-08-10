-- Dungeons & Raids - Classic

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");


local category = AchieveIt.Categories:addCategory(CatID.DungeonsAndRaids_Classic, _G["DUNGEONS"], {
	1283,	-- Classic Dungeonmaster
	632,	-- Blackfathom Deeps
	642,	-- Blackrock Depths
	628,	-- Deadmines
	634,	-- Gnomeregan
	644,	-- King of Dire Maul
	643,	-- Lower Blackrock Spire
	640,	-- Maraudon
	629,	-- Ragefire Chasm
	636,	-- Razorfen Downs
	635,	-- Razorfen Kraul
	7413,	-- Scarlet Halls
	637,	-- Scarlet Monastery
	645,	-- Scholomance
	631,	-- Shadowfang Keep
	633,	-- Stormwind Stockade
	646,	-- Stratholme
	641,	-- Sunken Temple
	638,	-- Uldaman
	630,	-- Wailing Caverns
	639,	-- Zul'Farrak
});

local category = AchieveIt.Categories:addCategory(CatID.DungeonsAndRaids_Classic, _G["RAIDS"], {
	685,	-- Blackwing Lair
	686,	-- Molten Core
	689,	-- Ruins of Ahn'Qiraj
	687,	-- Temple of Ahn'Qiraj
});
