
----------------------
-- General Category --
----------------------

local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-------------------------
-- Character / Levelling --
-------------------------

function AchieveIt:LoadCharacterCategories()


AchieveIt.Categories:addCategory(CatID.Character, L["Levelling"], {
	6,		-- Level 10
	7,		-- Level 20
	8,		-- Level 30
	9,		-- Level 40
	14782,-- Level 50
	14783,-- Level 60
},
	1);

---------------------
-- Character / Equip --
---------------------

AchieveIt.Categories:addCategory(CatID.Character, L["Equip"], {
	14796, -- Superior
	14797, -- Epic
}, 1);

---------------------
-- Character / Money --
---------------------

AchieveIt.Categories:addCategory(CatID.Character, L["Money"], {

    1176,	-- Got My Mind On My Money
    1177,	-- Got My Mind On My Money
    1178,	-- Got My Mind On My Money
    1180,	-- Got My Mind On My Money
    1181,	-- Got My Mind On My Money
    5455,	-- Got My Mind On My Money (50k)
    5456,	-- Got My Mind On My Money (100k)
    6753,	-- Got My Mind On My Money (200k)
    9487,	-- Got My Mind On My Draenor Money (10k in Draenor)
}, 1);

----------------------
-- Character / Riding --
----------------------

AchieveIt.Categories:addCategory(CatID.Character, L["Riding"], {
    891,		-- Giddy Up!
    889,		-- Fast and Furious
    890,		-- Into The Wild Blue Yonder
    5180,	-- Breaking The Sound Barrier
}, 1);

--------------------------
-- General / Characters --
--------------------------

AchieveIt.Categories:addCategory(CatID.Character, L["Characters"], {
    7382,	-- Dynamic Duo
    7383,	-- Terrific Trio
    7384,	-- Quintessential Quintet
    7380		-- Double Agent
}, 1);

---------------------
-- General / Other --
---------------------

AchieveIt.Categories:addCategory(CatID.Character, L["Other"], {
    545,	-- Shave and a Haircut
    546,	-- Safe Deposit
}, 1);

end
