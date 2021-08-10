
------------------------
-- Professions / Archaeology --
------------------------

local	CatID	= AchieveItConstants.CategoryIDs
local	Zone = AchieveItConstants.zone
local Expac = AchieveItConstants.ExpacNames
local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-----------------------
-- Archaeology - Progress Category --
-----------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Progress"], {
	5315,	-- Digger
	5469,	-- Diggerer
	5470,	-- Diggerest

	4857,	-- Journeyman Archaeologist (150)
	4919,	-- Expert Archaeologist (225)
	4920,	-- Artisan Archaeologist (300)
	4921,	-- Master Archaeologist (375)
	4922,	-- Grand Master Archaeologist (450)
	4923,	-- Illustrious Grand Master Archaeologist (525)
	6837,	-- Zen Master Archaeologist (600)
   9409,	-- Draenor Archaeologist (700)
	10600,	-- Legion Achaeologist (800)
	{ id = 12760, faction = AchieveIt.Factions.ALLIANCE },	-- Kul Tiran Achaeologist (950)
	{ id = 12761, faction = AchieveIt.Factions.HORDE },	-- Zandalari Achaeologist (950)

	4854,	-- I Had It in My Hand (1 rare)
	4855,	-- What was Briefly Yours is Now Mine (10 rare)
	4856,	-- It Belongs in a Museum! (20 rare)
	9422,	-- The Search For Fact, Not Truth (30 rare)
	10601,	-- Surveying the Land (1 Legion rare)
	10602,	-- This Side Up (8 Legion rares)
	10603,	-- A Keen Eye (All Legion rares)

	5511,	-- It's Always in the Last Place You Look (Artifacts from Classic - WotLK)
	4858,	-- Seven Scepters (Scepters from Classic - WotLK)
--TODO: Not sure Scepters belongs here

	7612,	-- The Seat of Knowledge (Pristine MoP)
	9419,	-- Draenor Curator (Pristine WoD)
	10604,	-- Legion Curator (Pristine Legion)
	{ id = 12762, faction = AchieveIt.Factions.ALLIANCE}, -- Kul Tiran Curator (All Pristine)
	{ id = 12764, faction = AchieveIt.Factions.HORDE}, -- Zandalari Curator (All Pristine)
--TODO: Pristines, do they belong here?
});

----------------------
-- Arakkoa Category --
----------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Arakkoa"], {
    9415,	-- Secrets of Skettis
    9412,	-- Arakkoa Archivist
});

----------------------------
-- Draenor Clans Category --
----------------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Draenor Clans"], {
    9413,	-- Strength and Honor (Some Draenor Clans)
    9410,	-- Unite the Clans (All Pristine Draenor Clans)
});

--------------------
-- Dwarf Category --
--------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Dwarf"], {
    5193,	-- Blue Streak (who slew the dread wyrm Kaldrigos)
    4859,	-- Kings Under the Mountain (artifacts of the Dark Iron thanes)
});

---------------------
-- Mantid Category --
---------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Mantid"], {
	8219,	-- History of the Mantid (Pristine)
	8222,	-- Collector: Ancient Sap Feeders (5)
	8223,	-- Collector: Ancient Sap Feeders (20)
	8220,	-- Collector: Banners of the Mantid Empire (5 banners)
	8221,	-- Collector: Banners of the Mantid Empire (20 Banners)
	7343,	-- Collector: Carved Bronze Mirrors	(5)
	7363,	-- Collector: Carved Bronze Mirrors (20)
	8226,	-- Collector: Inert Sound Beacons (5)
	8227,	-- Collector: Inert Sound Beacons (20)
	8234,	-- Collector: Kypari Sap Containers (5)
	8235,	-- Collector: Kypari Sap Containers (20)
	8230,	-- Collector: Mantid Lamps (5)
	8231,	-- Collector: Mantid Lamps (20)
	8232,	-- Collector: Pollen Collectors (5)
	8233,	-- Collector: Pollen Collectors (20)
	8224,	-- Collector: Praying Mantids (5)
	8225,	-- Collector: Praying Mantids (20)
	8228,	-- Collector: Remains of Paragons (5)
	8229,	-- Collector: Remains of Paragons (20)
});

-------------------
-- Mogu Category --
-------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Mogu"], {
	7337,	-- Documents of a Dark History
	7334,	-- Instruments of Cruelty
	7336,	-- Stone Servants
	7335,	-- Symbols of Strength

	7349,	-- Collector: Cracked Mogu Runestones (5)
	7369,	-- Collector: Cracked Mogu Runestones (20)
	7353,	-- Collector: Edicts of the Thunder King (5)
	7373,	-- Collector: Edicts of the Thunder King (20)
	7354,	-- Collector: Iron Amulets (5)
	7374, -- Collector: Iron Amulets(20)
	7348,	-- Collector: Manacles of Rebellion (5)
	7368,	-- Collector: Manacles of Rebellion (20)
	7356,	-- Collector: Mogu Coins (5)
	7376,	-- Collector: Mogu Coins(20)
	7351,	-- Collector: Petrified Bone Whips (5)
	7371,	-- Collector: Petrified Bone Whips(20)
	7350,	-- Collector: Terracotta Arms (5)
	7370,	-- Collector: Terracotta Arms(20)
	7352,	-- Collector: Thunder King Insignias(5)
	7372,	-- Collector: Thunder King Insignias(20)
	7355,	-- Collector: Warlord's Branding Irons (5)
	7375,	-- Collector: Warlord's Branding Irons (20)
	7357,	-- Collector: Worn Monument Ledgers (5)
	7377,	-- Collector: Worn Monument Ledgers (20)
});

------------------------
-- Night Elf Category --
------------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Night Elf"], {
	5191,	-- Tragedy in Three Acts
});

-------------------
-- Ogre Category --
-------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Ogre"], {
    9414,	-- Ogre Observer (Discover Ogre Artifacts)
    9411,	-- Highmaul Historian	(Pristine)
});

------------------
-- Orc Category --
------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Orc"], {
    5192,	-- The Harder they Fall
});

-----------------------
-- Pandaren Category --
-----------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Pandaren"], {
	7332,	-- The Broken Hearted
	7333,	-- The Four Celestials
	7331,	-- The Three Brew Fathers

	7345,	-- Collector: Apothecary Tins (5)
	7365,	-- Collector: Apothecary Tins(20)
	7342,	-- Collector: Empty Kegs of Brewfather Xin Wo Yin (5)
	7362,	-- Collector: Empty Kegs of Brewfather Xin Wo Yin (20)
	7344,	-- Collector: Gold-Inlaid Porcelain Funerary Figurines (5)
	7364,	-- Collector: Gold-Inlaid Porcelain Funerary Figurines (20)
	7339,	-- Collector: Pandaren Game Boards (5)
	7359,	-- Collector: Pandaren Game Boards (20)
	7338,	-- Collector: Pandaren Tea Sets (5)
	7358,	-- Collector: Pandaren Tea Sets (20)
	7346,	-- Collector: Pearls of Yu'lon (5)
	7366,	-- Collector: Pearls of Yu'lon (20)
	7347,	-- Collector: Standards of Niuzao (5)
	7367,	-- Collector: Standards of Niuzao (20)
	7340,	-- Collector: Twin Stein Sets of Brewfather Quan Tou Kuo (5)
	7360,	-- Collector: Twin Stein Sets of Brewfather Quan Tou Kuo (20)
	7341,	-- Collector: Walking Canes of Brewfather Ren Yun (5)
	7361, -- Collector: Walking Canes of Brewfather Ren Yun (20)
});

----------------------
-- Tol'vir Category --
----------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, L["Tol'vir"], {
	5301,	-- The Boy Who Would be King
});

---------------------
-- Legion Category --
---------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, Expac.Legion, {
	10600,	-- Legion Achaeologist (800 skill)
	10607,	-- Getting Your Hands Dirty (50 legion dig sites)
	10608,	-- Sifting Throgh the Sand (100 legion dig sites)
	10609,	-- No Stone Unturned (250 sites)
	10605,	-- Handle With care (1 common)
	10601,	-- Surveying the Land (1 rare)
	10602,	-- This Side Up (8 rares)
	10603,	-- A Keen Eye (all rares)
	10604,	-- Legion Curator (all pristine)
	10606,	-- The Dwarven Dream (Help Brann)
});

---------------------
-- BfA Category --
---------------------

AchieveIt.Categories:addCategory(CatID.Professions_Archaeology, Expac.BattleForAzeroth, {
	12765, -- Exotic Discoveries (1 Kul & 1 Zanda)
	{ id = 12762, faction = AchieveIt.Factions.ALLIANCE}, -- Kul Tiran Curator (All Pristine)
	{ id = 12764, faction = AchieveIt.Factions.HORDE}, -- Zandalari Curator (All Pristine)
	12769, -- Light Travel (50 sites)
	12770, -- Lengthy Legwork (100 sites)
	{ id = 13437,	faction = AchieveIt.Factions.HORDE},	-- Scavenge like a Vulpera

});




-------------
-- Cooking - General --
-------------

AchieveIt.Categories:addCategory(CatID.Professions_Cooking, L["General"], {
	1998,1999,2000,2001,2002,	-- Cooking Awards (1, 10, 25, 50, 100)
	1781,	-- Critter Gitter
	1785,	-- Dinner Impossible
	1795,	-- Lunch Lady (25)
	1796,	-- Short Order Cook (50)
	1798,	-- Sous Chef (100)
	1797,	-- Chef de Partie	(75)
	1799,	-- Chef de Cuisine (160)
	5471,	-- Iron Chef (200)
	7328,	-- Ironpaw Chef (240)
});

------------------------
-- Old World Category --
------------------------

AchieveIt.Categories:addCategory(CatID.Professions_Cooking, Expac.Classic, {
	5845,	-- A Bunch of Lunch
	1801,	-- Captain Rumsey's Lager
	121,	-- Hourneyman Cook (150)
	122,	-- Expert Cook (225)
	123,	-- Classic Cook (300)
	1563,	-- Hail to the Chef
	{ id = 5842, faction = AchieveIt.Factions.ALLIANCE },	-- Let's Do Lunch: Darnassus
	{ id = 5841, faction = AchieveIt.Factions.ALLIANCE },	-- Let's Do Lunch: Ironforge
	{ id = 5474, faction = AchieveIt.Factions.ALLIANCE },	-- Let's Do Lunch: Stormwind
	{ id = 5475, faction = AchieveIt.Factions.HORDE },	-- Let's Do Lunch: Orgrimmar
	{ id = 5843, faction = AchieveIt.Factions.HORDE },	-- Let's Do Lunch: Thunder Bluff
	{ id = 5844, faction = AchieveIt.Factions.HORDE },	-- Let's Do Lunch: Undercity
});

AchieveIt.Categories:addCategory(CatID.Professions_Cooking, Expac.BurningCrusade, {
	906,	-- Kickin' It Up a Notch
	124,	-- Outland Cook
	877,	-- The Cake Is Not A Lie
	1800,	-- The Outland Gourmet
});

AchieveIt.Categories:addCategory(CatID.Professions_Cooking, Expac.WrathOfTheLichKing, {
	3296,	-- Cooking With Style
	125,	-- Northrend Cook
	{ id = 1782, faction = AchieveIt.Factions.ALLIANCE },	-- Our Daily Bread
	{ id = 1783, faction = AchieveIt.Factions.HORDE },	-- Our Daily Bread
	1780,	-- Second That Emotion
	1777,1778,1779,	-- The Northrend Gourmet (15, 30, 45)
});


AchieveIt.Categories:addCategory(CatID.Professions_Cooking, Expac.Cataclysm, {
	4916,	-- Cataclysmic Cook
	5472,5473,	-- The Cataclysmic Gourmet (15, 30)
});

AchieveIt.Categories:addCategory(CatID.Professions_Cooking, Expac.MistsOfPandaria, {
	7306,	-- Master of Pandaren Cooking
	7305,	-- Master of the Brew
	7300,	-- Master of the Grill
	7304,	-- Master of the Oven
	7302,	-- Master of the Pot
	7303,	-- Master of the Steamer
	7301,	-- Master of the Wok
	7325,	-- Now I am the Master
	7326,7327,	-- The Pandaren Gourmet (15, 30)
	6365,	-- Zen Master Cook
});

AchieveIt.Categories:addCategory(CatID.Professions_Cooking, Expac.WarlordsOfDraenor, {
	9500,	-- Draenor Cook
	9501,	-- The Draenor Gourmet
	5779,	-- You'll Feel Right as Rain
});

AchieveIt.Categories:addCategory(CatID.Professions_Cooking, Expac.Legion, {
	10591,	-- All Grown Up
	10593,	-- Everything Tastes Better
	10589,	-- Legion Cook
	10592,	-- Never A Day's Rest
	10762,	-- The Legion Menu
});

AchieveIt.Categories:addCategory(CatID.Professions_Cooking, Expac.BattleForAzeroth, {
	12747,	-- Catering for Combat
	{ id = 12742, faction = AchieveIt.Factions.ALLIANCE },	--  Kul Tiran Cook
	{ id = 12744, faction = AchieveIt.Factions.ALLIANCE },	--  The Kul Tiran Menu
	{ id = 12746, faction = AchieveIt.Factions.HORDE },	--  The Zandalari Menu
	{ id = 12743, faction = AchieveIt.Factions.HORDE },	--  Zandalari Cook
});

AchieveIt.Categories:addCategory(CatID.Professions_Cooking, Expac.Shadowlands, {
	14332,	-- Shadowlands Cook
});

--------------
-- Fishing Progress --
--------------

AchieveIt.Categories:addCategory(CatID.Professions_Fishing, L["Progress"], {
	1556,1557,1558,1559,1560,1561,	-- X Fish (25, 50, 100, 250, 500, 1000)
	1516,	-- Accomplished Angler
	1243,	-- Fish Don't Leave Footprints
	126,	-- Journeyman Fisherman (150)
	127, 	-- Expert Fisherman (225)
	128,	--Artisan Fisherman (300)
	129,	-- Outland Fisherman
	130,	-- Northrend Fisherman
	4917,	-- Cataclysmic Fisherman
	6839,	-- Zen Master Fisherman
	9503,	-- Draenor Fisherman
	10594,	-- Legion Fisherman
	153,	-- The Old Gnome and the Sea
	1257,	-- The Scavenger
	3218,	-- Turtles All the Way Down
});

------------------------
-- Old World Category --
------------------------

AchieveIt.Categories:addCategory(CatID.Professions_Fishing, Expac.Classic, {
	{ id = 5848, faction = AchieveIt.Factions.ALLIANCE },	-- Fish or Cut Bait: Darnassus
	{ id = 5847, faction = AchieveIt.Factions.ALLIANCE },	-- Fish or Cut Bait: Ironforge
	{ id = 5476, faction = AchieveIt.Factions.ALLIANCE },	-- Fish or Cut Bait: Stormwind
	{ id = 5477, faction = AchieveIt.Factions.HORDE },	-- Fish or Cut Bait: Orgrimmar
	{ id = 5849, faction = AchieveIt.Factions.HORDE },	-- Fish or Cut Bait: Thunder Bluff
	{ id = 5850, faction = AchieveIt.Factions.HORDE },	-- Fish or Cut Bait: Undercity
	5851,	-- Gone Fishin'
	306,	-- Master Angler of Azeroth
	1836,	-- Old Crafty
	1837,	-- Old Ironjaw
	878,	-- One That Didn't Get Away
	150,	-- The Fishing Diplomat
	5478,	-- The Limnologist
	5479,	-- The Oceanographer
});

AchieveIt.Categories:addCategory(CatID.Professions_Fishing, Expac.BurningCrusade, {
	726,	-- Mr. Pinchy's Magical Crawdad Box
	905,	-- Old Man Barlowned
	1225,	-- Outland Angler
	129,	-- Outland Fisherman
	144,	-- The Lurker Above
});

AchieveIt.Categories:addCategory(CatID.Professions_Fishing, Expac.WrathOfTheLichKing, {
	2094,	-- A Penny For Your Thoughts
	2095,	-- Silver in the City
	1957,	-- There's Gold In That There Fountain
	2096,	-- The Coin Master
	3217,	-- Chasing Marcia
	1958,	-- I Smell A Giant Rat
	1517,	-- Northrend Angler
	130,	-- Northrend Fisherman
});

AchieveIt.Categories:addCategory(CatID.Professions_Fishing, Expac.Cataclysm, {
	4917,	-- Cataclysmic Fisherman
});


AchieveIt.Categories:addCategory(CatID.Professions_Fishing, Expac.MistsOfPandaria, {
	7274,	-- Learning From The Best
	7614,	-- Locking Down the Docks
	7611,	-- Pandarian Angler
});

AchieveIt.Categories:addCategory(CatID.Professions_Fishing, Expac.WarlordsOfDraenor, {
	9456,	-- Abyssal Gulper Eel Angler
	9457,	-- Blackwater Whiptail Angler
	9458,	-- Blind Lake Sturgeon Angler
	9462,	-- Draenor Angler
	9503,	-- Draenor Fisherman
	9547,	-- Everything is Awesome
	9459,	-- Fat Sleeper Angler
	9455,	-- Fire Ammonite Angler
	9460,	-- Jawless Skulker Angler
	9461,	-- Sea Scorpion Angler,
});

AchieveIt.Categories:addCategory(CatID.Professions_Fishing, Expac.Legion, {
	10595,	-- A Cast Above the Rest
	10596,	-- Bigger Fish to Fry
	11725,	-- Fisherfriend of the Isles
	10598,	-- Fishing 'Round the Isles
	10597,	-- Legion Aquaculture
	10594,	-- Legion Fisherman
	10722,	-- The Wish Remover
});

AchieveIt.Categories:addCategory(CatID.Professions_Fishing, Expac.BattleForAzeroth, {
	12757,	-- Angling for Battle
	{ id = 12758, faction = AchieveIt.Factions.ALLIANCE },	--  Baiting the Enemy
	{ id = 12759, faction = AchieveIt.Factions.HORDE },	--  Baiting the Enemy
	12990,	-- Catchin' Some Rays
	12756,	-- Fish Me In the Moonlight
	{ id = 12753, faction = AchieveIt.Factions.ALLIANCE },	--  Kul Tiran Fisherman
	{ id = 12754, faction = AchieveIt.Factions.HORDE },	--  Zandalari Fisherman
	12755,	-- Scent of the Sea
});

AchieveIt.Categories:addCategory(CatID.Professions_Fishing, Expac.Shadowlands, {
	14333,	-- Shadowlands Fisherman
});



--[[
Ignore these

	13166, -- Remove Alchemy Anti-Venoms
	13170, -- Remove Inscription Recipes
	13167, -- Remove Tailoring Bandages
	13169, -- Remove Tailoring Legion Luffa
	10050, -- Learn A Primary Profession
	10051, -- Learn Two Primary Professions

Generic ones that are already in the main category

	9453, -- Draenic Stone Collector
	9454, -- Draenic Seed Collector
	7379, -- Pandaren Master of All
	9087, -- Draenor Master of All
	734, -- Professional Northrend Master
	10582, -- Professional Legion Master
	6830, -- Professional Zen Master
	732, -- Professional Classic Master
	733, -- Professional Outland Master
	116, -- Professional Journeyman
	4924, -- Professional Cataclysmic Master
	6835, -- Working For a Living
	9507, -- Working in Draenor
	{ id = 12736, faction = AchieveIt.Factions.ALLIANCE}, -- Kul Tiran Master of All
	{ id = 12734, faction = AchieveIt.Factions.ALLIANCE}, -- Working in Kul Tiras
	735, -- Working In the Cold
	4914, -- Working In the Heat
	{ id = 12735, faction = AchieveIt.Factions.HORDE}, -- Working in Zandalar
	{ id = 12737, faction = AchieveIt.Factions.HORDE}, -- Zandalari Master of All
	10581, -- Working the Isles
	{ id = 12731, faction = AchieveIt.Factions.ALLIANCE}, -- Professional Kul Tiran Master
	{ id = 12733, faction = AchieveIt.Factions.HORDE}, -- Professional Zandalari Master
	10583, -- Legion Master of All
	7378, -- Jack of All Trades
	9464, -- Professional Draenor Master
	731, -- Professional Expert

	{ id = 12741, faction = AchieveIt.Factions.ALLIANCE}, -- Giving a Scrap
	{ id = 13056, faction = AchieveIt.Factions.HORDE}, -- Giving a Scrap
	12740, -- Full of Scrap!
	12738, -- Holy Scrap!
	12739, -- Scraptastic!

	10585, -- Fel-Smelter
	10586, -- Mass Obliteration

	10587, -- Hot Swapper

	13516, -- Massive Tool
	9071, -- Inspector Gadgetzan

	10761, -- Resourceful

	10588, -- The Shortest Distance





--]]