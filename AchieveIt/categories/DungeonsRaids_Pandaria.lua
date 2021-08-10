-----------------------------------------
-- Dungeons & Raids - Pandaria Dungeon --
-----------------------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");


AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Glory"], {
	6927,	-- Glory of the Pandaria Hero
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, _G["DUNGEONS"], {
	6457,	-- Stormstout Brewery
	6757,	-- Temple of the Jade Serpent
	6755,	-- Mogu'shan Palace
	6469,	-- Shado-Pan Monastery
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Heroic Dungeons"], {
	6456,	-- Heroic: Stormstout Brewery
	6758,	-- Heroic: Temple of the Jade Serpent
	6756,	-- Heroic: Mogu'shan Palace
	6470,	-- Heroic: Shado-Pan Monastery
	6759,	-- Heroic: Gate of the Setting Sun
	6763,	-- Heroic: Siege of Niuzao Temple
	6760,	-- Heroic: Scarlet Halls
	6761,	-- Heroic: Scarlet Monastery
	6762,	-- Heroic: Scholomance
});

---------------------------------
-- Stormstout Brewery Category --
---------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Stormstout Brewery"], {
	6457,	-- Stormstout Brewery
	6456,	-- Heroic: Stormstout Brewery
	6400,	-- How Did He Get Up There?
	6402,	-- Ling-Ting's Herbal Journey
});

category:addChild(L["Ook-Ook"], {
	6089,	-- Keep Rollin' Rollin' Rollin'
});

category:addChild(L["Hoptallus"], {
	6420,	-- Hopocalypse Now!
});

category:addChild(L["Yan-Zhu the Uncasked"], {
	6715,	-- Polyformic Acid Science
});

category:inheritAchievements();


-----------------------------------------
-- Temple of the Jade Serpent Category --
-----------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Temple of the Jade Serpent"], {
	6757,	-- Temple of the Jade Serpent
	6758,	-- Heroic: Temple of the Jade Serpent
});

category:addChild(L["Wise Mari"], {
	6460,	-- Hydrophobia
});

category:addChild(L["Liu Flameheart"], {
	6715,	-- Polyformic Acid Science
});

category:addChild(L["Sha of Doubt"], {
	6475,	-- Cleaning Up
	6671,	-- Seeds of Doubt
});

category:inheritAchievements();


-------------------------------
-- Mogu'shan Palace Category --
-------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Mogu'shan Palace"], {
	6755,	-- Mogu'shan Palace
	6756,	-- Heroic: Mogu'shan Palace
	6713,	-- Quarrelsome Quilen Quintet
});

category:addChild(L["Trial of the King"], {
	6715,	-- Polyformic Acid Science
});

category:addChild(L["Gekkan"], {
	6478,	-- Glintrok N' Roll
});

category:addChild(L["Xin the Weaponmaster"], {
	6736,	-- What Does This Button Do?
});

category:inheritAchievements();


----------------------------------
-- Shado-Pan Monastery Category --
----------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Shado-Pan Monastery"], {
	6469,	-- Shado-Pan Monastery
	6470,	-- Heroic: Shado-Pan Monastery
});

category:addChild(L["Gu Cloudstrike"], {
	6715,	-- Polyformic Acid Science
});

category:addChild(L["Master Snowdrift"], {
	6477,	-- Respect
});

category:addChild(L["Sha of Violence"], {
	6472,	-- The Obvious Solution
});

category:addChild(L["Taran Zhu"], {
	6471,	-- Hate Leads to Suffering
});

category:inheritAchievements();


--------------------------------------
-- Gate of the Setting Sun Category --
--------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Gate of the Setting Sun"], {
	6759,	-- Heroic: Gate of the Setting Sun
	6476,	-- Conscriptinator
});

category:addChild(L["Saboteur Kip'tilak"], {
	6479,	-- Bomberman
});

category:addChild(L["Commander Ri'mok"], {
	6715,	-- Polyformic Acid Science
});

category:addChild(L["Raigonn"], {
	6945,	-- Mantid Swarm
});

category:inheritAchievements();


-------------------------------------
-- Siege of Niuzao Temple Category --
-------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Siege of Niuzao Temple"], {
	6763,	-- Heroic: Siege of Niuzao Temple
});

category:addChild(L["Vizier Jin'bak"], {
	6715,	-- Polyformic Acid Science
});

category:addChild(L["Commander Vo'jak"], {
	6688,	-- Where's My Air Support?
});

category:addChild(L["General Pa'valak"], {
	6485,	-- Return to Sender
});

category:addChild(L["Wing Leader Ner'onok"], {
	6822,	-- Run with the Wind
});

category:inheritAchievements();


----------------------------
-- Scarlet Halls Category --
----------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Scarlet Halls"], {
	6760,	-- Heroic: Scarlet Halls
});

category:addChild(L["Houndmaster Braun"], {
	6684,	-- Humane Society
});

category:addChild(L["Armsmaster Harlan"], {
	6427,	-- Mosh Pit
});

category:inheritAchievements();


--------------------------------
-- Scarlet Monastery Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Scarlet Monastery"], {
	6761,	-- Heroic: Scarlet Monastery
});

category:addChild(L["Thalnos the Soulrender"], {
	6946,	-- Empowered Spiritualist
});

category:addChild(L["Brother Korloff"], {
	6928,	-- Burning Man
});

category:addChild(L["High Inquisitor Whitemane"], {
	6929,	-- And Stay Dead!
});

category:inheritAchievements();


--------------------------
-- Scholomance Category --
--------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Pandaria, L["Scholomance"], {
	6762,	-- Heroic: Scholomance
	6396,	-- Sanguinarian
});

category:addChild(L["Jandice Barov"], {
	6531,	-- Attention to Detail
});

category:addChild(L["Rattlegore"], {
	6394,	-- Rattle No More
});

category:addChild(L["Darkmaster Gandling"], {
	6821,	-- School's Out Forever
});

category:inheritAchievements();

--------------------------------------
-- Dungeons & Raids - Pandaria Raid --
--------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["World Bosses"], {
	6480,	-- Settle Down, Bro
	6517,	-- Extinction Event
	8028,	-- Praise the Sun!
	8123,	-- Millions of Years of Evolution vs. My Fist
	8535,	-- Celestial Challenge
});

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Glory"], {
	6932,	-- Glory of the Pandaria Raider
	8124,	-- Glory of the Thundering Raider
	8454,	-- Glory of the Orgrimmar Raider
});

-------------------------------
-- Mogu'shan Vaults Category --
-------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Mogu'shan Vaults"]);

category:addChild(L["Glory"], {
	6932,	-- Glory of the Pandaria Raider
});

category:addChild(L["Progress"], {
	6458,	-- Guardians of Mogu'shan
	6844,	-- The Vault of Mysteries
	6719,	-- Heroic: Stone Guard
	6720,	-- Heroic: Feng the Accursed
	6721,	-- Heroic: Gara'jal the Spiritbinder
	6722,	-- Heroic: Four Kings
	6723,	-- Heroic: Elegon
	6724,	-- Heroic: Will of the Emperor
});

category:addChild(L["The Stone Guard"], {
	6719,	-- Heroic: Stone Guard
	6823,	-- Must Love Dogs
});

category:addChild(L["Feng the Accursed"], {
	6720,	-- Heroic: Feng the Accursed
	6674,	-- Anything You Can Do, I Can Do Better...
});

category:addChild(L["Gara'jal the Spiritbinder"], {
	6721,	-- Heroic: Gara'jal the Spiritbinder
	7056,	-- Sorry, Were You Looking for This?
});

category:addChild(L["The Spirit Kings"], {
	6722,	-- Heroic: Four Kings
	6687,	-- Getting Hot In Here
});

category:addChild(L["Elegon"], {
	6723,	-- Heroic: Elegon
	6686,	-- Straight Six
});

category:addChild(L["Will of the Emperor"], {
	6724,	-- Heroic: Will of the Emperor
	6455,	-- Show Me Your Moves!
});

category:inheritAchievements();


----------------------------
-- Heart of Fear Category --
----------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Heart of Fear"]);

category:addChild(L["Glory"], {
	6932,	-- Glory of the Pandaria Raider
});

category:addChild(L["Progress"], {
	6718,	-- The Dread Approach
	6845,	-- Nightmare of Shek'zeer
	6725,	-- Heroic: Imperial Vizier Zor'lok
	6726,	-- Heroic: Blade Lord Ta'yak
	6727,	-- Heroic: Garalon
	6728,	-- Heroic: Wind Lord Mel'jarak
	6729,	-- Heroic: Amber-Shaper Un'sok
	6730,	-- Heroic: Grand Empress Shek'zeer
});

category:addChild(L["Imperial Vizier Zor'lok"], {
	6725,	-- Heroic: Imperial Vizier Zor'lok
	6937,	-- Overzealous
});

category:addChild(L["Blade Lord Ta'yak"], {
	6726,	-- Heroic: Blade Lord Ta'yak
	6936,	-- Candle in the Wind
});

category:addChild(L["Garalon"], {
	6727,	-- Heroic: Garalon
	6553,	-- Like an Arrow to the Face
});

category:addChild(L["Wind Lord Mel'jarak"], {
	6728,	-- Heroic: Wind Lord Mel'jarak
	6683,	-- Less Than Three
});

category:addChild(L["Amber-Shaper Un'sok"], {
	6729,	-- Heroic: Amber-Shaper Un'sok
	6518,	-- I Heard You Like Amber...
});

category:addChild(L["Grand Empress Shek'zeer"], {
	6730,	-- Heroic: Grand Empress Shek'zeer
	6922,	-- Timing is Everything
});

category:inheritAchievements();


----------------------------------------
-- Terrace of Endless Spring Category --
----------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Terrace of Endless Spring"]);

category:addChild(L["Glory"], {
	6932,	-- Glory of the Pandaria Raider
});

category:addChild(L["Progress"], {
	6689,	-- Terrace of Endless Spring
	6731,	-- Heroic: Protectors of the Endless
	6732,	-- Heroic: Tsulong
	6733,	-- Heroic: Lei Shi
	6734,	-- Heroic: Sha of Fear
});

category:addChild(L["Protectors of the Endless"], {
	6731,	-- Heroic: Protectors of the Endless
	6717,	-- Power Overwhelming
});

category:addChild(L["Tsulong"], {
	6732,	-- Heroic: Tsulong
	6933,	-- Who's Got Two Green Thumbs?
});

category:addChild(L["Lei Shi"], {
	6733,	-- Heroic: Lei Shi
	6824,	-- Face Clutchers
});

category:addChild(L["Sha of Fear"], {
	6734,	-- Heroic: Sha of Fear
	6825,	-- The Mind-Killer
});

category:inheritAchievements();


--------------------------------
-- Throne of Thunder Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Throne of Thunder"]);

category:addChild(L["Glory"], {
	8124,	-- Glory of the Thundering Raider
});

category:addChild(L["Progress"], {
	8069,	-- Last Stand of the Zandalari
	8070,	-- Forgotten Depths
	8071,	-- Halls of Flesh-Shaping
	8072,	-- Pinnacle of Storms
	8056,	-- Heroic: Jin'rokh the Breaker
	8057,	-- Heroic: Horridon
	8058,	-- Heroic: Council of Elders
	8059,	-- Heroic: Tortos
	8060,	-- Heroic: Megaera
	8061,	-- Heroic: Ji-Kun
	8062,	-- Heroic: Durumu the Forgotten
	8063,	-- Heroic: Primordius
	8064,	-- Heroic: Dark Animus
	8065,	-- Heroic: Iron Qon
	8066,	-- Heroic: Twin Consorts
	8067,	-- Heroic: Lei Shen
	8068,	-- Heroic: Ra-den
});

category:addChild(L["Jin'rokh the Breaker"], {
	8056,	-- Heroic: Jin'rokh the Breaker
	8094,	-- Lightning Overload
});

category:addChild(L["Horridon"], {
	8057,	-- Heroic: Horridon
	8038,	-- Cretaceous Collector
});

category:addChild(L["Council of Elders"], {
	8058,	-- Heroic: Council of Elders
	8073,	-- Cage Match
});

category:addChild(L["Tortos"], {
	8059,	-- Heroic: Tortos
	8077,	-- One-Up
});

category:addChild(L["Megaera"], {
	8060,	-- Heroic: Megaera
	8082,	-- Head Case
});

category:addChild(L["Ji-kun"], {
	8061,	-- Heroic: Ji-Kun
	8097,	-- Soft Hands
});

category:addChild(L["Durumu the Forgotten"], {
	8062,	-- Heroic: Durumu the Forgotten
	8098,	-- You Said Crossing the Streams Was Bad
});

category:addChild(L["Primordius"], {
	8063,	-- Heroic: Primordius
	8037,	-- Genetically Unmodified Organism
});

category:addChild(L["Dark Animus"], {
	8064,	-- Heroic: Dark Animus
	8081,	-- Ritualist Who?
});

category:addChild(L["Iron Qon"], {
	8065,	-- Heroic: Iron Qon
	8087,	-- Can't Touch This
});

category:addChild(L["Twin Consorts"], {
	8066,	-- Heroic: Twin Consorts
	8086,	-- From Dusk 'til Dawn
});

category:addChild(L["Lei Shen"], {
	8067,	-- Heroic: Lei Shen
	8090,	-- A Complete Circuit
});

category:addChild(L["Ra-den"], {
	8068,	-- Heroic: Ra-den
});

category:inheritAchievements();


---------------------------------
-- Siege of Orgrimmar Category --
---------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Pandaria, L["Siege of Orgrimmar"]);

category:addChild(L["Glory"], {
	8454,	-- Glory of the Orgrimmar Raider
});

category:addChild(L["Progress"], {
	8458,	-- Vale of Eternal Sorrows
	8459,	-- Gates of Retribution
	8461,	-- The Underhold
	8462,	-- Downfall
	{ id = 8679, faction = AchieveIt.Factions.ALLIANCE },	-- Conqueror of Orgrimmar
	{ id = 8680, faction = AchieveIt.Factions.HORDE },	-- Liberator of Orgrimmar
	8463,	-- Heroic: Immerseus
	8465,	-- Heroic: Fallen Protectors
	8466,	-- Heroic: Norushen
	8467,	-- Heroic: Sha of Pride
	8468,	-- Heroic: Galakras
	8469,	-- Heroic: Iron Juggernaut
	8470,	-- Heroic: Kor'kron Dark Shaman
	8471,	-- Heroic: General Nazgrim
	8472,	-- Heroic: Malkorok
	8478,	-- Heroic: Spoils of Pandaria
	8479,	-- Heroic: Thok the Bloodthirsty
	8480,	-- Heroic: Siegecrafter Blackfuse
	8481,	-- Heroic: Paragons of the Klaxxi
	8482,	-- Heroic: Garrosh Hellscream
});

category:addChild(L["Immerseus"], {
	8536,	-- No More Tears
	8463,	-- Heroic: Immerseus
});

category:addChild(L["The Fallen Protectors"], {
	8528,	-- Go Long
	8465,	-- Heroic: Fallen Protectors
});

category:addChild(L["Norushen"], {
	8532,	-- None Shall Pass
	8466,	-- Heroic: Norushen
});

category:addChild(L["Sha of Pride"], {
	8521,	-- Swallow Your Pride
	8467,	-- Heroic: Sha of Pride
});

category:addChild(L["Galakras"], {
	8530,	-- The Immortal Vanguard
	8468,	-- Heroic: Galakras
});

category:addChild(L["Iron Juggernaut"], {
	8520,	-- Fire in the Hole!
	8469,	-- Heroic: Iron Juggernaut
});

category:addChild(L["Kor'kron Dark Shaman"], {
	8453,	-- Rescue Raiders
	8470,	-- Heroic: Kor'kron Dark Shaman
});

category:addChild(L["General Nazgrim"], {
	8448,	-- Gamon Will Save Us!
	8471,	-- Heroic: General Nazgrim
});

category:addChild(L["Malkorok"], {
	8538,	-- Unlimited Potential
	8472,	-- Heroic: Malkorok
});

category:addChild(L["Spoils of Pandaria"], {
	8529,	-- Criss Cross
	8478,	-- Heroic: Spoils of Pandaria
});

category:addChild(L["Thok the Bloodthirsty"], {
	8527,	-- Giant Dinosaur vs. Mega Snail
	8479,	-- Heroic: Thok the Bloodthirsty
});

category:addChild(L["Siegecrafter Blackfuse"], {
	8543,	-- Lasers and Magnets and Drills! Oh My!
	8480,	-- Heroic: Siegecrafter Blackfuse
});

category:addChild(L["Paragons of the Klaxxi"], {
	8531,	-- Now We are the Paragon
	8481,	-- Heroic: Paragons of the Klaxxi
});

category:addChild(L["Garrosh Hellscream"], {
	8537,	-- Strike!
	{ id = 8679, faction = AchieveIt.Factions.ALLIANCE },	-- Conqueror of Orgrimmar
	{ id = 8680, faction = AchieveIt.Factions.HORDE },	-- Liberator of Orgrimmar
	8482,	-- Heroic: Garrosh Hellscream
});

category:inheritAchievements();


