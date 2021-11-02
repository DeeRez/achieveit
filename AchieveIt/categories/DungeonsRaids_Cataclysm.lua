------------------------------------------
-- Dungeons & Raids - Cataclysm
------------------------------------------
local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local cata_dungeon_ids = {
	283, -- Blackrock Caverns - Chamber of Incineration
	284, -- Blackrock Caverns - Twilight Forge
	291, -- The Deadmines - The Deadmines
	292, -- The Deadmines - Ironclad Cove
	401, -- End Time - End Time
	402, -- End Time - Azure Dragonshrine
	403, -- End Time - Ruby Dragonshrine
	404, -- End Time - Obsidian Dragonshrine
	405, -- End Time - Emerald Dragonshrine
	406, -- End Time - Bronze Dragonshrine
	293, -- Grim Batol
	297, -- Halls of Origination - The Vault of Lights
	298, -- Halls of Origination - Tomb of the Earthrager
	299, -- Halls of Origination - The Four Seats
	399, -- Hour of Twilight - Hour of Twilight
	400, -- Hour of Twilight - Wyrmrest Temple
	277, -- Lost City of the Tol'vir
	310, -- Shadowfang Keep - The Courtyard
	311, -- Shadowfang Keep - Dining Hall
	312, -- Shadowfang Keep - The Vacant Den
	313, -- Shadowfang Keep - Lower Observatory
	314, -- Shadowfang Keep - Upper Observatory
	315, -- Shadowfang Keep - Lord Godfrey's Chamber
	316, -- Shadowfang Keep - The Wall Walk
	322, -- Throne of the Tides - Abyssal Halls
	323, -- Throne of the Tides - Throne of Neptulon
	324, -- The Stonecore
	325, -- The Vortex Pinnacle	
	398, -- Well of Eternity
	333, -- Zul'Aman
	337, -- Zul'Gurub
}

local bwd_raid_ids = {
	1538, -- Blackwing Descent - The Broken Hall
	1539, -- Blackwing Descent - Vault of the Shadowflame
}

local bot_raid_ids = {
	294, -- The Bastion of Twilight - The Twilight Enclave
	295, -- The Bastion of Twilight - Throne of the Apocalypse
	296, -- The Bastion of Twilight - The Twilight Caverns
}
local firelands_raid_ids = {
	368, -- Firelands - The Anvil of Conflagration
	369, -- Firelands - Sulfuron Keep
}
local ds_raid_ids = {
	409, -- Dragon Soul - Dragon Soul
	410, -- Dragon Soul - Maw of Go'rath
	411, -- Dragon Soul - Maw of Shu'ma
	412, -- Dragon Soul - Eye of Eternity
	413, -- Dragon Soul - Skyfire Airship
	414, -- Dragon Soul - Spine of Deathwing
	415, -- Dragon Soul - The Maelstrom
}

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Glory"], {
	4845,	-- Glory of the Cataclysm Hero
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, Difficulty.Normal, {
	4833,	-- Blackrock Caverns
	4840,	-- Grim Batol
	4841,	-- Halls of Origination
	4848,	-- Lost City of the Tol'vir
	4839,	-- Throne of the Tides
	4846,	-- The Stonecore
	4847,	-- The Vortex Pinnacle
}).locate = function()
	return AchieveIt:Contains(cata_dungeon_ids,C_Map.GetBestMapForUnit("player"))
			and AchieveIt.difficulty.isDungeon(); 
end;

AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, Difficulty.Heroic, {
	5060,	-- Heroic: Blackrock Caverns
	5083,	-- Heroic: Deadmines
	6117,	-- Heroic: End Time
	5062,	-- Heroic: Grim Batol
	5065,	-- Heroic: Halls of Origination
	6119,	-- Heroic: Hour of Twilight
	5066,	-- Heroic: Lost City of the Tol'vir
	5093,	-- Heroic: Shadowfang Keep
	5061,	-- Heroic: Throne of the Tides
	5063,	-- Heroic: The Stonecore
	5064,	-- Heroic: The Vortex Pinnacle
	6118,	-- Heroic: Well of Eternity
	5768,	-- Heroic: Zul'Gurub
	5769,	-- Heroic: Zul'Aman
}).locate = function()
	return AchieveIt:Contains(cata_dungeon_ids,C_Map.GetBestMapForUnit("player"))
			and AchieveIt.difficulty.isHeroicDungeon(); 
end;

-----------------------
-- Blackrock Caverns --
-----------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Blackrock Caverns"], {
	4833,	-- Blackrock Caverns
	5060,	-- Heroic: Blackrock Caverns
});

category:addChild(L["Rom'ogg Bonecrusher"], {
	5281,	-- Crushing Bones and Cracking Skulls
}).locate = function()
	return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Rom'ogg Bonecrusher"];
end;

category:addChild(L["Corla, Herald of Twilight"], {
	5282,	-- Arrested Development
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Corla, Herald of Twilight"];

end;

category:addChild(L["Karsh Steelbender"], {
	5283,	-- Too Hot to Handle
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Karsh Steelbender"];
end;

category:addChild(L["Ascendant Lord Obsidius"], {
	5284,	-- Ascendant Descending
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Ascendant Lord Obsidius"];
end;

category:inheritAchievements();

---------------
-- Deadmines --
---------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Deadmines"], {
	5083,	-- Heroic: Deadmines
});

category:addChild(L["Glubtok"], {
	5366,	-- Ready for Raiding
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Glubtok"];
end;

category:addChild(L["Helix Gearbreaker"], {
	5367,	-- Rat Pack
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Helix Gearbreaker"];
end;

category:addChild(L["Foe Reaper 5000"], {
	5368,	-- Prototype Prodigy
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Foe Reaper 5000"];
end;

category:addChild(L["Admiral Ripsnarl"], {
	5369,	-- It's Frost Damage
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Admiral Ripsnarl"];
end;

category:addChild(L["Captain Cookie"], {
	5370,	-- I'm on a Diet
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Captain Cookie"];
end;

category:addChild(L["Vanessa VanCleef"], {
	5371,	-- Vigorous VanCleef Vindicator
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Vanessa VanCleef"];
end;

category:inheritAchievements();

--------------
-- End Time --
--------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["End Time"], {
	6117,	-- Heroic: End Time
});

category:addChild(L["Echo of Tyrande"], {
	5995,	-- Moon Guard
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Echo of Tyrande"];
end;

category:addChild(L["Echo of Sylvanas"], {
	6130,	-- Severed Ties
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Echo of Sylvanas"];
end;

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
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["General Umbriss"];
end;

category:addChild(L["Erudax, the Duke of Below"], {	
	5298,	-- Don't Need to Break Eggs to Make an Omelet
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Erudax, the Duke of Below"];
end;

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
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Temple Guardian Anhuur"];
end;

category:addChild(L["Earthrager Ptah"], {
	5294,	-- Straw That Broke the Camel's Back
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Earthrager Ptah"];
end;

category:addChild(L["Rajh, Construct of the Sun"], {
	5295,	-- Sun of a....
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Rajh"];
end;

category:inheritAchievements();

----------------------
-- Hour of Twilight --
----------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Hour of Twilight"], {
	6119,	-- Heroic: Hour of Twilight
});

category:addChild(L["Archbishop Benedictus"], {
	6132, -- Eclipse
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Archbishop Benedictus"];
end;

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
}).locate = function()
	return  UnitName("target") == L["High Prophet Barim"];
end;

category:addChild(L["Lockmaw"], {
	5291,	-- Acrocalypse Now
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Lockmaw"];
end;

category:addChild(L["Siamat"], {
	5292,	-- Headed South
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Siamat"];
end;

category:inheritAchievements();

---------------------
-- Shadowfang Keep --
---------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Shadowfang Keep"], {
	5093,	-- Heroic: Shadowfang Keep
});

category:addChild(L["Baron Ashbury"], {
	5503,	-- Pardon Denied
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Baron Ashbury"];
end;

category:addChild(L["Commander Springvale"], {
	5504,	-- To the Ground!
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Commander Springvale"];
end;

category:addChild(L["Lord Godfrey"], {	
	5505,	-- Bullet Time
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Lord Godfrey"];
end;

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
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["High Priestess Azil"];
end;

category:inheritAchievements();

-------------------------
-- The Vortex Pinnacle --
-------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["The Vortex Pinnacle"], {
	4847,	-- The Vortex Pinnacle
	5064,	-- Heroic: The Vortex Pinnacle
	5289,	-- Extra Credit Bonus Stage
});

category:addChild(L["Asaad, Caliph of Zephyrs"], {
	5288,	-- No Static at All
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Asaad"];
end;

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
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Lady Naz'jar"];
end;

category:addChild(L["Ozumat"], {
	5286,	-- Prince of Tides
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Ozumat"];
end;

category:inheritAchievements();

----------------------
-- Well of Eternity --
----------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Cataclysm, L["Well of Eternity"], {
	6118,	-- Heroic: Well of Eternity
});

category:addChild(L["Peroth'arn"], {
	6127,	-- Lazy Eye
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Peroth'arn"];
end;

category:addChild(L["Mannoroth and Varo'then"], {
	6070,	-- That's Not Canon!
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			(UnitName("target") == L["Mannoroth"] or 
			UnitName("target") == L["Varo'then"]);
end;

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
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Halazzi"];
end;

category:addChild(L["Daakara"], {
	5760,	-- Ring Out!
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Daakara"];
end;

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
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["High Priest Venoxis"];
end;

category:addChild(L["Bloodlord Mandokir"], {
	5762,	-- Ohganot So Fast!
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Bloodlord Mandokir"];
end;

category:addChild(L["High Priestess Kilnara"], { -- = "High Priestess Kilnara"
	5765, -- Here, Kitty Kitty
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["High Priestess Kilnara"];
end;

category:addChild(L["Jin'do the Godbreaker"], {
	5759,	-- Spirit Twister
}).locate = function()
return	AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Jin'do the Godbreaker"];
end;

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

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["Blackwing Descent"]);

category:addChild(L["Progress"], {
	4842,	-- Blackwing Descent
	5094,	-- Heroic: Magmaw
	5107,	-- Heroic: Omnotron Defense System
	5108,	-- Heroic: Maloriak
	5109,	-- Heroic: Atramedes
	5115,	-- Heroic: Chimaeron
	5116,	-- Heroic: Nefarian
}).locate = function()
	return	AchieveIt:Contains(bwd_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

category:addChild(L["Magmaw"], {
	5094,	-- Heroic: Magmaw
	5306,	-- Parasite Evening	
}).locate = function()
	return 	UnitName("target") == L["Magmaw"];
end;

category:addChild(L["Omnotron Defense System"], {
	5107,	-- Heroic: Omnotron Defense System
	5307,	-- Achieve-a-tron
}).locate = function()
	return 	(UnitName("target") == L["Arcanotron"] or
			UnitName("target") == L["Electron"] or
			UnitName("target") == L["Magmatron"] or
			UnitName("target") == L["Toxitron"]);
end;

category:addChild(L["Maloriak"], {
	5108,	-- Heroic: Maloriak
	5310,	-- Aberrant Behavior
}).locate = function()
	return 	UnitName("target") == L["Maloriak"];
end;

category:addChild(L["Atramedes"], {
	5109,	-- Heroic: Atramedes
	5308,	-- Silence is Golden
}).locate = function()
	return 	UnitName("target") == L["Atramedes"];
end;

category:addChild(L["Chimaeron"], {
	5115,	-- Heroic: Chimaeron
	5309,	-- Full of Sound and Fury
}).locate = function()
	return 	UnitName("target") == L["Chimaeron"];
end;

category:addChild(L["Nefarian_BwD"], {
	5116,	-- Heroic: Nefarian
	4849,	-- Keeping it in the Family
}).locate = function()
	return 	UnitName("target") == L["Nefarian_BwD"];
end;

category:inheritAchievements();


--------------------------------------
-- The Bastion of Twilight Category --
--------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["The Bastion of Twilight"]);

category:addChild(L["Progress"], {
	4850,	-- The Bastion of Twilight
	5118,	-- Heroic: Halfus Wyrmbreaker
	5117,	-- Heroic: Valiona and Theralion
	5119,	-- Heroic: Ascendant Council
	5120,	-- Heroic: Cho'gall
	5121,	-- Heroic: Sinestra
}).locate = function()
	return	AchieveIt:Contains(bot_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

category:addChild(L["Halfus Wyrmbreaker"], {
	5118,	-- Heroic: Halfus Wyrmbreaker
	5300,	-- The Only Escape
}).locate = function()
	return 	UnitName("target") == L["Halfus Wyrmbreaker"];
end;

category:addChild(L["Theralion and Valiona"], {
	5117,	-- Heroic: Valiona and Theralion
	4852,	-- Double Dragon
}).locate = function()
	return 	(UnitName("target") == L["Theralion"] or
			UnitName("target") == L["Valiona"]);
end;

category:addChild(L["Ascendant Council"], {
	5119,	-- Heroic: Ascendant Council
	5311,	-- Elementary
}).locate = function()
	return 	(UnitName("target") == L["Arion"] or
			UnitName("target") == L["Elementium Monstrosity"] or
			UnitName("target") == L["Feludius"] or
			UnitName("target") == L["Ignacious"] or
			UnitName("target") == L["Terrastra"]);
end;

category:addChild(L["Cho'gall"], {
	5120,	-- Heroic: Cho'gall
	5312,	-- The Abyss Will Gaze Back Into You
}).locate = function()
	return 	C_Map.GetBestMapForUnit("player") == 295 and
			UnitName("target") == L["Cho'gall"];
end;

category:addChild(L["Sinestra"], {
	5121,	-- Heroic: Sinestra
}).locate = function()
	return 	UnitName("target") == L["Sinestra"];
end;

category:inheritAchievements();


---------------------------------------
-- Throne of the Four Winds Category --
---------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["Throne of the Four Winds"]);

category:addChild(L["Progress"], {
	4851,	-- Throne of the Four Winds
	5122,	-- Heroic: Conclave of Wind
	5123,	-- Heroic: Al'Akir
}).locate = function(p_current_map)
	return Zone.Throne_of_the_Four_Winds == p_current_map;
end;

category:addChild(L["The Conclave of Wind"], {
	5122,	-- Heroic: Conclave of Wind
	5304,	-- Stay Chill
}).locate = function()
	return 	(UnitName("target") == L["Anshal"] or
			UnitName("target") == L["Nezir"] or
			UnitName("target") == L["Rohash"]);
end;

category:addChild(L["Al'Akir"], {
	5123,	-- Heroic: Al'Akir
	5305,	-- Four Play
}).locate = function()
	return 	UnitName("target") == L["Al'Akir"];
end;

category:inheritAchievements();


------------------------
-- Firelands Category --
------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["Firelands"]);

category:addChild(L["Progress"], {
	5802,	-- Firelands
	5806,	-- Heroic: Shannox
	5808,	-- Heroic: Lord Rhyolith
	5807,	-- Heroic: Beth'tilac
	5809,	-- Heroic: Alysrazor
	5805,	-- Heroic: Baleroc
	5804,	-- Heroic: Majordomo Fandral Staghelm
	5803,	-- Heroic: Ragnaros
}).locate = function()
	return AchieveIt:Contains(firelands_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

category:addChild(L["Shannox"], {
	5806,	-- Heroic: Shannox
	5829,	-- Bucket List
}).locate = function()
	return 	UnitName("target") == L["Shannox"];
end;

category:addChild(L["Lord Rhyolith"], {
	5808,	-- Heroic: Lord Rhyolith
	5810,	-- Not an Ambi-Turner
}).locate = function()
	return 	UnitName("target") == L["Lord Rhyolith"];
end;

category:addChild(L["Beth'tilac"], {
	5807,	-- Heroic: Beth'tilac
	5821,	-- Death from Above
}).locate = function()
	return 	UnitName("target") == L["Beth'tilac"];
end;

category:addChild(L["Alysrazor"], {
	5809,	-- Heroic: Alysrazor
	5813,	-- Do a Barrel Roll!
}).locate = function()
	return 	UnitName("target") == L["Alysrazor"];
end;

category:addChild(L["Baleroc"], {
	5805,	-- Heroic: Baleroc
	5830,	-- Share the Pain
}).locate = function()
	return 	UnitName("target") == L["Baleroc"];
end;

category:addChild(L["Majordomo Staghelm"], {
	5804,	-- Heroic: Majordomo Fandral Staghelm
	5799,	-- Only the Penitent...
}).locate = function()
	return 	UnitName("target") == L["Majordomo Staghelm"];
end;

category:addChild(L["Ragnaros_Fl"], {
	5803,	-- Heroic: Ragnaros
	5855,	-- Ragnar-O's
}).locate = function()
	return 	UnitName("target") == L["Ragnaros_Fl"];
end;

category:inheritAchievements();


--------------------------
-- Dragon Soul Category --
--------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Cataclysm, L["Dragon Soul"]);

category:addChild(L["Progress"], {
	6106, 	-- Siege of Wyrmrest Temple
	6107, 	-- Fall of Deathwing
	6177,	-- Destroyer's End
	6109,	-- Heroic: Morchok
	6110,	-- Heroic: Warlord Zon'ozz
	6111,	-- Heroic: Yor'sahj the Unsleeping
	6112,	-- Heroic: Hagara the Stormbinder
	6113,	-- Heroic: Ultraxion
	6114,	-- Heroic: Warmaster Blackhorn
	6115,	-- Heroic: Spine of Deathwing
	6116,	-- Heroic: Madness of Deathwing
}).locate = function()
	return AchieveIt:Contains(ds_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

category:addChild(L["Morchok"], {
	6109,	-- Heroic: Morchok
	6174,	-- Don't Stand So Close to Me
}).locate = function()
	return 	UnitName("target") == L["Morchok"];
end;

category:addChild(L["Warlord Zon'ozz"], {
	6110,	-- Heroic: Warlord Zon'ozz
	6128,	-- Ping Pong Champion
}).locate = function()
	return 	UnitName("target") == L["Warlord Zon'ozz"];
end;

category:addChild(L["Yor'sahj the Unsleeping"], {
	6111,	-- Heroic: Yor'sahj the Unsleeping
	6129,	-- Taste the Rainbow!
}).locate = function()
	return 	UnitName("target") == L["Yor'sahj the Unsleeping"];
end;

category:addChild(L["Hagara the Stormbinder"], {
	6112,	-- Heroic: Hagara the Stormbinder
	6175,	-- Holding Hands
}).locate = function()
	return 	UnitName("target") == L["Hagara the Stormbinder"];
end;

category:addChild(L["Ultraxion"], {
	6113,	-- Heroic: Ultraxion
	6084,	-- Minutes to Midnight
}).locate = function()
	return 	UnitName("target") == L["Ultraxion"];
end;

category:addChild(L["Warmaster Blackhorn"], {
	6114,	-- Heroic: Warmaster Blackhorn
	6105,	-- Deck Defender
}).locate = function()
	return 	UnitName("target") == L["Warmaster Blackhorn"];
end;

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
