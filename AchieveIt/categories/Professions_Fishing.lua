--------------
-- Fishing  --
--------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 171;

--------------
-- Progress --
--------------

AchieveIt.Categories:addCategory(categoryId, L["Progress"], {
	
	-- Accomplished Angler
	1516,
	-- X Fish
	1556,1557,1558,1559,1560,1561,
	-- X Fisherman
	126,127,128,129,130,4917,6839,9503,10594,
	-- Fish Don't Leave Footprints
	1243,
	-- The Old Gnome and the Sea
	153,
	-- The Scavenger
	1257,
	-- Turtles All the Way Down
	3218

});

------------------------
-- Old World Category --
------------------------

AchieveIt.Categories:addCategory(categoryId, L["Old World"], {
	
	-- The Limnologist
	5478,
	-- The Oceanographer
	5479,
	-- Gone Fishin'
	5851,
	-- Fish or Cut Bait: Darnassus
	{ id = 5848, faction = AchieveIt.Factions.ALLIANCE },
	-- Fish or Cut Bait: Ironforge
	{ id = 5847, faction = AchieveIt.Factions.ALLIANCE },
	-- Fish or Cut Bait: Orgrimmar
	{ id = 5477, faction = AchieveIt.Factions.HORDE },
	-- Fish or Cut Bait: Stormwind
	{ id = 5476, faction = AchieveIt.Factions.ALLIANCE },
	-- Fish or Cut Bait: Thunder Bluff
	{ id = 5849, faction = AchieveIt.Factions.HORDE },
	-- Fish or Cut Bait: Undercity
	{ id = 5850, faction = AchieveIt.Factions.HORDE },
	-- Master Angler of Azeroth
	306,
	-- Old Crafty
	1836,
	-- Old Ironjaw
	1837,
	-- The Fishing Diplomat
	150
	
});

AchieveIt.Categories:addCategory(categoryId, L["Outland"], {

	-- Outland Angler
	1225,
	-- Mr. Pinchy's MAgical Crawdad Box
	726,
	-- Old Man Barlowned
	905,
	-- The Lurker Above
	144
});

AchieveIt.Categories:addCategory(categoryId, L["Northrend"], {

	-- Northrend Angler
	1517,
	-- A Penny For Your Thoughts
	2094,
	-- Chasing Marcia
	3217,
	-- I Smell A Giant Rat
	1958,
	-- Silver in the City
	2095,
	-- There's Gold In That There Fountain
	1957
	
});

AchieveIt.Categories:addCategory(categoryId, L["Pandaria"], {

	-- Pandarian Angler
	7611,
	-- Learning From The Best
	7274
	
});

AchieveIt.Categories:addCategory(categoryId, L["Draenor"], {


	-- Draenor Angler
	9462,
	-- Abyssal Gulper Eel Angler
	9456,
	-- Blackwater Whiptail Angler
	9457,
	-- Blind Lake Sturgeon Angler
	9458,
	-- Fat Sleeper Angler
	9459,
	-- Fire Ammonite Angler
	9455,
	-- Jawless Skulker Angler
	9460,
	-- Sea Scorpion Angler,
	9461	
	
});

AchieveIt.Categories:addCategory(categoryId, L["Broken Isles"], {


	-- A Cast Above the Rest
	10595,
	-- Bigger Fish to Fry
	10596,
	-- Fishing 'Round the Isles
	10598,
	-- Legion Aquaculture
	10597,
	-- Locking Down the Docks
	7614,
	-- The Wish Remover
	10722
	
});
