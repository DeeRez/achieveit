-- Dungeons & Raids - Classic

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local classic_dungeon_ids ={
221, -- Blackfathom Deeps - The Pool of Ask'Ar
222, -- Blackfathom Deeps - Moonshrine Sanctum
223, -- Blackfathom Deeps - The Forgotten Pool
242, -- Blackrock Depths - Detention Block
243, -- Blackrock Depths - Shadowforge City
291, -- The Deadmines - The Deadmines
292, -- The Deadmines - Ironclad Cove
226, -- Gnomeregan - The Hall of Gears
227, -- Gnomeregan - The Dormitory
228, -- Gnomeregan - Launch Bay
229, -- Gnomeregan - Tinkers' Court
234, -- Dire Maul	Orphan	Feralas	view	
235, -- Dire Maul - Gordok Commons
236, -- Dire Maul - Capital Gardens
237, -- Dire Maul - Court of the Highborne
238, -- Dire Maul - Prison of Immol'Thar
239, -- Dire Maul - Warpwood Quarter
240, -- Dire Maul - The Shrine of Eldretharr
250, -- Blackrock Spire - Tazz'Alor
251, -- Blackrock Spire - Skitterweb Tunnels
252, -- Blackrock Spire - Hordemar City
253, -- Blackrock Spire - Hall of Blackhand
254, -- Blackrock Spire - Halycon's Lair
255, -- Blackrock Spire - Chamber of Battle
280, -- Maraudon - Caverns of Maraudon	
281, -- Maraudon - Zaetar's Grave
213, -- Ragefire Chasm
300, -- Razorfen Downs
301, -- Razorfen Kraul
431, -- Scarlet Halls - Training Grounds
432, -- Scarlet Halls - Athenaeum
435, -- Scarlet Monastery - Forlorn Cloister
436, -- Scarlet Monastery - Crusader's Chapel
476, -- Scholomance - The Reliquary
477, -- Scholomance - Chamber of Summoning
478, -- Scholomance - The Upper Study
479, -- Scholomance - Headmaster's Study
310, -- Shadowfang Keep - The Courtyard
311, -- Shadowfang Keep - Dining Hall
312, -- Shadowfang Keep - The Vacant Den
313, -- Shadowfang Keep - Lower Observatory
314, -- Shadowfang Keep - Upper Observatory
315, -- Shadowfang Keep - Lord Godfrey's Chamber
316, -- Shadowfang Keep - The Wall Walk
225, -- The Stockade
317, -- Stratholme - Crusader's Square
318, -- Stratholme - The Gauntlet
220, -- The Temple of Atal'Hakkar
230, -- Uldaman - Hall of the Keepers
231, -- Uldaman - Khaz'Goroth's Seat
279, -- Wailing Caverns
219, -- Zul'Farrak
};

local classic_raid_ids = {
287, -- Blackwing Lair - Dragonmaw Garrison
288, -- Blackwing Lair - Halls of Strife
289, -- Blackwing Lair - Crimson Laboratories
290, -- Blackwing Lair - Nefarian's Lair
232, -- Molten Core
247, -- Ruins of Ahn'Qiraj
319, -- Ahn'Qiraj - The Hive Undergrounds
320, -- Ahn'Qiraj - The Temple Gates
321, -- Ahn'Qiraj - Vault of C'Thun
};

AchieveIt.Categories:addCategory(CatID.DungeonsAndRaids_Classic, _G["DUNGEONS"], {
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
}).locate = function()
	return AchieveIt:Contains(classic_dungeon_ids,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isDungeon();
end;

AchieveIt.Categories:addCategory(CatID.DungeonsAndRaids_Classic, _G["RAIDS"], {
	685,	-- Blackwing Lair
	686,	-- Molten Core
	689,	-- Ruins of Ahn'Qiraj
	687,	-- Temple of Ahn'Qiraj
}).locate = function()
	return AchieveIt:Contains(classic_raid_ids,C_Map.GetBestMapForUnit("player"));
end;
