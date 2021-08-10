------------------------------------------
-- Dungeons & Raids - Cataclysm
------------------------------------------
local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Glory"], {
	4845,	-- Glory of the Cataclysm Hero
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, _G["DUNGEONS"], {
	4833,	-- Blackrock Caverns
	4839,	-- Throne of the Tides
	4846,	-- The Stonecore
	4847,	-- The Vortex Pinnacle
	4840,	-- Grim Batol
	4841,	-- Halls of Origination
	4848,	-- Lost City of the Tol'vir
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Heroic Dungeons"], {
	5060,	-- Heroic: Blackrock Caverns
	5061,	-- Heroic: Throne of the Tides
	5063,	-- Heroic: The Stonecore
	5064,	-- Heroic: The Vortex Pinnacle
	5062,	-- Heroic: Grim Batol
	5065,	-- Heroic: Halls of Origination
	5066,	-- Heroic: Lost City of the Tol'vir
	5083,	-- Heroic: Deadmines
	5093,	-- Heroic: Shadowfang Keep
	5768,	-- Heroic: Zul'Gurub
	5769,	-- Heroic: Zul'Aman
	6117,	-- Heroic: End Time
	6118,	-- Heroic: Well of Eternity
	6119,	-- Heroic: Hour of Twilight
});

-----------------------
-- Blackrock Caverns --
-----------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Blackrock Caverns"], {
	4833,	-- Blackrock Caverns
	5060,	-- Heroic: Blackrock Caverns
});

category:addChild(L["Rom'ogg Bonecrusher"], {
	5281,	-- Crushing Bones and Cracking Skulls
});

category:addChild(L["Corla, Herald of Twilight"], {
	5282,	-- Arrested Development
});

category:addChild(L["Karsh Steelbender"], {
	5283,	-- Too Hot to Handle
});

category:addChild(L["Ascendant Lord Obsidius"], {
	5284,	-- Ascendant Descending
});

category:inheritAchievements();


-------------------------
-- Throne of the Tides --
-------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Throne of the Tides"], {	
	4839,	-- Throne of the Tides
	5061,	-- Heroic: Throne of the Tides
});

category:addChild(L["Lady Naz'jar"], {
	5285,	-- Old Faithful
});

category:addChild(L["Ozumat"], {
	5286,	-- Prince of Tides
});

category:inheritAchievements();


-------------------
-- The Stonecore --
-------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["The Stonecore"], {
	4846,	-- The Stonecore
	5063,	-- Heroic: The Stonecore
});

category:addChild(L["High Priestess Azil"], {
	5287,	-- Rotten to the Core
});

category:inheritAchievements();


-------------------------
-- The Vortex Pinnacle --
-------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["The Vortex Pinnacle"], {
	4847,	-- The Vortex Pinnacle
	5064,	-- Heroic: The Vortex Pinnacle
	5289,	-- Extra Credit Bonus Stage
});

category:addChild(L["Asaad"], {
	5288,	-- No Static at All
});

category:inheritAchievements();


----------------
-- Grim Batol --
----------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Grim Batol"], {
	4840,	-- Grim Batol
	5062,	-- Heroic: Grim Batol
});

category:addChild(L["General Umbriss"], {
	5297,	-- Umbrage for Umbriss
});

category:addChild(L["Erudax"], {	
	5298,	-- Don't Need to Break Eggs to Make an Omelet
});

category:inheritAchievements();


--------------------------
-- Halls of Origination --
--------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Halls of Origination"], {
	4841,	-- Halls of Origination
	5065,	-- Heroic: Halls of Origination
	5296,	-- Faster Than the Speed of Light
});

category:addChild(L["Temple Guardian Anhuur"], {
	5293,	-- I Hate That Song
});

category:addChild(L["Earthrager Ptah"], {
	5294,	-- Straw That Broke the Camel's Back
});

category:addChild(L["Rajh"], {
	5295,	-- Sun of a....
});

category:inheritAchievements();


------------------------------
-- Lost City of the Tol'vir --
------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Lost City of the Tol'vir"], {
	4848,	-- Lost City of the Tol'vir
	5066,	-- Heroic: Lost City of the Tol'vir
});

category:addChild(L["High Prophet Barim"], {
	5290,	-- Kill It With Fire!
});

category:addChild(L["Lockmaw"], {
	5291,	-- Acrocalypse Now
});

category:addChild(L["Siamat, Lord of South Wind"], {
	5292,	-- Headed South
});

category:inheritAchievements();


---------------
-- Deadmines --
---------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Deadmines"], {
	5083,	-- Heroic: Deadmines
});

category:addChild(L["Glubtok"], {
	5366,	-- Ready for Raiding
});

category:addChild(L["Helix Gearbreaker"], {
	5367,	-- Rat Pack
});

category:addChild(L["Foe Reaper 5000"], {
	5368,	-- Prototype Prodigy
});

category:addChild(L["Admiral Ripsnarl"], {
	5369,	-- It's Frost Damage
});

category:addChild(L['"Captain" Cookie'], {
	5370,	-- I'm on a Diet
});

category:addChild(L["Vanessa VanCleef"], {
	5371,	-- Vigorous VanCleef Vindicator
});

category:inheritAchievements();


---------------------
-- Shadowfang Keep --
---------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Shadowfang Keep"], {
	5093,	-- Heroic: Shadowfang Keep
});

category:addChild(L["Baron Ashbury"], {
	5503,	-- Pardon Denied
});

category:addChild(L["Commander Springvale"], {
	5504,	-- To the Ground!
});

category:addChild(L["Lord Godfrey"], {	
	5505,	-- Bullet Time
});

category:inheritAchievements();


---------------
-- Zul'Gurub --
---------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Zul'Gurub"], {
	5768,	-- Heroic: Zul'Gurub
	5744,	-- Gurubashi Headhunter
});

category:addChild(L["High Priest Venoxis"], {
	5743,	-- It's Not Easy Being Green
});

category:addChild(L["Bloodlord Mandokir"], {
	5762,	-- Ohganot So Fast!
});

category:addChild(L["Jin'do the Godbreaker"], {
	5759,	-- Spirit Twister
});

category:inheritAchievements();


--------------
-- Zul'Aman --
--------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Zul'Aman"], {
	5769,	-- Heroic: Zul'Aman
	5858,	-- Bear-ly Made It
	5761,	-- Hex Mix
});

category:addChild(L["Halazzi"], {
	5750,	-- Tunnel Vision
});

category:addChild(L["Daakara"], {
	5760,	-- Ring Out!
});

category:inheritAchievements();


--------------
-- End Time --
--------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["End Time"], {
	6117,	-- Heroic: End Time
});

category:addChild(L["Echo of Tyrande"], {
	5995,	-- Moon Guard
});

category:addChild(L["Echo of Sylvanas"], {
	6130,	-- Severed Ties
});

category:inheritAchievements();


----------------------
-- Well of Eternity --
----------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Well of Eternity"], {
	6118,	-- Heroic: Well of Eternity
});

category:addChild(L["Peroth'arn"], {
	6127,	-- Lazy Eye
});

category:addChild(L["Mannoroth"], {
	6070,	-- That's Not Canon!
});

category:inheritAchievements();


----------------------
-- Hour of Twilight --
----------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Hour of Twilight"], {
	6119,	-- Heroic: Hour of Twilight
});

category:addChild(L["Archbishop Benedictus"], {
	6127,	-- Lazy Eye
});

category:inheritAchievements();


--------------------
-- Raids --
--------------------


local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["Glory"], {
	4853,	-- Glory of the Cataclysm Raider
	5828,	-- Glory of the Firelands Raider
	6169,	-- Glory of the Dragon Soul Raider
});

--------------------------------------
-- Blackwing Descent Category --
--------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["Blackwing Descent"], {
	4842,	-- Blackwing Descent
});

category:addChild(L["Magmaw"], {
	5094,	-- Heroic: Magmaw
	5306,	-- Parasite Evening	
});

category:addChild(L["Omnotron Defense System"], {
	5107,	-- Heroic: Omnotron Defense System
	5307,	-- Achieve-a-tron
});

category:addChild(L["Maloriak"], {
	5108,	-- Heroic: Maloriak
	5310,	-- Aberrant Behavior
});

category:addChild(L["Atramedes"], {
	5109,	-- Heroic: Atramedes
	5308,	-- Silence is Golden
});

category:addChild(L["Chimaeron"], {
	5115,	-- Heroic: Chimaeron
	5309,	-- Full of Sound and Fury
});

category:addChild(L["Nefarian"], {
	5116,	-- Heroic: Nefarian
	4849,	-- Keeping it in the Family
});

category:inheritAchievements();


--------------------------------------
-- The Bastion of Twilight Category --
--------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["The Bastion of Twilight"], {
	4850,	-- The Bastion of Twilight
});

category:addChild(L["Halfus Wyrmbreaker"], {
	5118,	-- Heroic: Halfus Wyrmbreaker
	5300,	-- The Only Escape
});

category:addChild(L["Valiona and Theralion"], {
	5117,	-- Heroic: Valiona and Theralion
	4852,	-- Double Dragon
});

category:addChild(L["Ascendant Council"], {
	5119,	-- Heroic: Ascendant Council
	5311,	-- Elementary
});

category:addChild(L["Cho'gall"], {
	5120,	-- Heroic: Cho'gall
	5312,	-- The Abyss Will Gaze Back Into You
});

category:addChild(L["Sinestra"], {
	5121,	-- Heroic: Sinestra
});

category:inheritAchievements();


---------------------------------------
-- Throne of the Four Winds Category --
---------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["Throne of the Four Winds"], {
	4851,	-- Throne of the Four Winds
});

category:addChild(L["Conclave of Wind"], {
	5122,	-- Heroic: Conclave of Wind
	5304,	-- Stay Chill
});

category:addChild(L["Al'Akir"], {
	5123,	-- Heroic: Al'Akir
	5305,	-- Four Play
});

category:inheritAchievements();


------------------------
-- Firelands Category --
------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["Firelands"], {
	5802,	-- Firelands
});

category:addChild(L["Shannox"], {
	5806,	-- Heroic: Shannox
	5829,	-- Bucket List
});

category:addChild(L["Lord Rhyolith"], {
	5808,	-- Heroic: Lord Rhyolith
	5810,	-- Not an Ambi-Turner
});

category:addChild(L["Beth'tilac"], {
	5807,	-- Heroic: Beth'tilac
	5821,	-- Death from Above
});

category:addChild(L["Alysrazor"], {
	5809,	-- Heroic: Alysrazor
	5813,	-- Do a Barrel Roll!
});

category:addChild(L["Baleroc"], {
	5805,	-- Heroic: Baleroc
	5830,	-- Share the Pain
});

category:addChild(L["Majordomo Staghelm"], {
	5804,	-- Heroic: Majordomo Fandral Staghelm
	5799,	-- Only the Penitent...
});

category:addChild(L["Ragnaros"], {
	5803,	-- Heroic: Ragnaros
	5855,	-- Ragnar-O's
});

category:inheritAchievements();


--------------------------
-- Dragon Soul Category --
--------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["Dragon Soul"], {
	6107,	-- Fall of Deathwing
});

category:addChild(L["Morchok"], {
	6109,	-- Heroic: Morchok
	6174,	-- Don't Stand So Close to Me
});

category:addChild(L["Warlord Zon'ozz"], {
	6110,	-- Heroic: Warlord Zon'ozz
	6128,	-- Ping Pong Champion
});

category:addChild(L["Yor'sahj the Unsleeping"], {
	6111,	-- Heroic: Yor'sahj the Unsleeping
	6129,	-- Taste the Rainbow!
});

category:addChild(L["Hagara the Stormbinder"], {
	6112,	-- Heroic: Hagara the Stormbinder
	6175,	-- Holding Hands
});

category:addChild(L["Ultraxion"], {
	6113,	-- Heroic: Ultraxion
	6084,	-- Minutes to Midnight
});

category:addChild(L["Warmaster Blackhorn"], {
	6114,	-- Heroic: Warmaster Blackhorn
	6105,	-- Deck Defender
});

category:addChild(L["Spine of Deathwing"], {
	6115,	-- Heroic: Spine of Deathwing
	6133,	-- Maybe He'll Get Dizzy...
});

category:addChild(L["Madness of Deathwing"], {
	6177,	-- Destroyer's End
	6116,	-- Heroic: Madness of Deathwing
	6180,	-- Chromatic Champion
});

category:inheritAchievements();
