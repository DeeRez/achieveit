------------------------------------
-- Dungeons & Raids - Legion Raid --
------------------------------------

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

-- The achievement category ID
local categoryId = 15255;

----------------------
-- Glories Category --
----------------------

local category = AchieveIt.Categories:addCategory(categoryId, L["Glories"], {

	-- Glory of the Legion Raider
	11180,
	-- Glory of the Tomb Raider
	11763

});

---------------------------
-- World Bosses Category --
---------------------------

local category = AchieveIt.Categories:addCategory(categoryId, L["World Bosses"], {
    -- Unleashed Monstrosities
    11160,
	-- Terrors of the Shore
	11786
});

---------------------------
-- The Emerald Nightmare --
---------------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1094));

category.locate = function()

    -- in raid
    return 1094 == GetCurrentMapAreaID();

end;

--------------------
-- Glory Category --
--------------------

category:addChild(L["Glory"], {

	-- Glory of the Legion Raider
	11180

});

------------------------
-- Nightmare / Bosses --
------------------------

category:addChild(L["Progress"], {
    -- Darkbough
	10818,
	-- Tormented Guardians
	10819,
	-- Rift of Aln
	10820,
	-- Mythic: Nythendra
	10821,
	-- Mythic: Il'gynoth
	10823,
	-- Mythic: Elerethe Renferal
	10822,
	-- Mythic: Ursoc,
	10824,
	-- Mythic: Dragons of Nightmare
	10825,
	-- Mythic: Cenarius
	10826,
	-- Mythic: Xavius
	10827
});

---------------
-- Nythendra --
---------------

category:addChild(L["Nythendra"], {
    -- Mythic: Nythendra
    10821,
    -- Buggy Fight
    10555
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1094 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1;

end;

---------------
-- Il'gynoth --
---------------

category:addChild(L["Il'gynoth"], {
    -- Mythic: Il'gynoth
    10823,
    -- Took the Red Eye Down
    10830
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1094 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 4;

end;

-----------------------
-- Elerethe Renferal --
-----------------------

category:addChild(L["Elerethe Renferal"], {
    -- Mythic: Elerethe Renferal
    10822,
    -- webbing Crashers
    10771
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1094 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 3;

end;

-----------
-- Ursoc --
-----------

category:addChild(L["Ursoc"], {
    -- Mythic: Ursoc
   10824,
    -- Scare Bear
    10753
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1094 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 10;

end;

--------------------------
-- Dragons of Nightmare --
--------------------------

category:addChild(L["Dragons of Nightmare"], {
    -- Mythic: Dragons of Nightmare
    10825,
    -- Imagined Dragons World Tour
    10663
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1094 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 5;

end;

--------------
-- Cenarius --
--------------

category:addChild(L["Cenarius"], {
    -- Mythic: Cenarius 
    10826,
    -- Use the Forece(s)
    10772
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1094 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 11;

end;

------------
-- Xavius --
------------

category:addChild(L["Xavius"], {
    -- Mythic: Xavius 
    10827,
    -- I Attack the Darkness
    10755
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1094 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 12;

end;

category:inheritAchievements();

--------------------
-- Trial of Valor --
--------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1114));

category.locate = function()

    -- in raid
    return 1114 == GetCurrentMapAreaID();

end;

-----------------------------
-- Trial of Valor / Bosses --
-----------------------------

category:addChild(L["Progress"], {
    
	-- Trial of Valor
	11394,
	-- Heroic: Trial of Valor
	11426,
	-- Mythic: Odyn
	11396,
	-- Mythic: Guarm
	11397,
	-- Mythic: Helya
	11398
});

----------
-- Odyn --
----------

category:addChild(L["Odyn"], {
    -- Mythic: Odyn
    11396,
    -- You Ruined Everything!
    11337
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1114 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 2;

end;

-----------
-- Guarm --
-----------

category:addChild(L["Guarm"], {
    -- Mythic: Guarm
    11397,
    -- Boneafide Tri Tip
    11386
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1114 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 3 and 
			UnitName("target") == "Guarm";
			--AchieveIt.Box:containsPlayer(46, 54, 20, 38);

end;

-----------
-- Helya --
-----------

category:addChild(L["Helya"], {
    -- Mythic: Helya
    11398,
    -- Patient Zero
    11377,
	-- The Chosen
	11387
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1114 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 3 and 
			UnitName("target") == "Helya";
			--AchieveIt.Box:containsPlayer(33,45, 16, 36);

end;

category:inheritAchievements();

-------------------
-- The Nighthold --
-------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1088));

category.locate = function()

    -- in raid
    return 1088 == GetCurrentMapAreaID();

end;

--------------------
-- Glory Category --
--------------------

category:addChild(L["Glory"], {

	-- Glory of the Legion Raider
	11180

});

------------------------
-- Nighthold / Bosses --
------------------------

category:addChild(L["Progress"], {

	-- Arcing Aqueducts
	10829,
	-- Royal Athenaeum
	10837,
	-- Nightspire
	10838,
	-- Betrayer's Rise
	10839,
	-- Mythic: Skorpyron
	10840,
	-- Mythic: Chromatic Anomaly
	10842,
	-- Mythic: Trilliax
	10843,
	-- Mythic: Spellblade Aluriel
	10844,
	-- Mythic: Tichondrius
	10847,
	-- Mythic: Krosus
	10848,
	-- Mythic: High Botanist Tel'arn
	10846,
	-- Mythic: Star Augur Etraeus
	10845,
	-- Mythic: Grand Magistrix Elisande
	10849,
	-- Mythic: Gul'dan
	10850
});

---------------
-- Skorpyron --
---------------

category:addChild(L["Skorpyron"], {
    -- Mythic: Skorpyron
    10840,
    -- Cage Rematch
    10678
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and 
			UnitName("target") == "Skorpyron";
			--AchieveIt.Box:containsPlayer(27, 34, 57, 68);

end;

-------------------------
-- Chronomatic Anomaly --
-------------------------

category:addChild(L["Chronomatic Anomaly"], {
    -- Mythic: Chronomatic Anomaly 
    10842,
    -- Grand Opening
    10697
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and 
			UnitName("target") == "Chronomatic Anomaly";
			--AchieveIt.Box:containsPlayer(45, 64, 26, 58);

end;

--------------
-- Trilliax --
--------------

category:addChild(L["Trilliax"], {
    -- Mythic: Trilliax 
    10843,
    -- Gluten Free
    10742
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 1 and 
			UnitName("target") == "Trilliax";
			--AchieveIt.Box:containsPlayer(37, 46, 13, 26);

end;

------------------------
-- Spellblade Aluriel --
------------------------

category:addChild(L["Spellblade Aluriel"], {
    -- Mythic: Spellblade Aluriel 
    10844,
    -- A Change In Scenery
    10817
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 3 and 
			UnitName("target") == "Spellblade Aluriel";
			--AchieveIt.Box:containsPlayer(22, 60, 13, 70);

end;

-----------------
-- Tichondrius --
-----------------

category:addChild(L["Tichondrius"], {
    -- Mythic: Tichondrius 
    10847,
    -- Not For You
    10704
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 5;

end;

------------
-- Krosus --
------------

category:addChild(L["Krosus"], {
    -- Mythic: Krosus 
    10848,
    -- Burning Bridges
    10575
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 3 and 
			UnitName("target") == "Krosus";
			--AchieveIt.Box:containsPlayer(68, 75, 85, 94);

end;

---------------------------
-- High Botanist Tel'arn --
---------------------------

category:addChild(L["High Botanist Tel'arn"], {
    -- Mythic: High Botanist Tel'arn
    10846,
    -- Fruit of All Evil
    10754
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 4;

end;

------------------------
-- Star Augur Etraeus --
------------------------

category:addChild(L["Star Augur Etraeus"], {
    -- Mythic: Star Augur Etraeus
    10845,
    -- Elementalry!
    10851
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 6;

end;

------------------------------
-- Grand Magistrix Elisande --
------------------------------

category:addChild(L["Grand Magistrix Elisande"], {
    -- Mythic: Grand Magistrix Elisande
    10849,
    -- Infinitesimal
    10699
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 7 and
			UnitName("target") == "Elisande";

end;

-------------
-- Gul'dan --
-------------

category:addChild(L["Gul'dan"], {
    -- Mythic: Gul'dan
    10850,
    -- I've Got My Eyes On You
    10696
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1088 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
            GetCurrentMapDungeonLevel() == 9;

end;

category:inheritAchievements();

----------------------
-- Tomb of Sargeras --
----------------------

local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1147));
category.locate = function()

    -- in raid
    return 1177 == GetCurrentMapAreaID();
end;
	
category.locate = function()

    -- in raid
	return 1147 == GetCurrentMapAreaID();

end;

--------------------
-- Glory Category --
--------------------

category:addChild(L["Glory"], {

	-- Glory of the Tomb Raider
	11763

});
-----------------------
-- Progress Category --
-----------------------

category:addChild(L["Progress"], {

	-- The Gates of Hell
	11787,
	-- Wailing Halls
	11788,
	-- Chamber of the Avatar
	11789,
	-- Deceiver's Fall
	11790,
	-- Mythic: Goroth
	11767,
	-- Mythic: Demonic Inquisition
	11774,
	-- Mythic: Harjatan
	11775,
	-- Mythic: Sisters of the Moon
	11777,
	-- Mythic: Mistress Sassz'ine
	11776,
	-- Mythic: The Desolate	Host
	11778,
	-- Mythic: Maiden of Vigilance
	11779,
	-- Mythic: Fallen Avatar
	11780,
	-- Mythic: Kil'jaeden
	11781
});

------------
-- Goroth --
------------

	category:addChild(L["Goroth"], {
	-- Mythic: Goroth
	11767,
	-- Fel Turkey
	11724
}).locate = function()

    -- in raid
    -- not raid finder
	-- target is
    return 1147 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Goroth"];

end;
	
-------------------------
-- Demonic Inquisition --
-------------------------

	category:addChild(L["Demonic Inquisition"], {	
	-- Mythic: Demonic Inquisition
	11774,
	-- Grin and Bear It
	11696
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1147 == GetCurrentMapAreaID() and
			not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Atrigan"] or
			UnitName("target") == L["Belac"]);

end;
	
--------------
-- Harjatan --
--------------

	category:addChild(L["Harjatan"], {	
	-- Mythic: Harjatan
	11775,
	-- Grand Fin-ale
	11699
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1147 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Harjatan"];

end;

-------------------------
-- Sisters of the Moon --
-------------------------

	category:addChild(L["Sisters of the Moon"], {	
	-- Mythic: Sisters of the Moon
	11777,
	-- Wax On, Wax Off
	11773
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1147 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Huntress Kasparian"];

end;

------------------------
-- Mistress Sassz'ine --
------------------------

	category:addChild(L["Mistress Sassz'ine"], {	
	-- Mythic: Mistress Sassz'ine
	11776,
	-- Five Course Seafood Buffet
	11676
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1147 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Mistress Sassz'ine"];

end;	
	
-----------------------
-- The Desolate Host --
-----------------------

	category:addChild(L["The Desolate Host"], {	
	-- Mythic: The Desolate Host
	11778,
	-- Great Soul, Great Purpose
	11674
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1147 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Engine of Souls"];

end;
	
-------------------------
-- Maiden of Vigilance --
-------------------------

	category:addChild(L["Maiden of Vigilance"], {	
	-- Mythic: Maiden of Vigilance
	11779,
	-- Sky Walker
	11675
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1147 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Maiden of Vigilance"];

end;
	
-------------------
-- Fallen Avatar --
-------------------

	category:addChild(L["Fallen Avatar"], {	
	-- Mythic: Fallen Avatar
	11780,
	-- Bingo!
	11683
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1147 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Fallen Avatar"];

end;
	
----------------
-- Kil'jaeden --
----------------

	category:addChild(L["Kil'jaeden"], {	
	-- Mythic: Kil'jaeden
	11781,
	-- Dark Souls
	11770
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1147 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Kil'jaeden"];

end;
	
	
category:inheritAchievements();