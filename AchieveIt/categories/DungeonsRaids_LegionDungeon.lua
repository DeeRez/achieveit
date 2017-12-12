----------------------------------------
-- Dungeons & Raids - Legion Dungeon  --
----------------------------------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 15254;

--------------------
-- Glory Category --
--------------------

local category = AchieveIt.Categories:addCategory(categoryId, L["Glory"], {

	-- Glory of the Legion Hero
	11163

});

-----------------------
-- Dungeons Category --
-----------------------

AchieveIt.Categories:addCategory(categoryId, _G["DUNGEONS"], {
	-- Assault on Violet Hold
	10798,
	-- Black Rook Hold
	10804,
	-- Cathedral of Eternal Night
	11700,
	-- Darkheart Thicket
	10783,
	-- Eye of Azshara
	10780,
	-- Halls Of Valor
	10786,
	-- Maw of Souls
	10807,
	-- Neltharion's Lair
	10795,
	-- Vault of the Wardens
	10801,
	
	
}).locate = function()

	-- dungeon map ids
	local ids = {
        1066, -- Assault on Violet Hold
        1081, -- Black Rook Hold
		1146, -- Cathedral of Eternal Night
        1067, -- Darkheart Thicket		
		1046, -- Eye of Azshara
        1041, -- Halls Of Valor
        1042, -- Maw of Souls
		1065, -- Neltharion's Lair
        1045  -- Vault of the Wardens
	};

	return AchieveIt:Contains(ids, GetCurrentMapAreaID()) -- user is in one of these dungeons
			and AchieveIt.difficulty.isDungeon(); -- and it is a normal version

end;

------------------------------
-- Heroic Dungeons Category --
------------------------------

AchieveIt.Categories:addCategory(categoryId, L["Heroic Dungeons"], {
    -- Heroic: Assault on Violet Hold
	10799,
	-- Heroic: Black Rook Hold
	10805,
	-- Heroic: Cathedral of Eternal Night
	11701,
	-- Heroic: Darkheart Thicket
	10784,
	-- Heroic: Eye of Azshara
	10781,
	-- Heroic: Halls Of Valor
	10788,
	-- Heroic: Maw of Souls
	10808,
	-- Heroic: Neltharion's Lair
	10796,
	-- Heroic: Return to Karazhan
	11929,
	-- Heroic: Seat of the Triumverate
	12007,
	-- Heroic: Vault of the Wardens
	10802
	
}).locate = function()

	-- dungeon map ids
	local ids = {
        1066, -- Assault on Violet Hold
        1081, -- Black Rook Hold
		1146, -- Cathedral of Eternal Night
        1067, -- Darkheart Thicket		
		1046, -- Eye of Azshara
        1041, -- Halls Of Valor
		1115, -- Return to Karazhan
        1042, -- Maw of Souls
		1065, -- Neltharion's Lair
		1178, -- Seat of the Triumverate
        1045  -- Vault of the Wardens
	};

	return AchieveIt:Contains(ids, GetCurrentMapAreaID()) -- user is in one of these dungeons
			and AchieveIt.difficulty.isHeroicDungeonDungeon(); -- and it is a heroic version

end;

------------------------------
-- Mythic Dungeons Category --
------------------------------

AchieveIt.Categories:addCategory(categoryId, L["Mythic Dungeons"], {
    -- Mythic: Assault on Violet Hold
	10800,
	-- Mythic: Black Rook Hold
	10806,
	-- Mythic: Cathedral of Eternal Night
	11702,
	-- Mythic: Court of Stars
	10816,
	-- Mythic: Darkheart Thicket
	10785,
	-- Mythic: Eye of Azshara
	10782,
	-- Mythic: Halls Of Valor
	10789,
	-- Mythic: Maw of Souls
	10809,
	-- Mythic: Neltharion's Lair
	10797,
	-- Mythic: Return to Kharazhan
	11429,
	-- Mythic: Seat of the Triumverate
	12008,
	-- Mythic: The Arcway
	10813,
	-- Mythic: Vault of the Wardens
	10803
	
}).locate = function()

	-- dungeon map ids
	local ids = {
        1066, -- Assault on Violet Hold
        1081, -- Black Rook Hold
		1146, -- Cathedral of Eternal Night
		1087, -- Court of Stars
        1067, -- Darkheart Thicket		
		1046, -- Eye of Azshara
        1041, -- Halls Of Valor
		1115, -- Return to Karazhan
        1042, -- Maw of Souls
		1065, -- Neltharion's Lair
		1178, -- Seat of the Triumverate
		1079, -- The Arcway
        1045 -- Vault of the Wardens
        
	};

	return AchieveIt:Contains(ids, GetCurrentMapAreaID()) -- user is in one of these dungeons
			and AchieveIt.difficulty.isMythicDungeonDungeon(); -- and it is a mythic version

end;


-------------------------------
-- Mythic+ Dungeons Category --
-------------------------------

AchieveIt.Categories:addCategory(categoryId, L["Mythic+ Dungeons"], {
	-- Keystone Initiate
	11183,
	-- Keystone Challenger
	11184,
	-- Keystone Conqueror
	11185,
	-- Keystone Master
	11162,
	-- Broken Isles Keymaster
	11181,
}).locate = function()

	-- dungeon map ids
	local ids = {
        1066, -- Assault on Violet Hold
        1081, -- Black Rook Hold
		1146, -- Cathedral of Eternal Night
		1087, -- Court of Stars
        1067, -- Darkheart Thicket		
		1046, -- Eye of Azshara
        1041, -- Halls Of Valor
		1115, -- Return to Karazhan
        1042, -- Maw of Souls
		1065, -- Neltharion's Lair
		1178, -- Seat of the Triumverate
		1079, -- The Arcway
        1045, -- Vault of the Wardens 
	};

	return AchieveIt:Contains(ids, GetCurrentMapAreaID()) -- user is in one of these dungeons
			and AchieveIt.difficulty.isChallengeMode(); -- and it is a mythic+ version

end;

------------------------------
-- Black Rook Hold Category --
------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1081), {

	-- Black Rook Hold
	10804,
	-- Heroic: Black Rook Hold
	10805,
	-- Mythic: Black Rook Hold
	10806,
	-- You Used to Scrawl Me In Your Fel Tome
	10709
	
});

category.locate = function()

	-- in dungeon
	return 1081 == GetCurrentMapAreaID();

end;

--------------------------
-- The Amalgam of Souls --
--------------------------

category:addChild(L["Amalgam of Souls"], {
    
	-- Black Rook Moan
	10710
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	return 1081 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Amalgam Of Souls"];
			
end;

--------------------------
-- Illysanna Ravencrest --
--------------------------

category:addChild(L["Illysanna Ravencrest"], {
    
	-- Adds? More Like Bads
	10711
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1081 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Illysanna Ravencrest"];
			
end;

category:inheritAchievements();

--------------------------------
-- Cathedral of Eternal Night --
--------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1146), {
	
	-- Cathedral of Eternal Night
	11700,
	-- Heroic: Cathedral of Eternal Night
	11701,
	-- Mythic: Cathedral of Eternal Night
	11702
	
});

category.locate = function()

	-- in dungeon
	return 1146 == GetCurrentMapAreaID();

end;
-------------
-- Agronox --
-------------

category:addChild(L["Agronox"], {
    
	-- Boom Bloom
	11768
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1146 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Agronox"];
			

end;

-----------------
-- Mephistroth --
-----------------

category:addChild(L["Mephistroth"], {
    
	-- Master of Shadows
	11703
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1146 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon()and
			UnitName("target") == L["Mephistroth"];
			
end;

category:inheritAchievements();

-----------------------------
-- Court of Stars Category --
-----------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1087), {
	
	-- Court of Stars
	10816
	
});

category.locate = function()

	-- in dungeon
	return 1087 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon();

end;


--------------------------
-- Patrol Captain Gerdo --
--------------------------

category:addChild(L["Patrol Captain Gerdo"], {
    
	-- Waiting For Gerdo
	10610
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1087 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Patrol Captain Gerdo"];
			
end;

-----------------------
-- Advisor Melandrus --
-----------------------

category:addChild(L["Advisor Melandrus"], {
    
	-- Dropping Some Eaves
	10611
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1087 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			GetCurrentMapDungeonLevel() == 3; 

end;

category:inheritAchievements();

--------------------------------
-- Darkheart Thicket Category --  
--------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1067), {
	
	-- Darkheart Thicket
	10783,
	-- Heroic: Darkheart Thicket
	10784,
	-- Mythic: Darkheart Thicket
	10785
	
});

category.locate = function()

	-- in dungeon
	return 1067 == GetCurrentMapAreaID();

end;

--------------
-- Dresaron --
--------------

category:addChild(L["Dresaron"], {
    
	-- Egg-cellent!
	10766
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1067 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Dresaron"];
			
end;

---------------------
-- Shade of Xavius --
---------------------

category:addChild(L["Shade of Xavius"], {
    
	-- Burning Down the House
	10769
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1067 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon()and
			UnitName("target") == L["Shade Of Xavius"];
			
end;


category:inheritAchievements();

------------------------------
-- Eye of Azshara Category  --
------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1046), {
    
	-- Eye of Azshara
    10780,
    -- Heroic: Eye of Azshara
    10781,
	-- Mythic: Eye of Azshara
	10782
	
});

category.locate = function()

	-- in dungeon
	return 1046 == GetCurrentMapAreaID();

end;

---------------------
-- Warlord Parjesh --
---------------------

category:addChild(L["Warlord Parjesh"], {
    
	-- But You Say He's Just a Friend
	10456
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1046 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Warlord Parjesh"];

end;

-------------------
-- Lady Hatecoil --
-------------------

category:addChild(L["Lady Hatecoil"], {
    
	-- Stay Salty
	10457
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1046 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Lady Hatecoil"];
end;

----------------------
-- Wrath of Azshara --
----------------------

category:addChild(L["Wrath of Azshara"], {
    
	-- Ready for Raiding V
	10458
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1046 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Wrath Of Azshara"];

end;


category:inheritAchievements();

-----------------------------
-- Halls Of Valor Category --
-----------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1041), {
	
	-- Halls Of Valor
	10786,
	-- Heroic: Halls Of Valor
	10788,
	-- Mythic: Halls Of Valor
	10789,
	-- I Got What You Mead
	10542,
	-- Stag Party 
	10544
	
});

category.locate = function()

	-- in dungeon
	return 1041 == GetCurrentMapAreaID();

end;

----------
-- Odyn --
----------

category:addChild(L["Odyn"], {
    
	-- Surge Protector
	10543
	
}).locate = function()

	-- in dungeon
	-- is mythic mode	
	
	return 1041 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Odyn"];
			
end; 

category:inheritAchievements();

-----------------------
-- Karazhan Category --
-----------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1115), {
	
	-- Heroic: Return to Karazhan
	11929,
	-- Mythic: Return to Karazhan
	11429,
	-- Burn after Reading
	11433,
	-- One Night in Karazhan
	11430,
	-- The Rat Pack
	11431
	
});

category.locate = function()

	-- in dungeon
	return 1115 == GetCurrentMapAreaID();

end;

-----------------
-- Opera Event --
-----------------

category:addChild(L["Opera Event"], {
    
	-- Season Tickets
	11335
	
}).locate = function()

	-- in dungeon
	-- is mythic mode	
	
	return 1115 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			GetCurrentMapDungeonLevel() == 4; 

end; 

------------
-- Moroes --
------------

category:addChild(L["Moroes"], {
    
	-- Dine and Bash
	11338
	
}).locate = function()

	-- in dungeon
	-- is mythic mode	
	
	return 1115 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Moroes"];
			
end; 

---------------------
-- Shade of Medivh --
---------------------

category:addChild(L["Shade of Medivh"], {
    
	-- Scared Straight
	11432
	
}).locate = function()

	-- in dungeon
	-- is mythic mode	
	
	return 1115 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			GetCurrentMapDungeonLevel() == 10 and
			UnitName("target") == L["Shade Of Medivh"];
			
end; 

category:inheritAchievements();

---------------------------
-- Maw of Souls Category --
---------------------------

local category = AchieveIt.Categories:addCategory(categoryId, L["Maw of Souls"], {
	
	-- Maw of Souls
	10807,
	-- Heroic: Maw of Souls
	10808,
	-- Mythic: Maw of Souls
	10809,
	-- Helheim Hath No Fury
	10411
	
});

category.locate = function()

	-- in dungeon
	return 1042 == GetCurrentMapAreaID();

end;

------------
-- Ymiron --
------------

category:addChild(L["Ymiron"], {
    
	-- Instant Karma
	10413
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1042 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Ymiron"];
			
end;

-----------
-- Helya --
-----------

category:addChild(L["Helya"], {
    
	-- Poor Unfortunate Souls
	10412
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1042 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Helya"];
			
end;

category:inheritAchievements();

--------------------------------
-- Neltharion's Lair Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1065), {
	
	-- Neltharion's Lair
	10795,
	-- Heroic: Neltharion's Lair
	10796,
	-- Mythic: Neltharion's Lair
	10797,
	-- Got to Ketchum All
	10996
	
});

category.locate = function()

	-- in dungeon
	return 1065 == GetCurrentMapAreaID();

end;

-------------
-- Naraxas --
-------------

category:addChild(L["Naraxas"], {
    
	-- Can't Eat Just One
	10875
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1065 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Naraxas"];
			
end;

category:inheritAchievements();

-----------------------------
-- Seat of the Triumverate --
-----------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1178), {
	
	-- Heroic: Seat of the Triumverate
	12007,
	-- Mythic: Seat of the Triumverate
	12008
	
});

-------------------------
-- Zuraal the Ascended --
-------------------------

category:addChild(L["Zuraal the Ascended"], {
	-- Welcome the Void
	12004
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1178 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == "Zuraal the Ascended";
			
end;

-------------
-- Saprish --
-------------

category:addChild(L["Saprish"], {
	-- Let it All Out
	12005
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1178 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			(UnitName("target") == "Saprish" or
			UnitName("target") == "Darkfang" or
			UnitName("target") == "Duskwing");
			
end;

-----------
-- L'ura --
-----------

category:addChild(L["L'ura"], {
	-- Darker Side
	12009
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1178 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == "L'ura";
			
end;

category:inheritAchievements();

-------------------------
-- The Arcway Category --
-------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1079), {
	
	-- Mythic: The Arcway
	10813
	
});

category.locate = function()

	-- in dungeon
	return 1079 == GetCurrentMapAreaID()and
			AchieveIt.difficulty.isMythicDungeon();

end;

------------
-- Ivanyr --
------------

category:addChild(L["Ivanyr"], {
    
	-- Arcanic Cling
	10773
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1079 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Ivanyr"];
			
end;

---------------
-- Corstilax --
---------------

category:addChild(L["Corstilax"], {
    
	-- Clean House
	10775
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1079 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Corstilax"];
			
end;

---------------------
-- Advisor Vandros --
---------------------

category:addChild(L["Advisor Vandros"], {
    
	-- No Time to Waste
	10776
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1079 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Advisor Vandros"];
			
end;

category:inheritAchievements();

-----------------------------------
-- Vault of the Wardens Category --
-----------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1045), {
	
	-- Vault of the Wardens
	10801,
	-- Heroic: Vault of the Wardens
	10802,
	-- Mythic: Vault of the Wardens
	10803,
	-- A Specter, Illuminated
	10707
	
});

category.locate = function()

	-- in dungeon
	return 1045 == GetCurrentMapAreaID();

end;

---------------
-- Ash'Golm --
---------------

category:addChild(L["Ash'Golm"], {
    
	-- I Ain't Even Cold
	10679
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1045 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Ash'Golm"];
			
end;

----------------------
-- Corsdana Felsong --
----------------------

category:addChild(L["Cordana Felsong"], {
    
	-- Who's Afraid of the Dark?
	10680
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1045 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Cordana Felsong"];
			
end;

category:inheritAchievements();

-------------------------------------
-- Assault on Violet Hold Category --
-------------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1066), {
	
	-- Assault on Violet Hold
	10798,
	-- Heroic: Assault on Violet Hold
	10799,
	-- Mythic: Assault on Violet Hold
	10800
	
});

category.locate = function()

	-- in dungeon
	return 1066 == GetCurrentMapAreaID();

end;

----------------
-- Festerface --
----------------

category:addChild(L["Festerface"], {
    
	-- I Made a Food!
	10554
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1066 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Festerface"];

end;

--------------------------
--Millificent Manastorm --
--------------------------

category:addChild(L["Millificent Manastorm"], {
    
	-- You're Just Making It WORSE!
	10553
	
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return 1066 == GetCurrentMapAreaID() and
			AchieveIt.difficulty.isMythicDungeon()and
			UnitName("target") == L["Millificent Manastorm"];
			
end;

category:inheritAchievements();
