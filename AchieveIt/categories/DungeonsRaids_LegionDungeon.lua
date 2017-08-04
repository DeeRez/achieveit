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
        1042, -- Maw of Souls
		1065, -- Neltharion's Lair
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
	-- Mythic: Court of Stars
	10816,
	-- Mythic: Cathedral of Eternal Night
	11702,
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
	-- Mythic: The Arcway
	10813,
	-- Mythic: Vault of the Wardens
	10803,
	-- Return to Kharazhan
	11429
	
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
        1042, -- Maw of Souls
		1065, -- Neltharion's Lair
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
        1042, -- Maw of Souls
		1065, -- Neltharion's Lair
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
	-- Adds? More Like Bads
	10711,
	-- Black Rook Moan
	10710,
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
			GetCurrentMapDungeonLevel() == 1 and 
			UnitName("target") == "Amalgam Of Souls";
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
			GetCurrentMapDungeonLevel() == 2 and
			UnitName("target") == "Illysanna Ravencrest";
end;

--------------------------------
-- Cathedral of Eternal Night --
--------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1146), {
	-- Cathedral of Eternal Night
	11700,
	-- Heroic: Cathedral of Eternal Night
	11701,
	-- Mythic: Cathedral of Eternal Night
	11702,
	-- A Steamy Romance Saga
	11769,
	-- Boom Bloom
	11768,
	-- Master of Shadows
	11703
	
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
			GetCurrentMapDungeonLevel() == 2;
			

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
			GetCurrentMapDungeonLevel() == 5;
			-- UnitName("target") == "Millificent Manastorm";
end;

-----------------------------
-- Court of Stars Category --
-----------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1087), {
	-- Court of Stars
	10816,
	-- Dropping Some Eaves
	10611,
	-- Waiting For Gerdo
	10610
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
			GetCurrentMapDungeonLevel() == 1 and
			UnitName("target") == "Patrol Captain Gerdo";
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



--------------------------------
-- Darkheart Thicket Category --  
--------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1067), {
	-- Darkheart Thicket
	10783,
	-- Heroic: Darkheart Thicket
	10784,
	-- Mythic: Darkheart Thicket
	10785,
	-- Burning Down the House
	10769,
	-- Egg-cellent!
	10766	
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
			UnitName("target") == "Dresaron";
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
			UnitName("target") == "Shade Of Xavius";
end;

------------------------------
-- Eye of Azshara Category  --
------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1046), {
    -- Eye of Azshara
    10780,
    -- Heroic: Eye of Azshara
    10781,
	-- Mythic: Eye of Azshara
	10782,
	-- But You Say He's Just a Friend
	10456,
	-- Ready for Raiding V
	10458,
	-- Stay Salty
	10457
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
			UnitName("target") == "Warlord Parjesh";

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
			UnitName("target") == "Lady Hatecoil";
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
			UnitName("target") == "Wrath Of Azshara";

end;


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
	10544,
	-- Surge Protectortor
	10543
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
			GetCurrentMapDungeonLevel() == 3 and
			UnitName("target") == "Odyn";
end; 

-----------------------
-- Karazhan Category --
-----------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1115), {
	-- Return to Karazhan
	11429,
	-- Burn after Reading
	11433,
	-- Dine and Bash
	11338,
	-- One Night in Karazhan
	11430,
	-- Scared Straight
	11432,
	-- Season Tickets
	11335,
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
			GetCurrentMapDungeonLevel() == 3 and
			UnitName("target") == "Moroes";
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
			UnitName("target") == "Shade Of Medivh";
end; 


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
	10411,
	-- Instant Karma
	10413,
	-- Poor Unfortunate Souls
	10412
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
			GetCurrentMapDungeonLevel() == 1 and
			UnitName("target") == "Ymiron";
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
			GetCurrentMapDungeonLevel() == 3 and
			UnitName("target") == "Helya";
end;

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
	-- Can't Eat Just One
	10875,
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
			UnitName("target") == "Naraxas";
end;

-------------------------
-- The Arcway Category --
-------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1079), {
	-- Mythic: The Arcway
	10813,
	-- Arcanic Cling
	10773,
	-- Clean House
	10775,
	-- No Time to Waste
	10776	
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
			UnitName("target") == "Ivanyr";
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
			UnitName("target") == "Corstilax";
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
			UnitName("target") == "Advisor Vandros";
end;

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
	10707,
	-- I Ain't Even Cold
	10679,
	-- Who's Afraid of the Dark?
	10680
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
			GetCurrentMapDungeonLevel() == 2 and
			UnitName("target") == "Ash'Golm";
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
			GetCurrentMapDungeonLevel() == 3 and
			UnitName("target") == "Cordana Felsong";
end;

-------------------------------------
-- Assault on Violet Hold Category --
-------------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1066), {
	-- Assault on Violet Hold
	10798,
	-- Heroic: Assault on Violet Hold
	10799,
	-- Mythic: Assault on Violet Hold
	10800,
	-- I Made a Food!
	10554,
	-- You're Just Making It WORSE!
	10553	
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
			UnitName("target") == "Festerface";

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
			UnitName("target") == "Millificent Manastorm";
end;

