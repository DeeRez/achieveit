------------------
-- Pet Battles  --
------------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 15119;

-----------------------
-- Progress Category --
-----------------------

AchieveIt.Categories:addCategory(categoryId, L["Progress"], {


	-- An Awfully Big Adventure
	9069,
	-- Anomalous Animals of Argus
	12088,
	-- Battle on the Broken Isles
	10876,
	-- Big City Pet Brawler
	6622,
	-- Family Familiar
	9696,
	-- Legendary Pet Brawler
	6592,
	-- Master of the Masters
	8518,
	-- Tiny Terrors in Tanaan
	10052
});

----------------------
-- Pandaria Category --
----------------------

AchieveIt.Categories:addCategory(categoryId, L["Pandaria"], {
    
	-- The Celestial Tournament
	8410
	
});

----------------------
-- Draenor Category --
----------------------

AchieveIt.Categories:addCategory(categoryId, L["Draenor"], {
		-- Draenic Pet Battler
		9463
});

---------------------------
-- Broken Isles Category --
---------------------------

	AchieveIt.Categories:addCategory(categoryId, L["Broken Isles"], {
	-- Aquatic Acquiescence
	9686,
	-- Best of the Beasts
	9687,
	-- Dragons!
	9689,
	-- Flock Together
	9691,
	-- Master of Magic
	9693,
	-- Mousing Around
	9688,
	-- Murlocs, Harpies, and Wolvar, Oh My!
	9692,
	-- Ragnaros, Watch and Learn
	9690,
	-- Roboteer
	9694,
	-- The Lil' Necromancer
	9695
});