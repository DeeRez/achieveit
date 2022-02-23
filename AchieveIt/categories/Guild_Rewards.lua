----------------------
-- Rewards Category --
----------------------
local	CatID	= AchieveItConstants.CategoryIDs
local	Zone = AchieveItConstants.zone
local Expac = AchieveItConstants.ExpacNames
local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- Add category
local category = AchieveIt.GuildCategories:addCategory(false, _G["REWARDS"]);

-----------
-- Items --
-----------

local itemsCategory = category:addChild(_G["ITEMS"], {});

------------------------------
-- Items / Battle Standards --
------------------------------

itemsCategory:addChild(L["Battle Standards"], {
	5422,	-- A Daily Routine
	5143,	-- Guild Cataclysm Dungeon Hero
	4860,	-- Working as a Team
	9388,	-- Guild Draenor Dungeon Hero
});

--------------------
-- Items / Cloaks --
--------------------

itemsCategory:addChild(L["Cloaks"], {
	4989,	-- A Class Act
	5035,	-- Master Crafter
	6702,	-- Master Pandaria Crafter
});

-----------------------
-- Items / Heirlooms --
-----------------------

itemsCategory:addChild(L["Heirlooms"], {
	6626,	-- Working Better as a Team
});

---------------------------
-- Items / Bank Vouchers --
---------------------------

itemsCategory:addChild(L["Bank Vouchers"], {
	{id = 5152, faction = AchieveIt.Factions.ALLIANCE },	-- Stay Classy
	{id = 5158, faction = AchieveIt.Factions.HORDE}	-- Stay Classy
});

--------------------
-- Items / Shirts --
--------------------

itemsCategory:addChild(L["Shirts"], {
	6681,	-- Guild Pandaria Dungeon Hero
	{id = 6644, faction = AchieveIt.Factions.ALLIANCE},	-- Pandaren Embassy
	{id = 6664, faction = AchieveIt.Factions.HORDE},	-- Pandaren Embassy
	{id = 7448, faction = AchieveIt.Factions.ALLIANCE},	-- Scenario Roundup
	{id = 7449, faction = AchieveIt.Factions.HORDE},	-- Scenario Roundup
});

itemsCategory:inheritAchievements();

------------
-- Mounts --
------------

category:addChild(_G["MOUNTS"], {
	4988,	-- Guild Glory of the Cataclysm Raider
	6682,	-- Guild Glory of the Pandaria Raider
	9669,	-- Guild Glory of the Draenor Raider
});

----------
-- Pets --
----------

category:addChild(_G["PETS"], {
	{id = 5179, faction = AchieveIt.Factions.HORDE},	-- Alliance Slayer
	{id = 5031, faction = AchieveIt.Factions.ALLIANCE},	-- Horde Slayer
	5144,	-- Critter Kill Squad
	5840,	-- Dragonwrath, Tarecgosa's Rest - Guild Edition
	5201,	-- Profit Sharing
	{id = 5812, faction = AchieveIt.Factions.ALLIANCE},	-- United Nations
	{id = 5892, faction = AchieveIt.Factions.HORDE},	-- United Nations
});

-------------
-- Recipes --
-------------

category:addChild(_G["TRADESKILL_SERVICE_LEARN"], {
	5024,	-- Better Leveling Through Chemistry
	5465,	-- Mix Master
	5467,	-- Set the Oven to "Cataclysmic"
	5036,	-- That's a Lot of Bait
});

category:inheritAchievements();