---------------------------------------
-- Dungeons & Raids - Cataclysm Raid --
---------------------------------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 15068;

--------------------
-- Glory Category --
--------------------

local category = AchieveIt.Categories:addCategory(categoryId, L["Glories"], {

	-- Glory of the Cataclysm Raider
	4853,
	-- Glory of the Firelands Raider
	5828,
	-- Glory of the Dragon Soul Raider
	6169

});

--------------------------------
-- Blackwing Descent Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(754), {
	-- Blackwing Descent
	4842
});

category.locate = function()

	-- in raid
	return 754 == GetCurrentMapAreaID();

end;

--------------------------------
-- Blackwing Descent / Magmaw --
--------------------------------

category:addChild(L["Magmaw"], {
	-- Heroic: Magmaw
	5094,
	-- Parasite Evening
	5306	
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 754 == GetCurrentMapAreaID() and
			UnitName("target") == L["Magmaw"]

end;

-------------------------------------------------
-- Blackwing Descent / Omnotron Defense System --
-------------------------------------------------

category:addChild(L["Omnotron Defense System"], {
	-- Heroic: Omnotron Defense System
	5107,
	-- Achieve-a-tron
	5307
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 754 == GetCurrentMapAreaID() and
			(UnitName("target") == L["Arcanotron"] or
			 UnitName("target") == L["Electron"] or
			 UnitName("target") == L["Magmatron"] or
			 UnitName("target") == L["Toxitron"]);

end;

----------------------------------
-- Blackwing Descent / Maloriak --
----------------------------------

category:addChild(L["Maloriak"], {
	-- Heroic: Maloriak
	5108,
	-- Aberrant Behavior
	5310
}).locate = function()

	-- in raid
	-- on level 2
	-- and in box
	return 754 == GetCurrentMapAreaID() and
			UnitName("target") == L["Maloriak"];

end;

-----------------------------------
-- Blackwing Descent / Atramedes --
-----------------------------------

category:addChild(L["Atramedes"], {
	-- Heroic: Atramedes
	5109,
	-- Silence is Golden
	5308
}).locate = function()

	-- in raid
	-- on level 2
	-- and in box
	return 754 == GetCurrentMapAreaID() and
			UnitName("target") == L["Atramedes"];

end;

-----------------------------------
-- Blackwing Descent / Chimaeron --
-----------------------------------

category:addChild(L["Chimaeron"], {
	-- Heroic: Chimaeron
	5115,
	-- Full of Sound and Fury
	5309
}).locate = function()

	-- in raid
	-- on level 2
	-- and in box
	return 754 == GetCurrentMapAreaID() and
			UnitName("target") == L["Chimaeron"];

end;

----------------------------------
-- Blackwing Descent / Nefarian --
----------------------------------

category:addChild(L["Nefarian"], {
	-- Heroic: Nefarian
	5116,
	-- Keeping it in the Family
	4849
}).locate = function()

	-- in raid
	-- on level 2
	-- and in box
	return 754 == GetCurrentMapAreaID() and
			(UnitName("target") == L["Nefarian"] or
			 UnitName("target") == L["Onyxia"]);

end;

category:inheritAchievements();


--------------------------------------
-- The Bastion of Twilight Category --
--------------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(758), {
	-- The Bastion of Twilight
	4850
});

category.locate = function()

	-- in raid
	return 758 == GetCurrentMapAreaID();

end;

--------------------------------------------------
-- The Bastion of Twilight / Halfus Wyrmbreaker --
--------------------------------------------------

category:addChild(L["Halfus Wyrmbreaker"], {
	-- Heroic: Halfus Wyrmbreaker
	5118,
	-- The Only Escape
	5300
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 758 == GetCurrentMapAreaID() and
            UnitName("target") == L["Halfus Wyrmbreaker"];

end;

-----------------------------------------------------
-- The Bastion of Twilight / Valiona and Theralion --
-----------------------------------------------------

category:addChild(L["Valiona and Theralion"], {
	-- Heroic: Valiona and Theralion
	5117,
	-- Double Dragon
	4852
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 758 == GetCurrentMapAreaID() and
			(UnitName("target") == L["Valiona"] or
			 UnitName("target") == L["Theralion"]);

end;

-------------------------------------------------
-- The Bastion of Twilight / Ascendant Council --
-------------------------------------------------

category:addChild(L["Ascendant Council"], {
	-- Heroic: Ascendant Council
	5119,
	-- Elementary
	5311
}).locate = function()

	-- in raid
	-- on level 2
	-- and in box
	return 758 == GetCurrentMapAreaID() and
			(UnitName("target") == L["Arion"] or
			 UnitName("target") == L["Feludius"] or
			 UnitName("target") == L["Ignacious"] or
			 UnitName("target") == L["Terrastra"]);

end;

----------------------------------------
-- The Bastion of Twilight / Cho'gall --
----------------------------------------

category:addChild(L["Cho'gall"], {
	-- Heroic: Cho'gall
	5120,
	-- The Abyss Will Gaze Back Into You
	5312
}).locate = function()

	-- in raid
	-- on level 2
	-- and in box
	return 758 == GetCurrentMapAreaID() and
			UnitName("target") == L["Cho'gall"];

end;

----------------------------------------
-- The Bastion of Twilight / Sinestra --
----------------------------------------

category:addChild(L["Sinestra"], {
	-- Heroic: Sinestra
	5121
}).locate = function()

	-- in raid
	-- on level 3
	return 758 == GetCurrentMapAreaID() and
	UnitName("target") == L["Sinestra"];

end;

category:inheritAchievements();


---------------------------------------
-- Throne of the Four Winds Category --
---------------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(773), {
	-- Throne of the Four Winds
	4851
});

category.locate = function()

	-- in raid
	return 773 == GetCurrentMapAreaID();

end;

-------------------------------------------------
-- Throne of the Four Winds / Conclave of Wind --
-------------------------------------------------

category:addChild(L["Conclave of Wind"], {
	-- Heroic: Conclave of Wind
	5122,
	-- Stay Chill
	5304
}).locate = function()

	-- in raid
	if (773 == GetCurrentMapAreaID()) then

		-- get instance lock
		local lockTimeleft, isPreviousInstance, encountersTotal, encountersComplete = GetInstanceLockTimeRemaining();

		-- boss not yet killed
		return encountersComplete == 0;

	end

	return false;

end;

----------------------------------------
-- Throne of the Four Winds / Al'Akir --
----------------------------------------

category:addChild(L["Al'Akir"], {
	-- Heroic: Al'Akir
	5123,
	-- Four Play
	5305
}).locate = function()

	-- in raid
	if (773 == GetCurrentMapAreaID()) then

		-- get instance lock
		local lockTimeleft, isPreviousInstance, encountersTotal, encountersComplete = GetInstanceLockTimeRemaining();

		-- boss not yet killed
		return encountersComplete == 1;

	end

	return false;

end;

category:inheritAchievements();


------------------------
-- Firelands Category --
------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(800), {
	-- Firelands
	5802
});

category.locate = function()

	-- in raid
	return 800 == GetCurrentMapAreaID();

end;

-------------------------
-- Firelands / Shannox --
-------------------------

category:addChild(L["Shannox"], {
	-- Heroic: Shannox
	5806,
	-- Bucket List
	5829
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 800 == GetCurrentMapAreaID() and
		UnitName("target") == L["Shannox"];

end;

-------------------------------
-- Firelands / Lord Rhyolith --
-------------------------------

category:addChild(L["Lord Rhyolith"], {
	-- Heroic: Lord Rhyolith
	5808,
	-- Not an Ambi-Turner
	5810
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 800 == GetCurrentMapAreaID() and
		(UnitName("target") == L["Lord Rhyolith"] or
		 UnitName("target") == L["Left Leg"] or
		 UnitName("target") == L["Right Leg"]);

end;

----------------------------
-- Firelands / Beth'tilac --
----------------------------

category:addChild(L["Beth'tilac"], {
	-- Heroic: Beth'tilac
	5807,
	-- Death from Above
	5821
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 800 == GetCurrentMapAreaID() and
		UnitName("target") == L["Beth'tilac"];

end;

---------------------------
-- Firelands / Alysrazor --
---------------------------

category:addChild(L["Alysrazor"], {
	-- Heroic: Alysrazor
	5809,
	-- Do a Barrel Roll!
	5813
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 800 == GetCurrentMapAreaID() and
		UnitName("target") == L["Alysrazor"];

end;

-------------------------
-- Firelands / Baleroc --
-------------------------

category:addChild(L["Baleroc"], {
	-- Heroic: Baleroc
	5805,
	-- Share the Pain
	5830
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 800 == GetCurrentMapAreaID() and
		UnitName("target") == L["Baleroc"];

end;

--------------------------------------------
-- Firelands / Majordomo Fandral Staghelm --
--------------------------------------------

category:addChild(L["Majordomo Staghelm"], {
	-- Heroic: Majordomo Fandral Staghelm
	5804,
	-- Only the Penitent...
	5799
}).locate = function()

	-- in raid
	-- on level 3
	-- and in box
	return 800 == GetCurrentMapAreaID() and
		UnitName("target") == L["Majordomo Staghelm"];

end;

--------------------------
-- Firelands / Ragnaros --
--------------------------

category:addChild(L["Ragnaros"], {
	-- Heroic: Ragnaros
	5803,
	-- Ragnar-O's
	5855
}).locate = function()

	-- in raid
	-- on level 3
	-- and in box
	return 800 == GetCurrentMapAreaID() and
		UnitName("target") == L["Ragnaros"];

end;

category:inheritAchievements();


--------------------------
-- Dragon Soul Category --
--------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(824), {
	-- Fall of Deathwing
	6107
});

category.locate = function()

	-- in raid
	return 824 == GetCurrentMapAreaID();

end;

---------------------------
-- Dragon Soul / Morchok --
---------------------------

category:addChild(L["Morchok"], {
	-- Heroic: Morchok
	6109,
	-- Don't Stand So Close to Me
	6174
}).locate = function()

	-- in raid
	-- on level 1
	-- and in box
	return 824 == GetCurrentMapAreaID() and
		UnitName("target") == L["Morchok"];

end;

-----------------------------------
-- Dragon Soul / Warlord Zon'ozz --
-----------------------------------

category:addChild(L["Warlord Zon'ozz"], {
	-- Heroic: Warlord Zon'ozz
	6110,
	-- Ping Pong Champion
	6128
}).locate = function()

	-- in raid
	-- on level 2
	return 824 == GetCurrentMapAreaID() and
		UnitName("target") == L["Warlord Zon'ozz"];

end;

-------------------------------------------
-- Dragon Soul / Yor'sahj the Unsleeping --
-------------------------------------------

category:addChild(L["Yor'sahj the Unsleeping"], {
	-- Heroic: Yor'sahj the Unsleeping
	6111,
	-- Taste the Rainbow!
	6129
}).locate = function()

	-- in raid
	-- on level 3
	return 824 == GetCurrentMapAreaID() and
		UnitName("target") == L["Yor'sahj the Unsleeping"];

end;

------------------------------------------
-- Dragon Soul / Hagara the Stormbinder --
------------------------------------------

category:addChild(L["Hagara the Stormbinder"], {
	-- Heroic: Hagara the Stormbinder
	6112,
	-- Holding Hands
	6175
}).locate = function()

	-- in raid
	-- on level 4
	return 824 == GetCurrentMapAreaID() and
		UnitName("target") == L["Hagara the Stormbinder"];

end;

-----------------------------
-- Dragon Soul / Ultraxion --
-----------------------------

category:addChild(L["Ultraxion"], {
	-- Heroic: Ultraxion
	6113,
	-- Minutes to Midnight
	6084
}).locate = function()

	-- in raid
	return 824 == GetCurrentMapAreaID() and
		UnitName("target") == L["Ultraxion"]

end;

---------------------------------------
-- Dragon Soul / Warmaster Blackhorn --
---------------------------------------

category:addChild(L["Warmaster Blackhorn"], {
	-- Heroic: Warmaster Blackhorn
	6114,
	-- Deck Defender
	6105
}).locate = function()

	-- in raid
	-- on level 5
	return 824 == GetCurrentMapAreaID() and
		UnitName("target") == L["Warmaster Blackhorn"];

end;

--------------------------------------
-- Dragon Soul / Spine of Deathwing --
--------------------------------------

category:addChild(L["Spine of Deathwing"], {
	-- Heroic: Spine of Deathwing
	6115,
	-- Maybe He'll Get Dizzy...
	6133
}).locate = function()

	-- in raid
	-- on level 6
	return 824 == GetCurrentMapAreaID() and
		GetCurrentMapDungeonLevel() == 6;

end;

----------------------------------------
-- Dragon Soul / Madness of Deathwing --
----------------------------------------

category:addChild(L["Madness of Deathwing"], {
	-- Destroyer's End
	6177,
	-- Heroic: Madness of Deathwing
	6116,
	-- Chromatic Champion
	6180
}).locate = function()

	-- in raid
	-- on level 7
	return 824 == GetCurrentMapAreaID() and
		GetCurrentMapDungeonLevel() == 7;

end;

category:inheritAchievements();
