
----------------------
-- Quests / Legion --
----------------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 15252;

--------------------
-- Zones Category --
--------------------

AchieveIt.Categories:addCategory(categoryId, L["Progress"], {

	-- Broken Isles Pathfinder, Part One
	11190,
	-- Broken Isles Pathfinder, Part Two
	11446,
	-- Loremaster of Legion
	11157,
	-- Ain't No mountain High Enough
	10059,
	-- Azsuna Matata
	10763,	
	-- Good Suramarmaritan
	11124,
	-- That's Val'sharah Folks!
	10698,
	-- Vrykul Stroy, Bro
	10790,
	-- Breaching the Tomb
	11546,
	-- Champions of Legionfall
	11846,
	-- Crate Expectations
	11681,
	-- Harbinger
	11240,
	-- Pillars of Creation
	10877,
	-- Tehd and Marius' Excellent Adventure
	11186--[[,
	-- You Are Now Prepared
	12066]]
	
});
	
----------------------
-- The Broken Shore	--
----------------------

------------
-- Azsuna --
------------

AchieveIt.Categories:addCategory(categoryId, L["Azsuna"], {

	-- Azsuna Matata
	10763
}).locate = function()

    -- in zone
    return 1015 == GetCurrentMapAreaID();

end;

------------------
-- Highmountain --
------------------

AchieveIt.Categories:addCategory(categoryId, L["Highmountain"], {

	-- Ain't No mountain High Enough
	10059,
	-- Drum Circle
	10398,
	-- Hatchling of the Talon
	10774,
	-- Zoom!
	10626

}).locate = function()

    -- in zone
    return 1024 == GetCurrentMapAreaID();

end;

---------------
-- Stormheim --
---------------

AchieveIt.Categories:addCategory(categoryId, L["Stormheim"], {

	-- Vrykul Story, Bro
	10790,
	-- Lock, Stock and Two Smoking Goblins
	11232,
	-- What A Ripoff!
	10793

}).locate = function()

    -- in zone
    return 1017 == GetCurrentMapAreaID();

end;
	
----------------
-- Val'sharah --
----------------

AchieveIt.Categories:addCategory(categoryId, L["Val'sharah"], {

	-- That's Val'sharah Folks
	10698
	
}).locate = function()

    -- in zone
    return 1018 == GetCurrentMapAreaID();

end;
	
-------------
-- Suramar --
-------------

AchieveIt.Categories:addCategory(categoryId, L["Suramar"], {

	-- Good Suramarmaritan
	11124,
	-- Leyland Bling
	10756,
	-- Nightfallen But Not Forgotten
	10617,
	-- Insurrection
	11340,
	-- Now You're Thinking With Portals
	11125,
	-- Why Can't I Hold All This Mana?
	11133
	
}).locate = function()

    -- in zone
    return 1033 == GetCurrentMapAreaID();

end;

------------------
-- Broken Shore --
------------------

AchieveIt.Categories:addCategory(categoryId, L["Broken Shore"], {

	-- Breaching the Tomb
	11546,
	-- A Magic Contribution
	11731,
	-- A Magnificent Contribution
	11732,
	-- Disrupting the Nether
	11737,
	--It'll Nether Happen
	11738,
	--Take Command
	11735,
	-- Assume Command
	11736,
	-- Crate Expectations
	11681,
	-- They See Me Rolling
	11607
	
	
}).locate = function()

    -- in zone
    return 1021 == GetCurrentMapAreaID();

end;