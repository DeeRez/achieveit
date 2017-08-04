------------------
-- Pet Battles  --
------------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 170;

-------------
-- General --
-------------

AchieveIt.Categories:addCategory(categoryId, L["General"], {

	-- Cooking Awards
	1988,1999,2000,2001,2002,
	-- Critter Gitter
	1781,
	-- Dinner Impossible
	1785,
	
});

------------------------
-- Old World Category --
------------------------

AchieveIt.Categories:addCategory(categoryId, L["Old World"], {


	-- A Bunch of Lunch
	5845,
	-- Captain Rumsey's Lager
	1801,
	-- Let's Do Lunch: Darnassus
	{ id = 5842, faction = AchieveIt.Factions.ALLIANCE },
	-- Let's Do Lunch: Ironforge
	{ id = 5841, faction = AchieveIt.Factions.ALLIANCE },
	-- Let's Do Lunch: Orgrimmar
    { id = 5475, faction = AchieveIt.Factions.HORDE },
	-- Let's Do Lunch: Stormwind
	{ id = 5474, faction = AchieveIt.Factions.ALLIANCE },
	-- Let's Do Lunch: Thunder Bluff
    { id = 5843, faction = AchieveIt.Factions.HORDE },
	-- Let's Do Lunch: Undercity
    { id = 5844, faction = AchieveIt.Factions.HORDE },
	-- The Cataclysmic Gourmet
	5472,5473	
	
});

AchieveIt.Categories:addCategory(categoryId, L["Outland"], {


	-- Kickin' It Up a Notch
	906,
	-- The Cake Is Not A Lie
	877,
	-- The Outland Gourmet
	1800
	
});

AchieveIt.Categories:addCategory(categoryId, L["Northrend"], {

	
	-- Cooking With Style
	3296,
	-- Our Daily Bread
	{ id = 1782, faction = AchieveIt.Factions.ALLIANCE },
	-- Our Daily Bread
    { id = 1783, faction = AchieveIt.Factions.HORDE },
	-- Second That Emotion
	1780,
	-- The Northrend Gourmet
	1777,1778,1779
	
});



AchieveIt.Categories:addCategory(categoryId, L["Pandaria"], {


	-- Master of Pandaren Cooking
	7306,
	-- Master of the Brew
	7305,
	-- Master of the Grill
	7300,
	-- Master of the Oven
	7304,
	-- Master of the Pot
	7302,
	-- Master of the Steamer
	7303,
	-- Master of the Wok
	7301,
	-- Now I am the Master
	7325,
	-- The Pandaren Gourmet
	7326
	
});

AchieveIt.Categories:addCategory(categoryId, L["Draenor"], {


	-- The Draenor Gourmet
	9501
	
});

AchieveIt.Categories:addCategory(categoryId, L["Broken Isles"], {

	-- All Grown Up
	10591,
	-- Everything Tastes Better
	10593,
	-- Never A Day's Rest
	10592,
	-- The Legion Menu
	10762
});
