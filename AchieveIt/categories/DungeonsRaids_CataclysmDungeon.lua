------------------------------------------
-- Dungeons & Raids - Cataclysm Dungeon --
------------------------------------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 15067;

--------------------
-- Glory Category --
--------------------

local category = AchieveIt.Categories:addCategory(categoryId, L["Glory"], {

	-- Glory of the Cataclysm Hero
	4845

});

---------------------------
-- Dungeons Sub Category --
---------------------------

AchieveIt.Categories:addCategory(categoryId, _G["DUNGEONS"], {
	-- Blackrock Caverns
	4833,
	-- Throne of the Tides
	4839,
	-- The Stonecore
	4846,
	-- The Vortex Pinnacle
	4847,
	-- Grim Batol
	4840,
	-- Halls of Origination
	4841,
	-- Lost City of the Tol'vir
	4848
}).locate = function()

	-- cataclysm dungeon map ids
	local ids = {
		753, -- Blackrock Caverns
		767, -- Throne of the Tides
		768, -- The Stonecore
		769, -- The Vortex Pinnacle
		757, -- Grim Batol
		759, -- Halls of Origination
		747  -- Lost City of the Tol'vir
	};

	return AchieveIt:Contains(ids, GetCurrentMapAreaID()) -- user is in one of these dungeons
			and AchieveIt.difficulty.isDungeon(); -- and it is a normal version (heroic versions will open specific dungeon category)

end;

----------------------------------
-- Heroic Dungeons Sub Category --
----------------------------------

AchieveIt.Categories:addCategory(categoryId, L["Heroic Dungeons"], {
	-- Heroic: Blackrock Caverns
	5060,
	-- Heroic: Throne of the Tides
	5061,
	-- Heroic: The Stonecore
	5063,
	-- Heroic: The Vortex Pinnacle
	5064,
	-- Heroic: Grim Batol
	5062,
	-- Heroic: Halls of Origination
	5065,
	-- Heroic: Lost City of the Tol'vir
	5066,
	-- Heroic: Deadmines
	5083,
	-- Heroic: Shadowfang Keep
	5093,
	-- Heroic: Zul'Gurub
	5768,
	-- Heroic: Zul'Aman
	5769,
	-- Heroic: End Time
	6117,
	-- Heroic: Well of Eternity
	6118,
	-- Heroic: Hour of Twilight
	6119
});

-----------------------
-- Blackrock Caverns --
-----------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(753), {
	-- Blackrock Caverns
	4833,
	-- Heroic: Blackrock Caverns
	5060
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 753 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

---------------------------------------------
-- Blackrock Caverns - Rom'ogg Bonecrusher --
---------------------------------------------

category:addChild(L["Rom'ogg Bonecrusher"], {
	-- Crushing Bones and Cracking Skulls
	5281
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 1
	-- and in box
	return 753 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Rom'ogg Bonecrusher"];

end;

---------------------------------------------------
-- Blackrock Caverns - Corla, Herald of Twilight --
---------------------------------------------------

category:addChild(L["Corla, Herald of Twilight"], {
	-- Arrested Development
	5282
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 2
	-- and in box
	return 753 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Corla, Herald of Twilight"];

end;

-------------------------------------------
-- Blackrock Caverns - Karsh Steelbender --
-------------------------------------------

category:addChild(L["Karsh Steelbender"], {
	-- Too Hot to Handle
	5283
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 2
	-- and in box
	return 753 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Karsh Steelbender"];

end;

-------------------------------------------------
-- Blackrock Caverns - Ascendant Lord Obsidius --
-------------------------------------------------

category:addChild(L["Ascendant Lord Obsidius"], {
	-- Ascendant Descending
	5284
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 2
	-- and in box
	return 753 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Ascendant Lord Obsidius"];
end;

category:inheritAchievements();


-------------------------
-- Throne of the Tides --
-------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(767), {	
	-- Throne of the Tides
	4839,
	-- Heroic: Throne of the Tides
	5061
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 767 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

----------------------------------------
-- Throne of the Tides - Lady Naz'jar --
----------------------------------------

category:addChild(L["Lady Naz'jar"], {
	-- Old Faithful
	5285
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 2
	-- and in box
	return 753 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Lady Naz'jar"];

end;

----------------------------------
-- Throne of the Tides - Ozumat --
----------------------------------

category:addChild(L["Ozumat"], {
	-- Prince of Tides
	5286
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 1
	-- and in box
	return 753 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			GetCurrentMapDungeonLevel() == 1;

end;

category:inheritAchievements();


-------------------
-- The Stonecore --
-------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(768), {
	-- The Stonecore
	4846,
	-- Heroic: The Stonecore
	5063,
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 768 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

-----------------------------------------
-- The Stonecore - High Priestess Azil --
-----------------------------------------

category:addChild(L["High Priestess Azil"], {
	-- Rotten to the Core
	5287
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 768 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["High Priestess Azil"];

end;

category:inheritAchievements();


-------------------------
-- The Vortex Pinnacle --
-------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(769), {
	-- The Vortex Pinnacle
	4847,
	-- Heroic: The Vortex Pinnacle
	5064,
	-- Extra Credit Bonus Stage
	5289
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 769 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

---------------------------------
-- The Vortex Pinnacle - Asaad --
---------------------------------

category:addChild(L["Asaad"], {
	-- No Static at All
	5288
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 769 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Asaad"];

end;

category:inheritAchievements();


----------------
-- Grim Batol --
----------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(757), {
	-- Grim Batol
	4840,
	-- Heroic: Grim Batol
	5062
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 757 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

----------------------------------
-- Grim Batol - General Umbriss --
----------------------------------

category:addChild(L["General Umbriss"], {
	-- Umbrage for Umbriss
	5297
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 757 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["General Umbriss"];

end;

-------------------------
-- Grim Batol - Erudax --
-------------------------

category:addChild(L["Erudax"], {	
	-- Don't Need to Break Eggs to Make an Omelet
	5298
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 757 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Erudax"];

end;

category:inheritAchievements();


--------------------------
-- Halls of Origination --
--------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(759), {
	-- Halls of Origination
	4841,
	-- Heroic: Halls of Origination
	5065,
	-- Faster Than the Speed of Light
	5296
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 759 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

---------------------------------------------------
-- Halls of Origination - Temple Guardian Anhuur --
---------------------------------------------------

category:addChild(L["Temple Guardian Anhuur"], {
	-- I Hate That Song
	5293
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 1
	-- and in box
	return 759 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Temple Guardian Anhuur"];
end;

--------------------------------------------
-- Halls of Origination - Earthrager Ptah --
--------------------------------------------

category:addChild(L["Earthrager Ptah"], {
	-- Straw That Broke the Camel's Back
	5294
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 2
	return 759 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Earthrager Ptah"];

end;

---------------------------------
-- Halls of Origination - Rajh --
---------------------------------

category:addChild(L["Rajh"], {
	-- Sun of a....
	5295
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 3
	-- and in box
	return 759 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Rajh"];

end;

category:inheritAchievements();


------------------------------
-- Lost City of the Tol'vir --
------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(747), {
	-- Lost City of the Tol'vir
	4848,
	-- Heroic: Lost City of the Tol'vir
	5066
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 747 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

---------------------------------------------------
-- Lost City of the Tol'vir - High Prophet Barim --
---------------------------------------------------

category:addChild(L["High Prophet Barim"], {
	-- Kill It With Fire!
	5290
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 759 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["High Prophet Barim"];

end;

----------------------------------------
-- Lost City of the Tol'vir - Lockmaw --
----------------------------------------

category:addChild(L["Lockmaw"], {
	-- Acrocalypse Now
	5291
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 759 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Lockmaw"];

end;

---------------------------------------
-- Lost City of the Tol'vir - Siamat --
---------------------------------------

category:addChild(L["Siamat, Lord of South Wind"], {
	-- Headed South
	5292
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 759 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Siamat"];

end;

category:inheritAchievements();


---------------
-- Deadmines --
---------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(756), {
	-- Heroic: Deadmines
	5083
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 756 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

-------------------------
-- Deadmines - Glubtok --
-------------------------

category:addChild(L["Glubtok"], {
	-- Ready for Raiding
	5366
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 1
	-- and in box
	return 756 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Glubtok"];

end;

-----------------------------------
-- Deadmines - Helix Gearbreaker --
-----------------------------------

category:addChild(L["Helix Gearbreaker"], {
	-- Rat Pack
	5367
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 1
	-- and in box
	return 756 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Helix Gearbreaker"];

end;

---------------------------------
-- Deadmines - Foe Reaper 5000 --
---------------------------------

category:addChild(L["Foe Reaper 5000"], {
	-- Prototype Prodigy
	5368
}).locate = function()

	-- in dungeon
	-- is heroic mode
	return 756 == GetCurrentMapAreaID() and
		AchieveIt.difficulty.isHeroicDungeon() and
		UnitName("target") == L["Foe Reaper 5000"];
		
end;

----------------------------------
-- Deadmines - Admiral Ripsnarl --
----------------------------------

category:addChild(L["Admiral Ripsnarl"], {
	-- It's Frost Damage
	5369
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- target is
	if (756 == GetCurrentMapAreaID() and
		AchieveIt.difficulty.isHeroicDungeon() and
		UnitName("target") == L["Admiral Ripsnarl"]) 
	then

		-- get instance lock
		local lockTimeleft, isPreviousInstance, encountersTotal, encountersComplete = GetInstanceLockTimeRemaining();

		-- same location as cookie so check only the first 3 bosses have been killed
		return encountersComplete == 3;

	end

	return false;

end;

----------------------------------
-- Deadmines - "Captain" Cookie --
----------------------------------

category:addChild(L["\"Captain\" Cookie"], {
	-- I'm on a Diet
	5370
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 2
	-- and in box
	if (756 == GetCurrentMapAreaID() and
		AchieveIt.difficulty.isHeroicDungeon() and
		UnitName("target") == L["\"Captain\" Cookie"]) 
		then

		-- get instance lock
		local lockTimeleft, isPreviousInstance, encountersTotal, encountersComplete = GetInstanceLockTimeRemaining();

		-- same location as ripsnarl so check the first 4 bosses have been killed
		return encountersComplete == 4;

	end

	return false;

end;

----------------------------------
-- Deadmines - Vanessa VanCleef --
----------------------------------

category:addChild(L["Vanessa VanCleef"], {
	-- Vigorous VanCleef Vindicator
	5371
}).locate = function()

	-- in dungeon
	-- is heroic mode
	if (756 == GetCurrentMapAreaID() and
		AchieveIt.difficulty.isHeroicDungeon() and
		UnitName("target") == L["Vanessa VanCleef"]) then

		-- get instance lock
		local lockTimeleft, isPreviousInstance, encountersTotal, encountersComplete = GetInstanceLockTimeRemaining();

		-- if all bosses up to vanessa have been killed then show this achievement
		-- as she sends you back through the dungeon so floor/position detection won't work
		return encountersComplete == 5;

	end

	return false;

end;

category:inheritAchievements();


---------------------
-- Shadowfang Keep --
---------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(764), {
	-- Heroic: Shadowfang Keep
	5093
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 764 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

-------------------------------------
-- Shadowfang Keep - Baron Ashbury --
-------------------------------------

category:addChild(L["Baron Ashbury"], {
	-- Pardon Denied
	5503
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 1
	-- and in box
	return 764 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			GetCurrentMapDungeonLevel() == 1 and
			UnitName("target") == L["Baron Ashbury"];

end;

--------------------------------------------
-- Shadowfang Keep - Commander Springvale --
--------------------------------------------

category:addChild(L["Commander Springvale"], {
	-- To the Ground!
	5504
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 1
	-- and in box
	return 764 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			GetCurrentMapDungeonLevel() == 1 and
			UnitName("target") == L["Commander Springvale"];

end;

------------------------------------
-- Shadowfang Keep - Lord Godfrey --
------------------------------------

category:addChild(L["Lord Godfrey"], {	
	-- Bullet Time
	5505
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 6
	-- and in box
	return 764 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Lord Godfrey"];

end;

category:inheritAchievements();


---------------
-- Zul'Gurub --
---------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(793), {
	-- Heroic: Zul'Gurub
	5768,
	-- Gurubashi Headhunter
	5744,
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 793 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

-------------------------------------
-- Zul'Gurub - High Priest Venoxis --
-------------------------------------

category:addChild(L["High Priest Venoxis"], {
	-- It's Not Easy Being Green
	5743
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 793 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["High Priest Venoxis"];
end;

------------------------------------
-- Zul'Gurub - Bloodlord Mandokir --
------------------------------------

category:addChild(L["Bloodlord Mandokir"], {
	-- Ohganot So Fast!
	5762
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 793 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Bloodlord Mandokir"];

end;

---------------------------------------
-- Zul'Gurub - Jin'do the Godbreaker --
---------------------------------------

category:addChild(L["Jin'do the Godbreaker"], {
	-- Spirit Twister
	5759
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 793 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Jin'do the Godbreaker"];

end;

category:inheritAchievements();


--------------
-- Zul'Aman --
--------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(781), {
	-- Heroic: Zul'Aman
	5769,
	-- Bear-ly Made It
	5858,
	-- Hex Mix
	5761
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 781 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

------------------------
-- Zul'Aman - Halazzi --
------------------------

category:addChild(L["Halazzi"], {
	-- Tunnel Vision
	5750
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 793 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Halazzi"];

end;

------------------------
-- Zul'Aman - Daakara --
------------------------

category:addChild(L["Daakara"], {
	-- Ring Out!
	5760
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 793 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Daakara"];

end;

category:inheritAchievements();


--------------
-- End Time --
--------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(820), {
	-- Heroic: End Time
	6117
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 820 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

--------------------------------
-- End Time - Echo of Tyrande --
--------------------------------

category:addChild(L["Echo of Tyrande"], {
	-- Moon Guard
	5995
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 5
	return 820 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Echo of Tyrande"];

end;

---------------------------------
-- End Time - Echo of Sylvanas --
---------------------------------

category:addChild(L["Echo of Sylvanas"], {
	-- Severed Ties
	6130
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- on level 3
	return 820 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Echo of Sylvanas"];

end;

category:inheritAchievements();


----------------------
-- Well of Eternity --
----------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(816), {
	-- Heroic: Well of Eternity
	6118
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 816 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

-----------------------------------
-- Well of Eternity - Peroth'arn --
-----------------------------------

category:addChild(L["Peroth'arn"], {
	-- Lazy Eye
	6127
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 816 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Peroth'arn"];

end;

----------------------------------
-- Well of Eternity - Mannoroth --
----------------------------------

category:addChild(L["Mannoroth"], {
	-- That's Not Canon!
	6070
}).locate = function()

	-- in dungeon
	-- is heroic mode
	-- and in box
	return 816 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isHeroicDungeon() and
			UnitName("target") == L["Mannoroth"];

end;

category:inheritAchievements();


----------------------
-- Hour of Twilight --
----------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(819), {
	-- Heroic: Hour of Twilight
	6119
});

category.locate = function()

	-- in dungeon
	-- and heroic version
	return 819 == GetCurrentMapAreaID()
			and AchieveIt.difficulty.isHeroicDungeon();

end;

----------------------------------------------
-- Hour of Twilight - Archbishop Benedictus --
----------------------------------------------

category:addChild(L["Archbishop Benedictus"], {
	-- Lazy Eye
	6127
}).locate = function()

	-- in dungeon
	-- is heroic mode
	return 819 == GetCurrentMapAreaID() and
		AchieveIt.difficulty.isHeroicDungeon() and 
		UnitName("target") == L["Archbishop Benedictus"];

end;

category:inheritAchievements();
