-------------------------------------------------
-- Dungeons & Raids - Lich King Raid  - Ulduar --
-------------------------------------------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 14922;

---------------------
-- Ulduar Category --
---------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(529));

category.locate = function()
	
	-- user is in raid
	return GetCurrentMapAreaID() == 529;

end;

--------------------
-- Glory Category --
--------------------

category:addChild(L["Glory"], {

	-- Glory of the Ulduar Raider
	12401

});

category:addChild(L["Progress"], {

	-- The Siege of Ulduar
	12297,
	-- The Antechamber of Ulduar
	12302,
	-- The Keepers of Ulduar
	12309,
	-- The Descent into Madness
	12310,
	-- The Secrets of Ulduar
	12311,
	-- Observed
	12399
	
});

------------------------------
-- Flame Leviathan Category --
------------------------------

category:addChild(L["Flame Leviathan"], {

	-- Dwarfageddon
	12312,
	-- Nuked from Orbit
	12319,
	-- Orbit-uary
	12320,
	-- Orbital Bombardment
	12317,
	-- Orbital Devastation
	12318,
	-- Shutout
	12316,
	-- Take Out Those Turrets
	12315,
	-- Three Car Garage
	12314,
	-- Unbroken
	12313
	
}).locate = function()

	-- in ulduar
	-- on floor 1
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 1 and
			UnitName("target") == L["Flame Leviathan"];

end;


---------------------------------------
-- Ignis the Furnace Master Category --
---------------------------------------

category:addChild(L["Ignis the Furnace Master"], {

	-- Hot Pocket
	12324,
	-- Shattered
	12323,
	-- Stokin' the Furnace
	12325
	
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 1 and 
			UnitName("target") == L["Ignis the Furnace Master"];

end;


-------------------------
-- Razorscale Category --
-------------------------

category:addChild(L["Razorscale"], {

	-- A Quick Shave
	12321,
	-- Iron Dwarf, Medium Rare
	12322
	
}).locate = function()

	-- in ulduar
	-- on floor 1
	-- and 10 player
	-- and player is in box
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 1 and
			UnitName("target") == L["Razorscale"];
			
end;

			
-----------------------------------
-- XT-002 Deconstructor Category --
-----------------------------------			
category:addChild(L["XT-002 Deconstructor"], {

	-- Heartbreaker 
	12330,
	-- Must Deconstruct Faster
	12329,
	-- Nerf Engineering
	12326,
	-- Nerf Gravity Bombs
	12328,
	-- Nerf Scrapbots
	12327
}).locate = function()

	-- in ulduar
	-- on floor 1
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 1 and
			UnitName("target") == L["XT-002 Deconstructor"];

end;

-------------------------------
-- Assembly of Iron Category --
-------------------------------
			
category:addChild(L["Assembly of Iron"], {

	-- But I'm On Your Side 
	12335,
	-- Can't Do That While Stunned
	12336,
	-- I Choose You, Runemaster Molgeim
	12332,
	-- I Choose You, Steelbreaker
	12334,
	-- I Choose You, Stormcaller Brundir
	12333
	
}).locate = function()

	-- in ulduar
	-- on floor 2
	return GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 2 and
			(UnitName("target") == L["Steelbreaker"] or
			 UnitName("target") == L["Runemaster Molgeim"] or
			 UnitName("target") == L["Stormcaller Brundir"]);

end;

-----------------------
-- Kologarn Category --
-----------------------

category:addChild(L["Kologarn"], {

	-- Disarmed 
	12338,
	-- If Looks Could Kill 
	12339,
	-- Rubble and Roll
	12340,
	-- With Open Arms
	12337
	
}).locate = function()

	-- in ulduar
	-- on floor 2
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 2 and
			(UnitName("target") == L["Kologarn"] or
			 UnitName("target") == L["Left Arm"] or
			 UnitName("target") == L["Right Arm"]);
			
end;

----------------------
-- Auriaya Category --
----------------------

category:addChild(L["Auriaya"], {

	-- Crazy Cat Lady 
	12341,
	-- Nine Lives
	12342
	
}).locate = function()

	-- in ulduar
	-- on floor 3
	-- and 10 player
	-- and player is in box
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 3 and
			UnitName("target") == L["Auriaya"];
			
end;

--------------------
-- Freya Category --
--------------------


category:addChild(L["Freya"], {

	-- Con-speed-atory
	12361,
	-- Deforestation 
	12362,
	-- Getting Back to Nature 
	12363,
	-- Knock on Wood
	12364,
	-- Knock, Knock on Wood
	12365,
	-- Knock, Knock, Knock on Wood
	12366,
	-- Lumberjacked 
	12360
	
}).locate = function()

	-- in ulduar
	-- on floor 3
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 3 and
			UnitName("target") == L["Freya"];
			
end;

--------------------
-- Hodir Category --
--------------------

category:addChild(L["Hodir"], {

	-- Cheese the Freeze
	12343,
	-- Getting Cold in Here
	12345,
	-- I Could Say That This Cache Was Rare
	12347,
	-- I Have the Coolest Friends
	12344,
	-- Staying Buffed All Winter
	12346
	
}).locate = function()

	-- in ulduar
	-- on floor 3
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 3 and
			UnitName("target") == L["Hodir"];
			
end;

----------------------
-- Mimiron Category --
----------------------

category:addChild(L["Mimiron"], {

	-- Firefighter
	12369,
	-- Not-So-Friendly Fire
	12368,
	-- Set Up Us the Bomb
	12367
	
}).locate = function()

	-- in ulduar
	-- on floor 5
	-- and 10 player
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 5; 
			
end;

---------------------
-- Thorim Category --
---------------------

category:addChild(L["Thorim"], {

	-- Don't Stand in the Lightning
	12348,
	-- I'll Take You All On
	12349,
	-- Lose Your Illusion
	12352,
	-- Siffed 
	12351,
	-- Who Needs Bloodlust? 
	12350
	
}).locate = function()

	-- in ulduar
	-- on floor 3
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 3 and
			(UnitName("target") == L["Thorim"] or 
			 UnitName("target") == L["Sif"]);
end;

----------------------------
-- General Vezax Category --
----------------------------

category:addChild(L["General Vezax"], {

	-- I Love the Smell of Saronite in the Morning
	12373,
	-- Shadowdodger 
	12372
	
}).locate = function()

	-- in ulduar
	-- on floor 4
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 4 and
			UnitName("target") == L["General Vezax"];
			
end;

-------------------------
-- Ulduar / Yogg-Saron --
-------------------------

category:addChild(L["Yogg-Saron"], {

	-- Alone in the Darkness
	12388,
	-- One Light in the Darkness
	12387,
	-- Two Lights in the Darkness
	12386,
	-- Three Lights in the Darkness
	12385,
	-- Drive Me Crazy
	12395,
	-- He's Not Getting Any Older
	12396,
	-- In His House He Waits Dreaming
	12398,
	-- Kiss and Make Up
	12384,
	-- They're Coming Out of the Walls
	12397
	
}).locate = function()

	-- in ulduar
	-- on floor 6
	return 	GetCurrentMapAreaID() == 529 and
			GetCurrentMapDungeonLevel() == 6;
			
end;	
	
	
category:inheritAchievements();	
