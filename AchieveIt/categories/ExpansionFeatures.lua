------------------------
-- Expansion Features --
------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");


------------------------
-- Pandaria Scenarios --
------------------------

---------
-- All --
---------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, L["Progress"], {
	{ id = 6874, faction = AchieveIt.Factions.ALLIANCE },	-- Scenaturday
	{ id = 7509, faction = AchieveIt.Factions.HORDE },	-- Scenaturday
	7385,	-- Pub Crawl
});

---------------------
-- A Brewing Storm --
---------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, AchieveIt.GetMapName(Zone.A_Brewing_Storm), {
	7252,	-- A Brewing Storm
	8310,	-- Heroic: A Brewing Storm
	7257,	-- Don't Shake the Keg
	7258,	-- Party of Six
	7261,	-- The Perfect Pour
}).locate =	function(p_current_map)

	return Zone.A_Brewing_Storm	==	 p_current_map;

end;

-----------------------
-- A Little Patience --
-----------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, AchieveIt.GetMapName(Zone.A_Little_Patience), {
	7988,	-- A Little Patience
	7989,	-- Bubbletrapped!
	7990,	-- Cannonballer
	7992,	-- I Used To Love Them
	7993,	-- We've Been Dancin'
	7991,	-- Which Came First?
}).locate =	function(p_current_map)

	return Zone.A_Little_Patience	==	 p_current_map;

end;

---------------------------
-- Arena of Annihilation --
---------------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, L["Arena of Annihilation"], {
	7271,	-- Arena of Annihilation
	7273,	-- Beat the Heat
	7272,	-- In the Eye of the Tiger
}).locate =	function(p_current_map)

	return Zone.Arena_of_Annihilation	==	 p_current_map;

end;

-------------------------
-- Assault on Zan'vess --
-------------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, AchieveIt.GetMapName(Zone.Assault_on_Zanvess), {
	8016,	-- Assault on Zan'vess
	8017,	-- For the Swarm
}).locate =	function(p_current_map)

	return Zone.Assault_on_Zanvess	==	 p_current_map;

end;

-----------------------------
-- Battle on the High Seas --
-----------------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios,  AchieveIt.GetMapName(Zone.Battle_on_the_High_Seas), {
	{ id = 8314, faction = AchieveIt.Factions.ALLIANCE },	-- Battle on the High Seas
	{ id = 8315, faction = AchieveIt.Factions.HORDE },	-- Battle on the High Seas
	{ id = 8364, faction = AchieveIt.Factions.ALLIANCE },	-- Heroic: Battle on the High Seas
	{ id = 8366, faction = AchieveIt.Factions.HORDE },	-- Heroic: Battle on the High Seas
	8347,	-- Keep those Bombs Away! from me...
}).locate =	function(p_current_map)

	return Zone.Battle_on_the_High_Seas	==	 p_current_map;

end;

-----------------------
-- Blood in the Snow --
-----------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios,  L["Blood in the Snow"], {
	8316,	-- Blood in the Snow
	8312,	-- Heroic: Blood in the Snow
	8329,	-- Heed the Weed
	8330,	-- Hekima's Heal-Halter
}).locate =	function(p_current_map)

	return Zone.Blood_in_the_Snow	==	 p_current_map;

end;

-----------------------
-- Brewmoon Festival --
-----------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, AchieveIt.GetMapName(Zone.Brewmoon_Festival), {
	6923,	-- Brewmoon Festival
	6931,	-- Binan Village All-Star
	6930,	-- Yaungolian Barbecue
}).locate =	function(p_current_map)

	return Zone.Brewmoon_Festival	==	 p_current_map;

end;

------------------------------
-- Crypt of Forgotten Kings --
------------------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, AchieveIt.GetMapName(Zone.Crypt_of_Forgotten_Kings), {
	7522,	-- Crypt of Forgotten Kings
	8311,	-- Heroic: Crypt of Forgotten Kings
	7276,	-- Fancy Footwork
	8368,	-- Fight Anger with Anger
	7275,	-- It's a Trap!
}).locate =	function(p_current_map)

	return Zone.Crypt_of_Forgotten_Kings	==	 p_current_map;

end;

------------------------
-- Dagger in the Dark --
------------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, AchieveIt.GetMapName(Zone.Dagger_in_the_Dark), {
	8009,	-- Dagger in the Dark
	7987,	-- No Egg Left Behind
	7984,	-- Watery Grave
	7986,	-- You Mean That Wasn't a Void Zone?
}).locate =	function(p_current_map)

	return Zone.Dagger_in_the_Dark	==	 p_current_map;

end;

----------------------------
-- Dark Heart of Pandaria --
----------------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios,  L["Dark Heart of Pandaria"], {
	8317,	-- Dark Heart of Pandaria
	8318,	-- Heroic: Dark Heart of Pandaria
	8319,	-- Accelerated Archaeology
}).locate =	function(p_current_map)

	return Zone.Dark_Heart_of_Pandaria	==	 p_current_map;

end;

----------------------
-- Domination Point --
----------------------

if (AchieveIt.FACTION == "Horde") then

	AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, L["Domination Point"], {
		{ id = 8013, faction = AchieveIt.Factions.HORDE },	-- Domination Point
		{ id = 8014, faction = AchieveIt.Factions.HORDE },	-- Number Five Is Alive
		{ id = 8015, faction = AchieveIt.Factions.HORDE },	-- Waste Not, Want Not
	}).locate =	function(p_current_map)

		return Zone.Domination_Point_H	==	 p_current_map;

	end;

end

------------------------
-- Greenstone Village --
------------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, L["Greenstone Village"], {
	7265,	-- Greenstone Village
	7267,	-- Perfect Delivery
	7266,	-- Save it for Later
}).locate =	function(p_current_map)

	return Zone.Greenstone_Village	==	 p_current_map;

end;

--------------------
-- Lion's Landing --
--------------------

if (AchieveIt.FACTION == "Alliance") then

	AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios,L["Lion's Landing"], {
		{ id = 8010, faction = AchieveIt.Factions.ALLIANCE },	-- Lion's Landing
		{ id = 8011, faction = AchieveIt.Factions.ALLIANCE },	-- Number Five Is Alive
		{ id = 8012, faction = AchieveIt.Factions.ALLIANCE },	-- Waste Not, Want Not
	}).locate =	function(p_current_map)

		return Zone.Lions_Landing_A	==	 p_current_map;

	end;
end

-----------------------------
-- The Secrets of Ragefire --
-----------------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios,  AchieveIt.GetMapName(Zone.The_Secrets_of_Ragefire), {
	8294,	-- The Secrets of Ragefire
	8327,	-- Heroic: The Secrets of Ragefire
	8295,	-- The Few, the Proud, the Gob Squad
}).locate =	function(p_current_map)

	return Zone.The_Secrets_of_Ragefire	==	 p_current_map;

end;

----------------------
-- Theramore's Fall --
----------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios, L["Theramore's Fall"], {
	{ id = 7523, faction = AchieveIt.Factions.ALLIANCE },	-- Theramore's Fall
	{ id = 7524, faction = AchieveIt.Factions.HORDE },	-- Theramore's Fall
	{ id = 7526, faction = AchieveIt.Factions.ALLIANCE },	-- Kite Fight
	{ id = 7529, faction = AchieveIt.Factions.HORDE },	-- Kite Fight
	{ id = 7527, faction = AchieveIt.Factions.ALLIANCE },	-- No Tank You
	{ id = 7530, faction = AchieveIt.Factions.HORDE },	-- No Tank You
}).locate = function(p_current_map)

	-- in scenario
	return Zone.Theramores_Fall_A == p_current_map or Zone.Theramores_Fall_H == p_current_map ;

end;

----------------
-- Unga Ingoo --
----------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_PandariaScenarios,  AchieveIt.GetMapName(Zone.Unga_Ingoo), {
	7249,	-- Unga Ingoo
	7248,	-- Monkey See, Monkey Kill
	7239,	-- Monkey in the Middle
	7231,	-- Spill No Evil
	7232,	-- The Keg Runner
}).locate =	function(p_current_map)

	return Zone.Unga_Ingoo	==	 p_current_map;

end;


-----------------
-- Wintergrasp --
-----------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Wintergrasp, L["Progress"], {
	1752, -- Master of Wintergrasp
	2080, -- Black War Mammoth
});

---------
-- PvP --
---------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Wintergrasp, PVP, {
	{ id = 1737, faction = AchieveIt.Factions.ALLIANCE}, -- Destruction Derby
	{ id = 2476, faction = AchieveIt.Factions.HORDE}, -- Destruction Derby
	1751, -- Didn't Stand a Chance
	1727, -- Leaning Tower
	1723, -- Vehicular Gnomeslaughter
	2199, -- Wintergrasp Ranger
	1718, -- Wintergrasp Veteran
	1717, -- Wintergrasp Victory
	1755, -- Within Our Grasp
}).locate = function(p_current_map)

	return Zone.Wintergrasp == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Wintergrasp, RAID_DIFFICULTY1, {
	1722, -- Archavon the Stone Watcher (10 player)
	3136, -- Emalon the Storm Watcher (10 player)
	3836, -- Koralon the Flame Watcher (10 player)
	4585, -- Toravon the Ice Watcher (10 player)
}).locate = function(p_current_map)

	return Zone.Wintergrasp == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Wintergrasp, RAID_DIFFICULTY2, {
	1721, -- Archavon the Stone Watcher (25 player)
	3137, -- Emalon the Storm Watcher (25 player)
	3837, -- Koralon the Flame Watcher (25 player)
	4586, -- Toravon the Ice Watcher (25 player)
}).locate = function(p_current_map)

	return Zone.Wintergrasp == p_current_map;

end;


---------------
-- Tol Barad --
---------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_TolBarad, L["Progress"], {
	{ id = 5718, faction = AchieveIt.Factions.ALLIANCE}, -- Just Another Day in Tol Barad
	{ id = 5719, faction = AchieveIt.Factions.HORDE}, -- Just Another Day in Tol Barad
	{ id = 5490, faction = AchieveIt.Factions.HORDE}, -- Master of Tol Barad
	{ id = 5489, faction = AchieveIt.Factions.ALLIANCE}, -- Master of Tol Barad
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_TolBarad, _G["OTHER"], {
	6108, -- Alizabal
	6045, -- Occu'thar
	5416, -- Pit Lord Argaloth
	5486, -- Tol Barad All-Star
	5487, -- Tol Barad Saboteur
	{ id = 5417, faction = AchieveIt.Factions.ALLIANCE}, -- Tol Barad Veteran
	{ id = 5418, faction = AchieveIt.Factions.HORDE}, -- Tol Barad Veteran
	5412, -- Tol Barad Victory
	5415, -- Tower Plower
	5488, -- Towers of Power
});


---------------------
-- Proving Grounds --
---------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_ProvingGrounds, HEALER, {
	9584, -- Proving Yourself: Bronze Healer
	9585, -- Proving Yourself: Silver Healer
	9586, -- Proving Yourself: Gold Healer
	9587, -- Proving Yourself: Endless Healer (Wave 10)
	9588, -- Proving Yourself: Endless Healer (Wave 20)
	9589, -- Proving Yourself: Endless Healer (Wave 30)
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_ProvingGrounds, TANK, {
	9578, -- Proving Yourself: Bronze Tank
	9579, -- Proving Yourself: Silver Tank
	9580, -- Proving Yourself: Gold Tank
	9581, -- Proving Yourself: Endless Tank (Wave 10)
	9582, -- Proving Yourself: Endless Tank (Wave 20)
	9583, -- Proving Yourself: Endless Tank (Wave 30)
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_ProvingGrounds, DAMAGE, {
	9572, -- Proving Yourself: Bronze Damage
	9573, -- Proving Yourself: Silver Damage
	9574, -- Proving Yourself: Gold Damage
	9575, -- Proving Yourself: Endless Damage (Wave 10)
	9576, -- Proving Yourself: Endless Damage (Wave 20)
	9577, -- Proving Yourself: Endless Damage (Wave 30)
});


AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_ProvingGrounds, _G["OTHER"], {
	9590, -- You're Doing it Wrong
});

----------------------
-- Draenor Garrison --
----------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, SPLASH_NEW_6_2_FEATURE2_TITLE, { -- "Garrison Naval Missions"
	10177, -- Set Sail!
	{ id = 10276, faction = AchieveIt.Factions.HORDE}, -- Admiral
	{ id = 10174, faction = AchieveIt.Factions.ALLIANCE}, -- Admiral
	{ id = 10256, faction = AchieveIt.Factions.ALLIANCE}, -- Charting a Course
	{ id = 10258, faction = AchieveIt.Factions.HORDE}, -- Charting a Course
	{ id = 10167, faction = AchieveIt.Factions.ALLIANCE}, -- Exploring the High Seas
	{ id = 10307, faction = AchieveIt.Factions.HORDE}, -- Exploring the High Seas
	{ id = 10173, faction = AchieveIt.Factions.ALLIANCE}, -- Fleet Commander
	{ id = 10275, faction = AchieveIt.Factions.HORDE}, -- Fleet Commander
	10165, -- Ironsides
	10164, -- Master of the Seas
	10168, -- Naval Armada
	10017, -- Naval Bonus Specialist (10 naval bonus missions)
	10036, -- Naval Bonus Expert (50 naval bonus missions)
	10156, -- Naval Combat Specialist
	10154, -- Naval Combat Expert
	10169, -- Naval Fleet
	10166, -- Naval Mechanics
	10161, -- Naval Siege Specialist
	10155, -- Naval Siege Expert
	10162, -- Naval Training Specialist
	10163, -- Naval Training Expert
	10159, -- Naval Treasure Specialist
	10160, -- Naval Treasure Expert
	10170, -- Seaman
	{ id = 10172, faction = AchieveIt.Factions.ALLIANCE}, -- Petty Officer
	{ id = 10255, faction = AchieveIt.Factions.HORDE}, -- Petty Officer
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, GARRISON_FOLLOWERS, {
	9130, -- A Rare Friend
	9131, -- An Epic Buddy
	9107, -- Follow the Leader (5 followers)
	9108, -- Where You Go, They Will Follow (10 followers)
	9109, -- Fearless Leader (25 followers)
	9494, -- Commander (40 followers)
	9110, -- Following Up (1 followers @ lvl 100)
	9111, -- Raising the Bar (10 followers @ lvl 100)
	9129, -- Filling the Ranks (20 followers @ lvl 100)
	9213, -- Item Level Army (10 followers at ilvl 650)
	9243, -- Item Level Force (20 followers at ilvl 650)
	9211, -- My Item Level Is Higher than Yours (ilvl 625)
	9212, -- My Item Level Is Way Higher than Yours (ilvl 650)
	9498, -- Wingman
	9499, -- Wingmen
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, GARRISON_MISSIONS, {
	9133, -- On a Mission (1 Mission)
	9134, -- On a Few Missions  (50 Missions)
	9138, -- On a Lot of Missions  (100 Missions)
	9139, -- On a Massive Number of Missions  (500 Missions)
	9140, -- On a Metric Ton of Missions  (1000 Missions)
	9141, -- A Rare Mission (1 Rare Mission)
	9142, -- Keeping It Rare (50 Rare Missions)
	9143, -- The Rarer the Better (300 Rare Missions)
	9150, -- Exploration Mission Specialist
	9900, -- Exploration Mission Master
	9146, -- Patrol Mission Specialist
	9523, -- Patrolling Draenor
	9145, -- Treasure Mission Specialist
	9524, -- Treasure Master
	9147, -- Mission Specialist
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, GARRISON_LANDING_INVASION, {
	9152, -- It's an Invasion! (1 Invasion)
	9167, -- Invasion Specialist (10 Invasions)
	9543, -- Invasion? What Invasion? (50 Invasions)
	9244, -- Invasions Are Better with Friends
	9208, -- Botani Invasion
	9207, -- Goren Invasion
	9205, -- Iron Horde Invasion
	9204, -- Ogre Invasion
	9203, -- Shadow Council Invasion
	9206, -- Shadowmoon Clan Invasion
	9181, -- Save Those Buildings!
	9858, -- Master and Commander
	9162, -- Bronze Defender
	9164, -- Silver Defender
	9165, -- Golden Defender
	9826, -- Platinum Defender
	9209, -- Master Defender
	9827, -- Impervious Defender
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, L["Gladiator's Sanctum"], {
	{ id = 9517, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Death Stalker
	{ id = 9509, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Draenei Destroyer
	{ id = 9510, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Dwarfstalker
	{ id = 9511, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Gnomebane
	{ id = 9520, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Huojin's Fall
	{ id = 9518, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Killer of Kezan
	{ id = 9512, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Manslayer
	{ id = 9519, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Orcslayer
	{ id = 9513, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Scourge of the Kaldorei
	{ id = 9516, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Slayer of Sin'dorei
	{ id = 9514, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Terror of the Tushui
	{ id = 9521, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: The Butcher
	{ id = 9522, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Troll Hunter
	{ id = 9515, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Worgen Hunter
	{ id = 9508, faction = AchieveIt.Factions.HORDE}, -- Warlord of Draenor
	{ id = 9738, faction = AchieveIt.Factions.ALLIANCE}, -- Warlord of Draenor
	9495, -- The Bone Collector
	{ id = 9248, faction = AchieveIt.Factions.HORDE}, -- Defender of Draenor
	{ id = 9630, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of Draenor
	9639, -- Fight, Kill, Salute!
});


AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, L["Lumber Mill"], {
	9076, -- Choppin' Some Logs (10 work orders)
	9077, -- Choppin' Some More Logs (50 work orders)
	{ id = 9080, faction = AchieveIt.Factions.HORDE}, -- Choppin' Even More Logs (100 work orders)
	{ id = 9078, faction = AchieveIt.Factions.ALLIANCE}, -- Choppin' Even More Logs (100 work orders)
	9429, -- Upgrading the Mill
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, L["Barn"], {
	9450, -- The Trap Game (50 work orders)
	9565, -- Master Trapper (125 work orders)
	9451, -- Trapper's Delight (250 work orders)
	9452, -- Trap Superstar (500 work orders)
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, GARRISON_ARCHITECT, {
	9125, -- Draftsman (20 blueprints)
	9126, -- Master Draftsman (40 blueprints)
	9128, -- Grand Master Draftsman (60 blueprints)
	9097, -- Keepin' Busy
	9099, -- Time for an Upgrade (1 level 2 plot)
	9095, -- Builder (level 2 plots)
	9098, -- Movin' On Up (1 level 3 plot)
	9096, -- Master Builder (level 3 plots)
	{ id = 9100, faction = AchieveIt.Factions.ALLIANCE}, -- More Plots (garrison level 2)
	{ id = 9545, faction = AchieveIt.Factions.HORDE}, -- More Plots
	{ id = 9101, faction = AchieveIt.Factions.ALLIANCE}, -- Even More Plots (garrison level 3)
	{ id = 9546, faction = AchieveIt.Factions.HORDE}, -- Even More Plots
	9094, -- Garrison Architect
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, STABLES, {
	9538, -- Intro to Husbandry
	{ id = 9539, faction = AchieveIt.Factions.ALLIANCE}, -- Advanced Husbandry
	{ id = 9705, faction = AchieveIt.Factions.HORDE}, -- Advanced Husbandry
	{ id = 9540, faction = AchieveIt.Factions.ALLIANCE}, -- The Stable Master
	{ id = 9706, faction = AchieveIt.Factions.HORDE}, -- The Stable Master
	9526, -- Master of Mounts
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_DraenorGarrison, _G["OTHER"], {
	8933, -- Staying Regular
	{ id = 9828, faction = AchieveIt.Factions.ALLIANCE}, -- Ten Hit Tunes
	{ id = 9897, faction = AchieveIt.Factions.HORDE}, -- Ten Hit Tunes
	{ id = 9912, faction = AchieveIt.Factions.ALLIANCE}, -- Azeroth's Top Twenty Tunes
	{ id = 9914, faction = AchieveIt.Factions.HORDE}, -- Azeroth's Top Twenty Tunes
	{ id = 10015, faction = AchieveIt.Factions.ALLIANCE}, -- Full Discography
	{ id = 10016, faction = AchieveIt.Factions.HORDE}, -- Full Discography
	{ id = 9210, faction = AchieveIt.Factions.ALLIANCE}, -- Garrison Buddies
	{ id = 9132, faction = AchieveIt.Factions.HORDE}, -- Garrison Buddies
	9487, -- Got My Mind On My Draenor Money
	{ id = 9901, faction = AchieveIt.Factions.HORDE}, -- Don't Call Me Junior
	{ id = 9928, faction = AchieveIt.Factions.ALLIANCE}, -- Don't Call Me Junior
	9405, -- Working Some Orders (125 work orders)
	9406, -- Working More Orders (250 work orders)
	9407, -- Working Many Orders (750 work orders)
	{ id = 9255, faction = AchieveIt.Factions.HORDE}, -- Mythic Draenor Raider
	{ id = 9631, faction = AchieveIt.Factions.ALLIANCE}, -- Mythic Draenor Raider
	9497, -- Finding Your Waystones
	9468, -- Salvaging Pays Off
	9703, -- Stay Awhile and Listen
	9527, -- Terrific Technology
	9265, -- Master of Apexis
	9264, -- Draenor Pet Brawler
	9246, -- Master Draenor Crafter
});


-----------------------
-- Legion Class Hall --
-----------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_LegionClassHall, GARRISON_FOLLOWERS, {
	11220, -- Roster of Champions (8 champions)
	11222, -- Champions of Power (8 champions @ 850)
	11221, -- Champions Rise (8 champions at lvl 110)
	10706, -- Training the Troops (5 troops)
	11212, -- Raise an Army (20 troops)
	11213, -- Lead a Legion (100 troops)
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_LegionClassHall, GARRISON_MISSIONS, {
	11214, -- Many Missions (10 missions)
	11215, -- Quite a Few Missions (50 missions)
	11216, -- So Many Missions (100 missions)
	11217, -- Many Many Missions, Handle It! (500 missions)
	11219, -- Need Backup (raid reward)
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_LegionClassHall, L["Order Hall Campaign"], {
	10994, -- A Glorious Campaign
	11135, -- A Heroic Campaign
	11136, -- An Epic Campaign
	10746, -- Forged for Battle
	11223, -- Legendary Research
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_LegionClassHall, TRANSMOGRIFY, {
	11298, -- A Classy Outfit
	11171, -- Arsenal of Power
	10461, -- Fighting with Style: Classic
	10750, -- Fighting with Style: Hidden
	10748, -- Fighting with Style: Valorous
	{ id = 10749, faction = AchieveIt.Factions.ALLIANCE}, -- Fighting with Style: War-torn
	{ id = 11173, faction = AchieveIt.Factions.HORDE}, -- Fighting with Style: War-torn
	10460, -- Hidden Potential
	10459, -- Improving on History
});


------------------------
-- Island Expeditions --
------------------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_IslandExpeditions, PVP, {
	13098, -- Bane of the Chain
	13102, -- Clash at the Cay
	13106, -- Mire Marauder
	13115, -- Reef Madness
	12592, -- Ruined the Ruins
	13110, -- Skittering Smashed
	13114, -- War for the Wilds

	13399,	-- Jorundall Justice
	13400,	-- Havenswood Hero

	13580, -- Crestfallen
	13584, -- Snowblossom Scrapper

	12597, -- Bayside Brawler (10 islands)
	13120, -- Blood in the Water (20 Islands)
	13121, -- Notorious (50 Islands)

	13129, -- Sucker Punch

	13141, -- Island Slayer

})
AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_IslandExpeditions, Difficulty.Normal, {
	13095, -- Dread Chain
	13099, -- Molten Cay
	13103, -- Rotting Mire
	13107, -- Skittering Hollow
	12590, -- Un'gol Ruins
	13111, -- Verdant Wilds
	13119, -- Whispering Reef

	13389,	-- Jorundall
	13396,	-- Havenswood

	13577, -- Crestfall
	13581, -- Snowblossom Village

	12596, -- No Tourist

})

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_IslandExpeditions, Difficulty.Heroic, {
	13096, -- Heroic: Dread Chain
	13100, -- Heroic: Molten Cay
	13104, -- Heroic: Rotting Mire
	13108, -- Heroic: Skittering Hollow
	12589, -- Heroic: Un'gol Ruins
	13112, -- Heroic: Verdant Wilds
	13118, -- Heroic: Whispering Reef

	13394,	-- Heroic: Jorundall
	13397,	-- Heroic: Havenswood

	13578, -- Heroic: Crestfall
	13582, -- Heroic: Snowblossom Village

	12594, -- Competent Captain

})

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_IslandExpeditions, Difficulty.Mythic, {
	13097, -- Mythic: Dread Chain
	13101, -- Mythic: Molten Cay
	13105, -- Mythic: Rotting Mire
	13109, -- Mythic: Skittering Hollow
	12591, -- Mythic: Un'gol Ruins
	13113, -- Mythic: Verdant Wilds
	13116, -- Mythic: Whispering Reef

	13395,	-- Mythic: Jorundall
	13398,	-- Mythic: Havenswood

	13579, -- Mythic: Crestfall
	13583, -- Mythic: Snowblossom Village

	12595, -- Expert Expeditioner
	13122, -- Island Conqueror

})

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_IslandExpeditions,  _G["OTHER"], {
	13142, -- Archipelago Explorer
	13125, -- Azerite Admiral
	13134, -- Expedition Leader
	13126, -- Give Me The Energy
	13132, -- Helping Hand
	13128, -- I'm Here for the Pets
	13123, -- My Dubs
	13124, -- Metal Detector
	{ id = 13133, faction = AchieveIt.Factions.ALLIANCE}, -- Team Deathmatch
	{ id = 13135, faction = AchieveIt.Factions.HORDE}, -- Team Deathmatch
	13127, -- Tell Me A Tale

})


----------------
-- War Effort --
----------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_WarEffort,  WAR_MISSIONS, {
	{ id = 12869, faction = AchieveIt.Factions.HORDE}, -- Azeroth at War: After Lordaeron
	{ id = 12898, faction = AchieveIt.Factions.ALLIANCE}, -- Azeroth at War: After Lordaeron
	{ id = 12870, faction = AchieveIt.Factions.HORDE}, -- Azeroth at War: Kalimdor on Fire
	{ id = 12899, faction = AchieveIt.Factions.ALLIANCE}, -- Azeroth at War: Kalimdor on Fire
	{ id = 12867, faction = AchieveIt.Factions.HORDE}, -- Azeroth at War: The Barrens
	{ id = 12896, faction = AchieveIt.Factions.ALLIANCE}, -- Azeroth at War: The Barrens
})

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_WarEffort,  FOLLOWERLIST_LABEL_CHAMPIONS, {
	12872, -- The Dirty Five
})

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_WarEffort,  L["Battle for Stromgarde"], {
	12874, -- An Eventful Battle
	{ id = 12884, faction = AchieveIt.Factions.ALLIANCE}, -- Leader of Troops
	{ id = 12878, faction = AchieveIt.Factions.HORDE}, -- Leader of Troops
	{ id = 12888, faction = AchieveIt.Factions.ALLIANCE}, -- Strike Hard
	{ id = 12877, faction = AchieveIt.Factions.HORDE}, -- Strike Hard
	{ id = 12889, faction = AchieveIt.Factions.ALLIANCE}, -- Strike Fast
	{ id = 12876, faction = AchieveIt.Factions.HORDE}, -- Strike Fast
	{ id = 12879, faction = AchieveIt.Factions.HORDE}, -- Tour of War
	{ id = 12886, faction = AchieveIt.Factions.ALLIANCE}, -- Tour of War
	{ id = 12873, faction = AchieveIt.Factions.HORDE}, -- War is Hell
	{ id = 12881, faction = AchieveIt.Factions.ALLIANCE}, -- War is Hell

	{ id = 13739, faction = AchieveIt.Factions.ALLIANCE}, -- Heroic: Tour of War
	{ id = 13738, faction = AchieveIt.Factions.HORDE}, -- Heroic: Tour of War
	{ id = 13737, faction = AchieveIt.Factions.ALLIANCE}, -- Heroic: War is Hell
	{ id = 13735, faction = AchieveIt.Factions.HORDE}, -- Heroic: War is Hell

})

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_WarEffort,  L["Battle for Darkshore"], {

	{ id = 13296, faction = AchieveIt.Factions.HORDE}, -- War for the Shore
	{ id = 13297, faction = AchieveIt.Factions.ALLIANCE}, -- War for the Shore
	{ id = 13301, faction = AchieveIt.Factions.HORDE}, -- Under Cover of Darkness
	{ id = 13302, faction = AchieveIt.Factions.ALLIANCE}, -- Under Cover of Darkness
	{ id = 13305, faction = AchieveIt.Factions.HORDE}, -- Night Moves
	{ id = 13306, faction = AchieveIt.Factions.ALLIANCE}, -- Night Moves
	{ id = 13307, faction = AchieveIt.Factions.HORDE}, -- Recruitment Officer
	{ id = 13308, faction = AchieveIt.Factions.ALLIANCE}, -- Recruitment Officer
	{ id = 13309, faction = AchieveIt.Factions.HORDE}, -- Deforester
	{ id = 13310, faction = AchieveIt.Factions.ALLIANCE}, -- By Nature's Call
	{ id = 14150, faction = AchieveIt.Factions.ALLIANCE}, -- Heroic: War for the Shore
	{ id = 14149, faction = AchieveIt.Factions.HORDE}, -- Heroic: War for the Shore


})


--[[
Hidden:
	{ id = 13254, faction = AchieveIt.Factions.HORDE}, -- Defeat 2 Commanders (Horde) (Hidden)
	{ id = 13255, faction = AchieveIt.Factions.ALLIANCE}, -- Defeat 2 Commanders (Alliance) (Hidden)



--]]

--------------
-- Torghast --
--------------

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["Progress"],{

15091, -- A Taste of Perfection
15093, -- Avenge Me!
15096, -- Crowd Pleaser
14773, -- Explosive Extermination
14778, -- Extremely Ravenous
15089, -- Flawless Master 12
15322, -- Flawless Master 16
14776, -- For the Hoarder!
14498, -- Gatekeepers of Torghast
15075, -- Infiltrators
15079, -- Many, Many Things
15092, -- Master of Torment
15095, -- No Doubt	
14501, -- Phanatical
14499, -- Phanciful
14500, -- Phantastic
15094, -- Rampage
15080, -- So Blessed
14810, -- Terror of Torghast
15076, -- The Box of Many Things
14808, -- Touring Torghast
15324, -- Tower Ranger
14809, -- Traversing Torghast

}).locate =	function(p_current_map)

	return Zone.Torghast_Entrance == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["Runecarver"],{

14795, -- Clearing the Fog
14759, -- It's Coming Back to Me...
14755, -- Legendary Accord
14760, -- Recollection Collection
14754, -- The Forgotten One

}).locate = function() 
	
	return	C_Map.GetBestMapForUnit("player") == 1912;
	
end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["Coldheart Interstitia"],{

14483, -- Coldheart Interstitia
15083, -- Flawless: Coldheart Interstitia 12
15318, -- Flawless: Coldheart Interstitia 16

}).locate = function() 
	
	return	L["Coldheart Interstitia"] == GetSubZoneText();
	
end;


AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["Mort'regar"],{

14488, -- Mort'regar
15087, -- Flawless: Mort'regar 12
15319, -- Flawless: Mort'regar 16

}).locate = function() 
	
	return	L["Mort'regar"] == GetSubZoneText();
	
end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["Skoldus Hall"],{

14463, -- Skoldus Hall
15081, -- Flawless: Skoldus Hall 12
15314, -- Flawless: Skoldus Hall 16

}).locate = function() 
	
	return	L["Skoldus Hall"] == GetSubZoneText();
	
end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["The Fracture Chambers"],{

14473, -- Fracture Chambers
15082, -- Flawless: Fracture Chambers 12
15316, -- Flawless: Fracture Chambers 16

}).locate = function() 
	
	return	L["The Fracture Chambers"] == GetSubZoneText();
	
end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["The Soulforges"],{

14478, -- The Soulforges
15084, -- Flawless: The Soulforges 12
15317, -- Flawless: The Soulforges 16

}).locate = function() 
	
	return	L["The Soulforges"] == GetSubZoneText();
	
end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["The Upper Reaches"],{

14493, -- The Upper Reaches
15088, -- Flawless: The Upper Reaches 12
15320, -- Flawless: The Upper Reaches 16

}).locate = function() 
	
	return	L["The Upper Reaches"] == GetSubZoneText();
	
end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["Twisting Corridors"],{

14468, -- Twisting Corridors: Layer 1
14469, -- Twisting Corridors: Layer 2
14470, -- Twisting Corridors: Layer 3
14471, -- Twisting Corridors: Layer 4
14472, -- Twisting Corridors: Layer 5
14568, -- Twisting Corridors: Layer 6
14569, -- Twisting Corridors: Layer 7
14570, -- Twisting Corridors: Layer 8

});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["The Adamant Vaults"],{

15067, -- Adamant Vaults

}).locate = function() 
	
	return	L["The Adamant Vaults"] == GetSubZoneText();
	
end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Torghast,L["The Jailer's Gauntlet"],{

15251, -- The Jailer's Gauntlet: Layer 1
15252, -- The Jailer's Gauntlet: Layer 2
15253, -- The Jailer's Gauntlet: Layer 3
15254, -- The Jailer's Gauntlet: Layer 4
15255, -- The Jailer's Gauntlet: Layer 5
15256, -- The Jailer's Gauntlet: Layer 6
15257, -- The Jailer's Gauntlet: Layer 7
15258, -- The Jailer's Gauntlet: Layer 8

}).locate = function() 
	
	return	L["The Jailer's Gauntlet"] == GetSubZoneText();
	
end;

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Covenant_Sanctums,L["Kyrian"], {
14853, -- All The Colours of the Painbow
14860, -- Bare Necessities
14851, -- Bastion of Protection
14856, -- Charmed, I'm Sure
14858, -- Curse of Thirst
14863, -- Death Foursworn
14865, -- Disciple of Humility
14859, -- Inside the Park Home Run
14862, -- It's How You Wear It
14854, -- It's Not what You Wear
14857, -- Itsy Bitsy Fighters
14861, -- Learning from the Masters  
14866, -- Master of the Path
14864, -- Personal Nightmare
14852, -- The Hoot of the Issue
14887, -- To the Moon
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Covenant_Sanctums,L["Necrolords"], {
14684, -- Abominable Lives
14833, -- Fashion Abomination
14753, -- It's a Wrap
14751, -- The Gang's All Here
14764, -- The Great Luckydo
14752, -- Things To Do When You're Dead
14748, -- Wardrobe Makeover
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Covenant_Sanctums,L["Night Fae"], {
14789, -- All Spirits Great and Small
14676, -- Divine Spirit Saviour
14780, -- Meditation mater
14775, -- Mush Appreciated
14675, -- Spirit Talker
14677, -- Spiritual Observations
14670, -- That's the Spirit
});

AchieveIt.Categories:addCategory(CatID.ExpansionFeatures_Covenant_Sanctums,L["Venthyr"], {
14723, -- Be Our Guest
14678, -- Court Favours
14681, -- Dredger Academy
14683, -- Dredger Style
14726, -- It's Certainly Never Boring
14727, -- Master of Ceremonies
14679, -- Party Palace
14724, -- People Pleaser
14749, -- Rendle's Big Day
14680, -- Something for Everyone
14682, -- The Party Herald
14725, -- We Happy Few
});