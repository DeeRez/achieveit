-------------------------------------
-- Dungeons & Raids - Draenor Raid --
-------------------------------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 15231;

--------------------
-- Glory Category --
--------------------

local category = AchieveIt.Categories:addCategory(categoryId, L["Glories"], {

	-- Glory of the Draenor Raider
	8985,
	-- Glory of the Hellfire Raider
	10149

});

---------------------------
-- World Bosses Category --
---------------------------

local category = AchieveIt.Categories:addCategory(categoryId, L["World Bosses"], {
    -- Goliaths of Gorgrond
    9423,
    -- So Grossly Incandescent
    9425,
	-- The Legion Will NOT Conquer All
	10071
});

-----------------------
-- Highmaul Category --
-----------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(994));

category.locate = function()

    -- in raid
    return 994 == GetCurrentMapAreaID();

end;

--------------------
-- Glory Category --
--------------------

category:addChild(L["Glory"], {

	-- Glory of the Draenor Raider
	8985
	
});

-----------------------
-- Highmaul / Bosses --
-----------------------

category:addChild(L["Progress"], {
    -- The Walled City
    8986,
    -- Arcane Sanctum
    8987,
    -- Imperator's Fall
    8988,
    -- Mythic: Kargath Bladefist
    8949,
    -- Mythic: The Butcher
    8960,
    -- Mythic: Tectus
    8961,
    -- Mythic: Brackenspore
    8962,
    -- Mythic: Twin Ogron
    8963,
    -- Mythic: Ko'ragh
    8964,
    -- Mythic: Imperator's Fall
    8965
});

----------------------------------
-- Highmaul / Kargath Bladefist --
----------------------------------

category:addChild(L["Kargath Bladefist"], {
    -- Mythic: Kargath Bladefist
    8949,
    -- Flame On!
    8948
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 994 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 3;

end;

----------------------------
-- Highmaul / The Butcher --
----------------------------

category:addChild(L["The Butcher"], {
    -- Mythic: The Butcher
    8960,
    -- Hurry Up, Maggot!
    8947
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 1
    -- and in box
    return 994 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and
            AchieveIt.Box:containsPlayer(49, 63, 42, 64);

end;

-----------------------
-- Highmaul / Tectus --
-----------------------

category:addChild(L["Tectus"], {
    -- Mythic: Tectus
    8961,
    -- More Like Wrecked-us
    8974
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 1
    -- and in box
    return 994 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and
            AchieveIt.Box:containsPlayer(26, 43, 64, 85);

end;

-----------------------------
-- Highmaul / Brackenspore --
-----------------------------

category:addChild(L["Brackenspore"], {
    -- Mythic: Brackenspore
    8962,
    -- A Fungus Among Us
    8975
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 1
    -- and in box
    return 994 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and
            AchieveIt.Box:containsPlayer(39, 57, 4, 39);

end;

---------------------------
-- Highmaul / Twin Ogron --
---------------------------

category:addChild(L["Twin Ogron"], {
    -- Mythic: Twin Ogron
    8963,
    -- Brothers in Arms
    8958
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 4
    -- and in box
    return 994 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 4 and
            AchieveIt.Box:containsPlayer(41, 72, 10, 52);

end;

------------------------
-- Highmaul / Ko'ragh --
------------------------

category:addChild(L["Ko'ragh"], {
    -- Mythic: Ko'ragh
    8964,
    -- Pair Annihilation
    8976
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 4
    -- and in box
    return 994 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 4 and
            AchieveIt.Box:containsPlayer(23, 49, 49, 87);

end;

----------------------------------
-- Highmaul / Imperator Mar'gok --
----------------------------------

category:addChild(L["Imperator Mar'gok"], {
    -- Imperator's Fall
    8988,
    -- Mythic: Imperator's Fall
    8965,
    -- Lineage of Power
    8977
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 6
    return 994 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 6;

end;


category:inheritAchievements();


--------------------------------
-- Blackrock Foundry Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(988));

category.locate = function()

    -- in raid
    return 988 == GetCurrentMapAreaID();

end;

--------------------
-- Glory Category --
--------------------

category:addChild(L["Glory"], {

	-- Glory of the Draenor Raider
	8985
	
});

--------------------------------
-- Blackrock Foundry / Bosses --
--------------------------------

category:addChild(L["Progress"], {
    -- Slagworks
    8989,
    -- Black Forge
    8990,
    -- Iron Assembly
    8991,
    -- Blackhand's Crucible
    8992,
    -- Mythic: Gruul
    8966,
    -- Mythic: Oregorger
    8967,
    -- Mythic: Hans'gar and Franzok
    8968,
    -- Mythic: Beastlord Darmac
    8956,
    -- Mythic: Flamebender Ka'graz
    8932,
    -- Mythic: Operator Thogar
    8969,
    -- Mythic: Blast Furnace
    8970,
    -- Mythic: Kromog
    8971,
    -- Mythic: Iron Maidens
    8972,
    -- Mythic: Blackhand's Crucible
    8973
});

-------------------------------
-- Blackrock Foundry / Gruul --
-------------------------------

category:addChild(L["Gruul"], {
    -- Mythic: Gruul
    8966,
    -- The Iron Price
    8978
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 2
    -- and in box
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 2 and
            AchieveIt.Box:containsPlayer(29, 48, 9, 32);

end;

-----------------------------------
-- Blackrock Foundry / Oregorger --
-----------------------------------

category:addChild(L["Oregorger"], {
    -- Mythic: Oregorger
    8967,
    -- He Shoots, He Ores
    8979
}).locate = function()

-- in raid
-- not raid finder
-- on level 2
-- and in box
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 2 and
            AchieveIt.Box:containsPlayer(28, 48, 71, 97);

end;

----------------------------------------------
-- Blackrock Foundry / Hans'gar and Franzok --
----------------------------------------------

category:addChild(L["Hans'gar and Franzok"], {
    -- Mythic: Hans'gar and Franzok
    8968,
    -- Stamp Stamp Revolution
    8980
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 2
    -- and in box
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and
            AchieveIt.Box:containsPlayer(42, 53, 65, 89);

end;

------------------------------------------
-- Blackrock Foundry / Beastlord Darmac --
------------------------------------------

category:addChild(L["Beastlord Darmac"], {
    -- Mythic: Beastlord Darmac
    8956,
    -- Fain Would Lie Down
    8981
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 4
    -- and in box
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 4 and
            AchieveIt.Box:containsPlayer(51, 78, 58, 94);

end;

---------------------------------------------
-- Blackrock Foundry / Flamebender Ka'graz --
---------------------------------------------

category:addChild(L["Flamebender Ka'graz"], {
    -- Mythic: Flamebender Ka'graz
    8932,
    -- The Steel Has Been Brought
    8929
}).locate = function()

-- in raid
-- not raid finder
-- on level 1
-- and in box
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and
            AchieveIt.Box:containsPlayer(14, 25, 65, 89);

end;

-----------------------------------------
-- Blackrock Foundry / Operator Thogar --
-----------------------------------------

category:addChild(L["Operator Thogar"], {
    -- Mythic: Operator Thogar
    8969,
    -- There's Always a Bigger Train
    8982
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 4
    -- and in box
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 4 and
            AchieveIt.Box:containsPlayer(35, 55, 13, 42);

end;

---------------------------------------
-- Blackrock Foundry / Blast Furnace --
---------------------------------------

category:addChild(L["Blast Furnace"], {
    -- Mythic: Blast Furnace
    8970,
    -- Ya, We've Got Time...
    8930
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 2
    -- and in box
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 2 and
            AchieveIt.Box:containsPlayer(30, 53, 36, 68);

end;

--------------------------------
-- Blackrock Foundry / Kromog --
--------------------------------

category:addChild(L["Kromog"], {
    -- Mythic: Kromog
    8971,
    -- Would You Give Me a Hand?
    8983
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 1
    -- and in box
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and
            AchieveIt.Box:containsPlayer(20, 41, 32, 55);

end;

--------------------------------------
-- Blackrock Foundry / Iron Maidens --
--------------------------------------

category:addChild(L["Iron Maidens"], {
    -- Mythic: Iron Maidens
    8972,
    -- Be Quick or Be Dead
    8984
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 1
    -- and in box
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and
            AchieveIt.Box:containsPlayer(64, 93, 10, 56);

end;

-----------------------------------
-- Blackrock Foundry / Blackhand --
-----------------------------------

category:addChild(L["Blackhand"], {
    -- Blackhand's Crucible
    8992,
    -- Mythic: Blackhand's Crucible
    8973,
    -- Ashes, Ashes...
    8952
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 5
    return 988 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 5;

end;

category:inheritAchievements();


-------------------------------
-- Hellfire Citadel Category --
-------------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1026));

category.locate = function()

    -- in raid
    return 1026 == GetCurrentMapAreaID();

end;

--------------------
-- Glory Category --
--------------------

category:addChild(L["Glory"], {


	-- Glory of the Hellfire Raider
	10149

});
-------------------------------
-- Hellfire Citadel / Bosses --
-------------------------------

category:addChild(L["Progress"], {
    -- Hellbreach
    10023,
    -- Halls Of Blood
    10024,
    -- Bastion Of Shadows
	10025,
	-- Destrutor's Rise
	10020,
	-- The Black Gate
	10019,
	-- Mythic: Hellfire Assault
	10027,
	-- Mythic: Iron Reaver
	10032,
	-- Mythic: Kormrok
	10033,
	-- Mythic: Hellfire Council
	10034,
	-- Mythic: Kilrogg Deadeye
	10035,
	-- Mythic: Gorefiend
	10253,
	-- Mythic: Shadow-Lord Iskar
	10037,
	-- Mythic: Socrethar the Eternal
	10040,
	-- Mythic: Tyrant Velhari
	10041,
	-- Mythic: Fel Lord Zakuun
	10038,
	-- Mythic: Xhul'horac
	10039,
	-- Mythic: Mannoroth
    10042,
	-- Mythic: Archimonde
	10043
});

-----------------------------------------
-- Hellfire Citadel / Hellfire Assault --
-----------------------------------------

category:addChild(L["Hellfire Assault"], {
    -- Mythic: Hellfire Assault
    10027,
    -- Nearly Indestructible
    10026
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 1
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1  and
            AchieveIt.Box:containsPlayer(55, 75, 17, 72); 

end;



------------------------------------
-- Hellfire Citadel / Iron Reaver --
------------------------------------

category:addChild(L["Iron Reaver"], {
    -- Mythic: Iron Reaver
    10032,
    -- Turning the Tide
    10057
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 1
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1  and
            AchieveIt.Box:containsPlayer(38, 54, 17, 72); 

end;

--------------------------------
-- Hellfire Citadel / Kormrok --
--------------------------------

category:addChild(L["Kormrok"], {
    -- Mythic: Kormrok
    10033,
    -- Waves Came Crashing Down All Around
    10013
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 4
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 4; 

end;

-----------------------------------------
-- Hellfire Citadel / Hellfire Council --
-----------------------------------------

category:addChild(L["Hellfire Council"], {
    -- Mythic: Hellfire Council
    10034,
    -- Don't Fear The Reaper
    10054
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 5
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 5  and
            AchieveIt.Box:containsPlayer(60, 82, 50, 80); 

end;

----------------------------------------
-- Hellfire Citadel / Kilrogg Deadeye --
----------------------------------------

category:addChild(L["Kilrogg Deadeye"], {
    -- Mythic: Kilrogg Deadeye
    10035,
    -- A Race Against Slime
    9972
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 5
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 5  and
            AchieveIt.Box:containsPlayer(25, 63, 18, 47); 

end;

----------------------------------
-- Hellfire Citadel / Gorefiend --
----------------------------------

category:addChild(L["Gorefiend"], {
    -- Mythic: Gorefiend
    10253,
    -- Get In My belly!
    9979
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 2
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 2; 

end;

------------------------------------------
-- Hellfire Citadel / Shadow-Lord Iskar --
------------------------------------------

category:addChild(L["Shadow-Lord Iskar"], {
    -- Mythic: Shadow-Lord Iskar
    10037,
    -- Pro Toss
    9988
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 6
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 6  and
            AchieveIt.Box:containsPlayer(36, 56, 50, 90); 

end;

----------------------------------------------
-- Hellfire Citadel / Socrethar the Eternal --
----------------------------------------------

category:addChild(L["Socrethar the Eternal"], {
    -- Mythic: Socrethar the Eternal
    10040,
    -- I'm a Soul Man
    10086
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 8
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 8  and
            AchieveIt.Box:containsPlayer(45, 72, 42, 62); 

end;

---------------------------------------
-- Hellfire Citadel / Tyrant Velhari --
---------------------------------------

category:addChild(L["Tyrant Velhari"], {
    -- Mythic: Tyrant Velhari
    10041,
    -- Non-Lethal Enforcer
    9989
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 8
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 8  and
            AchieveIt.Box:containsPlayer(25, 35, 45, 60); 

end;

----------------------------------------
-- Hellfire Citadel / Fel Lord Zakuun --
----------------------------------------

category:addChild(L["Fel Lord Zakuun"], {
    -- Mythic: Fel Lord Zakuun
    10038,
    -- This Land Was Green and Good Until...
    10012
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 6
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 6  and
            AchieveIt.Box:containsPlayer(43, 56, 9, 33); 

end;

-----------------------------------
-- Hellfire Citadel / Xhul'horac --
-----------------------------------

category:addChild(L["Xhul'horac"], {
    -- Mythic: Xhul'horac
    10039,
    -- You Gotta Keep 'em Separated
    10087
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 7
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 7; 

end;

----------------------------------
-- Hellfire Citadel / Mannoroth --
----------------------------------

category:addChild(L["Mannoroth"], {
    -- Mythic: Mannoroth
    10042,
    -- Bad Manner(oth)
	10030
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 1
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 9; 

end;

-----------------------------------
-- Hellfire Citadel / Archimonde --
-----------------------------------

category:addChild(L["Archimonde"], {
    -- Mythic: Archimonde
    10043,
    -- Echoes of Doomfire
    10073
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 10
    return 1026 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 10; 

end;

category:inheritAchievements();
