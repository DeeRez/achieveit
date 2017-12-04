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
	11763,	
	-- Glory of the Argus Raider
	11987

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
            UnitName("target") == L["Nythendra"];

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
            (UnitName("target") == L["Il'gynoth"] or 
			 UnitName("target") == L["Eye of Il'gynoth"]);

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
            UnitName("target") == L["Elerethe Renferal"];

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
            UnitName("target") == L["Ursoc"];

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
            (UnitName("target") == L["Emeriss"] or
			 UnitName("target") == L["Lethon"] or
			 UnitName("target") == l["Taerar"] or
			 UnitName("target") == L["Ysondre"]);

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
            UnitName("target") == L["Cenarius"];

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
            UnitName("target") == L["Xavius"];

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
    -- You Runed Everything!
    11337
}).locate = function()

    -- in raid
    -- not raid finder
    -- on level 3
    return 1114 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Odyn"] or 
			 UnitName("target") == L["Hymdall"] or
			 UnitName("target") == L["Hyrja"]);

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
			UnitName("target") == L["Guarm"];

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
			UnitName("target") == L["Helya"];

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
			UnitName("target") == L["Skorpyron"];

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
			UnitName("target") == L["Chronomatic Anomaly"];

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
			UnitName("target") == L["Trilliax"];

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
			UnitName("target") == L["Spellblade Aluriel"];

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
            UnitName("target") == L["Tichondrius"];

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
			UnitName("target") == L["Krosus"];

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
            UnitName("target") == L["High Botanist Tel'arn"];

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
            UnitName("target") == L["Star Augur Etraeus"];

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
			UnitName("target") == L["Elisande"];

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
            UnitName("target") == L["Gul'dan"];

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

---------------------------------
-- Antorus, The Burning Throne --
---------------------------------

-- local category = AchieveIt.Categories:addCategory(categoryId, L["Antorus, The Burning Throne"]);
local category = AchieveIt.Categories:addCategory(categoryId, GetMapNameByID(1188));
	
category.locate = function()

    -- in raid
	return 1188 == GetCurrentMapAreaID();

end;

--------------------
-- Glory Category --
--------------------

category:addChild(L["Glory"], {

	-- Glory of the Argus Raider
	11987

});

-----------------------
-- Progress Category --
-----------------------

category:addChild(L["Progress"], {

	-- Light's Breach
	11988,
	-- Hopes End
	11989,
	-- Forbidden Descent
	11990,
	-- Seat of the Pantheon
	11991,
	-- Mythic: Gorathi Worldbreaker
	11992,
	-- Mythic: Hounds of Sargeras
	11993,
	-- Mythic: Antoran High Command
	11994,
	-- Mythic: Portalkeepr Hasabel
	11995,
	-- Mythic: Eonar the Lifebinder
	11996,
	-- Mythic: Imonar the Soulhunter
	11997,
	-- Mythic: Kin'aroth
	11998,
	-- Mythic: Varimathras
	11999,
	-- Mythic: The Coven of Shivarra
	12000,
	-- Mythic: Aggramar
	12001,
	-- Mythic: Argus the Unmaker
	12002
});

--------------------------
-- Gorathi Worldbreaker --
--------------------------

	category:addChild(L["Gorathi Worldbreaker"], {	
	-- Mythic: Gorathi Worldbreaker
	11992,
	-- Worm-monger
	11930
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Gorathi Worldbreaker"];

end;
	
------------------------
-- Hounds of Sargeras --
------------------------

	category:addChild(L["Hounds of Sargeras"], {	
	-- Mythic: Hounds of Sargeras
	11993,
	-- Hounds Good To Me
	12065
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["F'harg"] or
			UnitName("target") ==L["Shatug"]);

end;

--------------------------
-- Antoran High Command --
--------------------------

	category:addChild(L["Antoran High Command"], {	
	-- Mythic: Antoran High Command
	11994,
	-- This is the War Room!
	12129
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Admiral Svirax"] or
			UnitName("target") ==L["Chief Engineer Ishkar"] or 
			UnitName("target") == L["General Erodus"]);

end;

--------------------------
-- Portalkeeper Hasabel --
--------------------------

	category:addChild(L["Portalkeeper Hasabel"], {	
	-- Mythic: Portalkeeper Hasabel
	11995,
	-- Portal Combat
	11928
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Portalkeeper Hasabel"];

end;

---------------------------
-- Eonar the Life-Binder --
---------------------------

	category:addChild(L["Eonar the Life-Binder"], {	
	-- Mythic: Eonar the Life-Binder
	11996,
	-- Spheres of Influence
	12067
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Essence of Eonar"];

end;

---------------------------
-- Imonar the Soulhunter --
---------------------------

	category:addChild(L["Imonar the Soulhunter"], {	
	-- Mythic: Imonar the Soulhunter
	11997,
	-- Hard to Kill
	11949
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Imonar the Soulhunter"];

end;

----------------
-- Kin'garoth --
----------------

	category:addChild(L["Kin'garoth"], {	
	-- Mythic: Kin'garoth
	11998,
	-- The World Revolves Around Me
	12030
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Kin'garoth"];

end;

-----------------
-- Varimathras --
-----------------

	category:addChild(L["Varimathras"], {	
	-- Mythic: Varimathras
	11999,
	-- Together We Stand
	11948
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Varimathras"];

end;

---------------------------
-- The Coven of Shivarra --
---------------------------

	category:addChild(L["The Coven of Shivarra"], {	
	-- Mythic: The Coven of Shivarra
	12000,
	-- Remember the Titans
	12046
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Noura, Mothe of Flames"] or 
			UnitName("target") == L["Asara, Mother of Night"] or
			UnitName("target") ==L["Diima, Mother of Gloom"] or 
			UnitName("target") == L["Thu'raya, Mother of the Cosmos"]);

end;

--------------
-- Aggramar --
--------------

	category:addChild(L["Aggramar"], {	
	-- Mythic: Aggramar
	12001,
	-- Don't Sweat the Technique
	11915
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Aggramar"];

end;

-----------------------
-- Argus the Unmaker --
-----------------------

	category:addChild(L["Argus the Unmaker"], {	
	-- Mythic: Argus the Unmaker
	12002
	-- Stardust Crusaders
	12257
}).locate = function()

    -- in raid
    -- not raid finder
    return 1188 == GetCurrentMapAreaID() and
            not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Argus the Unmaker"];

end;
		
category:inheritAchievements();	
