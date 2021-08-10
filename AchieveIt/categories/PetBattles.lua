------------------
-- Pet Battles  --
------------------
local	CatID	= AchieveItConstants.CategoryIDs
local	Zone = AchieveItConstants.zone
local Expac = AchieveItConstants.ExpacNames
local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-----------------------
-- Progress Category --
-----------------------

AchieveIt.Categories:addCategory(CatID.PetBattles_Battle, L["Progress"], {
	--Win X Battles
	6594, -- Cat Fight! (10)
	6593, -- Experienced Pet Battler (50)
	6462, -- Master Pet Battler (250)
	6591, -- Grand Master Pet Battler (1000)
	6592, -- Legendary Pet Battler (5000)

	--Win Battle in X Zones
	6558, -- Local Pet Mauler (10)
	6559, -- Traveling Pet Mauler (30)
	6560, -- World Pet Mauler (60)

	-- X consecutive battles
	6618, -- On A Roll (10)
	6619, -- Win Streak (25)


	9069,	-- An Awfully Big Adventure
	12088,	-- Anomalous Animals of Argus
	10876,	-- Battle on the Broken Isles
	12936,	-- Battle on Zandalar and Kul Tiras
	6584, -- Big City Pet Brawlin' - Alliance
	6621, -- Big City Pet Brawlin' - Horde
	6622,	-- Big City Pet Brawler
	12290,	-- Family Brawler
	9696,	-- Family Familiar
	12100,	-- Family Fighter
	8518,	-- Master of the Masters (All Celestial)
	10052,	-- Tiny Terrors in Tanaan
	6851,	-- Take 'Em All On!
	13279,	--'Family Battler

});

AchieveIt.Categories:addCategory(CatID.PetBattles_Battle, _G["PVP"], { --The _G isn't needed, but it otherwise looks like a typo with such a short global name
	12280, -- Aquatic Brawler
	12281, -- Beast Brawler
	12284, -- Critter Brawler
	12287, -- Dragonkin Brawler
	12282, -- Elemental Brawler
	12286, -- Flying Brawler
	12289, -- Humanoid Brawler
	12283, -- Magic Brawler
	12279, -- Mechanical Brawler
	12285, -- Undead Brawler
	12290, -- Family Brawler


	-- Find Battle with team of 25s
	8297, -- Merciless Pet Brawler (10)
	8298, -- Vengeful Pet Brawler (25)
	8300, -- Brutal Pet Brawler (250)
	8301, -- Deadly Pet Brawler (1000)

	-- PvP battles
	6595, -- Pet Brawler (10)
	6596, -- Experienced Pet Brawler (50)
	6597, -- Master Pet Brawler (250)
	6598, -- Grand Master Pet Brawler (1000)
	6599, -- Legendary Pet Brawler (5000)

	6620, -- No Time To Heal (5 consecutive PvP)

});

----------------------
-- Pandaria Category --
----------------------

AchieveIt.Categories:addCategory(CatID.PetBattles_Battle, Expac.MistsOfPandaria, {
	8410,	-- The Celestial Tournament
	8518,	-- Master of the Masters (All Celestial)
});

----------------------
-- Draenor Category --
----------------------

AchieveIt.Categories:addCategory(CatID.PetBattles_Battle, Expac.WarlordsOfDraenor, {
	9463, -- Draenic Pet Battler
	10052,	-- Tiny Terrors in Tanaan
});


local legion_category = AchieveIt.Categories:addCategory(CatID.PetBattles_Battle, Expac.Legion)

---------------------------
-- Broken Isles Category --
---------------------------

legion_category:addChild(L["Broken Isles"], {
	9686,	-- Aquatic Acquiescence
	9687,	-- Best of the Beasts
	9689,	-- Dragons!
	9691,	-- Flock Together
	9693,	-- Master of Magic
	9688,	-- Mousing Around
	9692,	-- Murlocs, Harpies, and Wolvar, Oh My!
	9690,	-- Ragnaros, Watch and Learn
	9694,	-- Roboteer
	9695,	-- The Lil' Necromancer
	9696,	-- Family Familiar
	10876,	-- Battle on the Broken Isles
});
--------------------
-- Argus Category --
--------------------

legion_category:addChild(L["Argus"], {
	12089,	-- Aquatic Assault
	12091,	-- Beast Blitz
	12092,	-- Critical Critters
	12093,	-- Draconic Destruction
	12094,	-- Elemental Escalation
	12095,	-- Fierce Fliers
	12096,	-- Humanoid Havoc
	12097,	-- Magical Mayhem
	12098,	-- Mechanical Melee
	12099,	-- Unstoppable Undead
	12100,	-- Family Fighter
	12088,	-- Anomalous Animals of Argus
});

legion_category:inheritAchievements();

----------------------
-- BfA Category --
----------------------

AchieveIt.Categories:addCategory(CatID.PetBattles_Battle, Expac.BattleForAzeroth, {
	12936,	-- Battle on Zandalar and Kul Tiras
	13270,	-- Beast Mode
	13271,	-- Critters With Huge Teeth
	13272,	-- Dragons Make Everything Better
	13273,	-- Element of Success
	13274,	-- Fun With Flying
	13275,	-- Magician's Secrets
	13277,	-- Machine Learning
	13278,	-- Not Quite Dead Yet
	13280,	-- Hobbyist Aquarist
	13281,	-- Human Resources
	13279,	--'Family Battler
	13766, -- Malowned
	13626, -- Nautical Nuisances of Nazjatar
	13625, -- Mighty Minions of Mechagon
});

AchieveIt.Categories:addCategory(CatID.PetBattles_Battle, Expac.Shadowlands, {
	14625,	-- Battle in the Shadowlands
	14868,	-- Aquatic Apparitions
	14869,	-- Beast Busters
	14870,	-- Creepy Critters
	14871,	-- Deathly Dragonkin
	14872,	-- Eerie Elementals
	14873,	-- Flickering Fliers
	14874,	-- Haunted Humanoids
	14875,	-- Mummified Magics
	14876,	-- Macabre Mechanicals
	14877,	-- Unholy Undead
	14879,	-- Family Exorcist
	14881,	-- Abhorrent Adversaries of the Afterlife
});



