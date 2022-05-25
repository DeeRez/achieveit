-----------------------------------
-- Dungeons & Raids: Shadowlands --
-----------------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

--------------
-- Dungeons --
--------------

--------------------
-- Glory Category --
--------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, L["Glory"], {
	14322,	-- Glory of the Shadowlands Hero
});

------------------
-- Difficulties --
------------------

	-- dungeon map ids
	
local sl_dungeon_ids = {
	1677, -- De Other Side: Ardenweald
    1678, -- De Other Side: Mechagon
    1679, -- De Other Side: Zul'gurub
    1680, -- De Other Side
    1663, -- Halls of Atonement
    1664, -- Halls of Atonement: The Nave of Pain
    1665, -- Halls of Atonement: The Sanctuary of souls
    1669, -- Mists of Tirna Scithe
    1674, -- Plaguefall
    1697, -- Plaguefall: The Festering Sanctum
    1675, -- Sanguine Depths: Depths of Despair
    1676, -- sanguine Depths: Amphitheater of Sorrow
    1692, -- Spires of Ascension: Honors Ascent
    1693, -- Spires of Ascension: Gardens of Repose
    1694, -- Spires of Ascension: Font of Fealty
    1695, -- Spires of Ascension: Seat of the Archon
    1666, -- Necrotic Wake
    1667, -- Necrotic Wake: Stitchwerks
    1668, -- Necrotic Wake: Zolramus
    1683, -- Theater of Pain
    1684, -- Theater of Pain: Chambers of Conquest
    1685, -- Theater of Pain: Altars of Agony
    1686, -- Theater of Pain: Upper Barrow of Carnage
    1687, -- Theater of Pain: Lower Barrow of Carnage
	1989, -- Tazavesh, the Veiled Market - The Veiled Market	 
	1990, -- Tazavesh, the Veiled Market - The Grand Menagerie	 
	1991, -- Tazavesh, the Veiled Market - The P.O.S.T.	 
	1992, -- Tazavesh, the Veiled Market - Myza's Oasis	 
	1993, -- Tazavesh, the Veiled Market - The Opulent Nexus	 
	1995, -- Tazavesh, the Veiled Market - Stormheim	 
	1996, -- Tazavesh, the Veiled Market - Boralus Harbor	 
	1997, -- Tazavesh, the Veiled Market - Aggramar's Vault 
	};
	
AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,Difficulty.Normal, {
	14373, -- De Other Side
	14370, -- Halls of Atonement
	14371, -- Mists of Tirna Scithe
	14369, -- Plaguefall
	14197, -- Sanguine Depths
	14326, -- Spires of Ascension
	14366, -- The Necrotic Wake
	14372, -- Theater of Pain
	
}).locate = function()

	return 	AchieveIt:Contains(sl_dungeon_ids,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isDungeon();

end;

AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,Difficulty.Heroic, {
	14408, -- De Other Side
	14410, -- Halls of Atonement
	14412, -- Mists of Tirna Scithe
	14414, -- Plaguefall
	14198, -- Sanguine Depths
	14324, -- Spires of Ascension
	14367, -- The Necrotic Wake
	14416, -- Theater of Pain
	
}).locate = function()

	return 	AchieveIt:Contains(sl_dungeon_ids,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isHeroicDungeon();

end;

AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,Difficulty.Mythic, {
	14409, -- De Other Side
	14411, -- Halls of Atonement
	14413, -- Mists of Tirna Scithe
	14415, -- Plaguefall
	14199, -- Sanguine Depths
	14325, -- Spires of Ascension
	14368, -- The Necrotic Wake
	14417, -- Theater of Pain
	15177, -- Tazavesh, the Veiled Market
	
}).locate = function()

	return 	AchieveIt:Contains(sl_dungeon_ids,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isMythicDungeon();

end;

-------------------
-- De Other Side --
-------------------

local dos_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,L["De Other Side"]);

dos_cat:addChild(L["Hakkar the Soulflayer"], {
	14354, -- Highly Communicable
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Hakkar the Soulflayer"];

end;		

dos_cat:addChild(L["The Manastorms"], {
	14374, -- Couples Therapy
}).locate = function() 
	
	return	C_Map.GetBestMapForUnit("player") == 1678 and
			AchieveIt.difficulty.isMythicDungeon() and
			(UnitName("target") == L["Millificent Manastorm"] or 
			UnitName("target") == L["Millhouse Manastorm"]);

end;

dos_cat:addChild(L["Dealer Xy'exa"], {
	14606, -- Thinking With...
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Dealer Xy'exa"];

end;

dos_cat:inheritAchievements();

------------------------
-- Halls of Atonement --
------------------------

local hoa_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,L["Halls of Atonement"]);

hoa_cat:addChild(L["Halkias, the Sin-Stained Goliath"], {
	14567, -- Picking Up the Pieces
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Halkias"];

end;

hoa_cat:addChild(L["Echelon"], {
	14284, -- Breaking Bad
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Echelon"];

end;

 hoa_cat:addChild(L["Lord Chamberlain"], {
	14352, -- Nobody Puts Denathrius in a Corner
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Lord Chamberlain"];

end;

hoa_cat:inheritAchievements();

---------------------------
-- Mists of Tirna Scithe --
---------------------------

local mists_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,L["Mists of Tirna Scithe"], {
	14291, -- Someone Could Trip On These
});

 mists_cat:addChild(L["Ingra Maloch"], {
	14503, -- hooked On Hyrdroponics
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
		   (UnitName("target") == L["Ingra Maloch"] or 
			UnitName("target") == L["Droman Oulfarran"]);

end;

 mists_cat:addChild(L["Tred'ova"], {
	14375, --Hunger for Knowledge
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Tred'ova"];

end;

mists_cat:inheritAchievements();

----------------
-- Plaguefall --
----------------

local plaguefall_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,L["Plaguefall"], {
	14292, --Riding with my Slimes
});

 plaguefall_cat:addChild(L["Globgrog"], {
	14347, -- Full Gores Meal
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Globgrog"];

end;

 plaguefall_cat:addChild(L["Doctor Ickus"], {
	14296, -- Going Viral
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Doctor Ickus"];

end;

plaguefall_cat:inheritAchievements();

---------------------
-- Sanguine Depths --
---------------------

local sanguine_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,L["Sanguine Depths"], {
	14290, -- I Only Have Eyes For You
});

 sanguine_cat:addChild(L["Executor Tarvold"], {
	14286, -- Residue Evil
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Executor Tarvold"];

end;

 sanguine_cat:addChild(L["General Kaal"], {
	14289, -- Kaaled shot
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["General Kaal"];

end;
 
sanguine_cat:inheritAchievements();

-------------------------
-- Spires of Ascension --
-------------------------

local soa_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, L["Spires of Ascension"], {
	14327, -- I Can See My House From Here
});

soa_cat:addChild(L["Oryphrion"], {
	14331, --Goliath Offline
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Oryphrion"];

end;

soa_cat:addChild(L["Devos, Paragon of Doubt"], {
	14323, -- ExSPEARiential
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Devos"];

end;

soa_cat:inheritAchievements();

---------------------------------
-- Tazavesh, the Veiled Market --
---------------------------------

local tazavesh_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,L["Tazavesh, the Veiled Market"], {
	15190, -- Mischief!
	15178, -- Fake It 'Til You Make It
});

tazavesh_cat:addChild(L["Zo'phex the Sentinel"], {
	15109, -- Will It Blend
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Zo'phex"];

end;

tazavesh_cat:addChild(L["Mailroom Mayhem"], {
	15106, -- Quality Control
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["P.O.S.T. Master"];

end;

tazavesh_cat:addChild(L["Hylbrande"], {
	15179, -- This is Fine
	
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Hylbrande"];

end;

tazavesh_cat:inheritAchievements();

-----------------------
-- The Necrotic Wake --
-----------------------

local necrotic_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,L["The Necrotic Wake"]);

necrotic_cat:addChild(L["Amarth the Harvester"], {
	14295, -- Bountiful Harvest
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			(UnitName("target") == L["Amarth the Harvester"] or
			UnitName("target") == L["Bonefang"]);

end;	
 necrotic_cat:addChild(L["Surgeon Stitchflesh"], {
	14320, -- Surgeon's Supplies
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
		   (UnitName("target") == L["Surgeon Stitchflesh"] or
			UnitName("target") == L["Stitchflesh's Creation"]);

end;
 necrotic_cat:addChild(L["Nalthor the Rimebinder"], {
	14285, -- Ready for Raiding VII
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Nalthor the Rimebinder"];

end;

necrotic_cat:inheritAchievements();

---------------------
-- Theater of Pain --
---------------------

local top_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,L["Theater of Pain"]);


top_cat:addChild(L["An Affront of Challengers"], {
	14297, -- Three Choose One
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
		   (UnitName("target") == L["Dessia the Decapitator"] or 
			UnitName("target") == L["Paceran the Virulent"] or 
			UnitName("target") == L["Sathel the Accursed"]);

end;		

top_cat:addChild(L["Gorechop"], {
	14607, -- Fresh Meat!
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Gorechop"];

end;

top_cat:addChild(L["Mordretha, the Endless Empress"], {
	14533, -- Royal Rumble
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Mordretha"];

end;

top_cat:inheritAchievements();


-----------
-- Raids --
-----------


local category = AchieveIt.Categories:addCategory(CatID.Raids_Shadowlands, L["Glory"], {

	14355, -- Glory of the Nathria Raider
	15130, -- Glory of the Dominant Raider
	15491, -- Glory of the Sepulcher Raider
	15684, -- Fates of the Shadowlands Raids
	15685, -- Heroic: Fates of the Shadowlands Raids
	15687, -- Mythic: Fates of the Shadowlands Raids
});

--------------------
-- Castle Nathria --
--------------------

local nathria_cat = AchieveIt.Categories:addCategory(CatID.Raids_Shadowlands, AchieveIt.GetMapName(Zone.CastleNathria));

nathria_cat:addChild(L["Progress"], {
	14715, -- Castle Nathria
	14717, -- Heroic: Castle Nathria
	14718, -- Mythic Castle Nathria
	14356, -- Mythic: Shriekwing
	14357, -- Mythic: Huntsman Altimor
	14360, -- Mythic: Sun King's Salvation
	14359, -- Mythic: Artificer Xy'mox
	14358, -- Mythic: Hungering Destroyer
	14361, -- Mythic: Lady Inerva Darkvein
	14362, -- Mythic: The Council of Blood
	14363, -- Mythic: Sludgefist
	14364, -- Mythic: Stone Legion Generals
	14365, -- Mythic: Sire Denathrius
	15663, -- Fate of Nathria
	15665, -- Heroic: Fate of Nathria
	15664, -- Nythic: Fate of Nathria
}).locate = function()

	-- Castle Nathria raid map ids
	local nathria_raid_ids = {
	1735, -- Castle Nathria - The Grand Walk
	1744, -- Castle Nathria - The Purloined Stores
	1745, -- Castle Nathria - Halls of the Faithful
	1746, -- Castle Nathria - Pride's Prison
	1747, -- Castle Nathria - Nightcloak Sanctum
	1748, -- Castle Nathria - The Observatorium
	1750, -- Castle Nathria - Feast of Arrogance
	};
	return	AchieveIt:Contains(nathria_raid_ids,C_Map.GetBestMapForUnit("player")) 
end;

nathria_cat:addChild(L["Shriekwing"], {
	14293, -- Blind as a Bat
	14356, -- Mythic: Shriekwing
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Shriekwing"];

end;

nathria_cat:addChild(L["Huntsman Altimor"], {
	14523, -- Taking Care of Business
	14357, -- Mythic: Huntsman Altimor
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Huntsman Altimor"] or 
			UnitName("target") == L["Margore"] or 
			UnitName("target") == L["Bargast"] or 
			UnitName("target") == L["Hecutis"]);
			
end;

nathria_cat:addChild(L["Sun King's Salvation"], {
	14608, -- Burning Bright
	14360, -- Mythic: Sun King's Salvation
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			1746 == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Kael'thas Sunstrider"];

end;

nathria_cat:addChild(L["Artificer Xy'mox"], {
	14617, -- Private Stock
	14359, -- Mythic: Artificer Xy'mox
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Artificer Xy'mox"];

end;

nathria_cat:addChild(L["Hungering Destroyer"], {
	14376, -- Feed the Beast
	14358, -- Mythic: Hungering Destroyer
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Hungering Destroyer"];

end;

nathria_cat:addChild(L["Lady Inerva Darkvein"], {
	14524, -- I Don't Know What I Expected
	14361, -- Mythic: Lady Inerva Darkvein
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Lady Inerva Darkvein"];

end;

nathria_cat:addChild(L["The Council of Blood"], {
	14619, -- Pour Decision Making
	14362, -- Mythic: The Councin of Blood
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Baroness Frieda"] or 
			UnitName("target") == L["Castellan Niklaus"] or 
			UnitName("target") == L["Lord Stavros"]);

end;

nathria_cat:addChild(L["Sludgefist"], {
	14294, -- Dirtflap's Revenge
	14363, -- Mythic: Sludgefist
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Sludgefist"];

end;

nathria_cat:addChild(L["Stone Legion Generals"], {
	14525, -- Feed Me, Seymour!
	14364, -- Mythic: Stone Legion Generals
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			C_Map.GetBestMapForUnit("player") == 1747 and
		   (UnitName("target") == L["General Kaal"] or 
			UnitName("target") == L["General Grashaal"]);

end;

nathria_cat:addChild(L["Sire Denathrius"], {
	14610, -- Clear Conscience
	14365, -- Mythic: Sire Denathrius
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Sire Denathrius"] or 
			UnitName("target") == L["Remornia"]);

end;

nathria_cat:inheritAchievements();


----------------------------
-- Sanctumn of Domination --
----------------------------

local sanctum_cat = AchieveIt.Categories:addCategory(CatID.Raids_Shadowlands, AchieveIt.GetMapName(Zone.SanctumOfDomination));

sanctum_cat:addChild(L["Progress"], {
	15122, -- The Jailer's Vanguard
	15123, -- The Dark Bastille
	15124, -- The Shackles of Fate
	15125, -- The Reckoning
	15126, -- Sanctumn of Domination
	15127, -- Heroic: Sanctumn of Domination
	15128, -- Mythic: Sanctumn of Domination
	15112, -- Mythic: The Tarragrue
	15113, -- Mythic: The Eye of the Jailer
	15114, -- Mythic: The Nine
	15115, -- Mythic: Remnant of Ner'zhul
	15116, -- Mythic: Soulrender Dormazain
	15117, -- Mythic: Painsmith Raznal
	15118, -- Mythic: Guardian of the First Ones
	15119, -- Mythic: Fatescribe Roh-Kalo
	15120, -- Mythic: Kel'Thuzad
	15121, -- Mythic: Sylvanas Windrunner
	15667, -- Fate of Domination
	15668, -- Heroic: Fate of Domination
	15669, -- Mythic: Fate of Domination
}).locate = function()

	-- Sanctum of Domination raid map ids
	local sanctum_raid_ids = {
	1998, -- Sanctum of Domination - Tower of the Damned
	1999, -- Sanctum of Domination - Shadowsteel Foundry
	2000, -- Sanctum of Domination - The Torment Chambers
	2001, -- Sanctum of Domination - Crown of Gorgoa
	2002, -- Sanctum of Domination - Pinnacle of Domination	
	};
	
	return	AchieveIt:Contains(sanctum_raid_ids,C_Map.GetBestMapForUnit("player")) 
	
end;

sanctum_cat:addChild(L["The Tarragrue"], {
	14998, -- Name A Better Duo, I'll Wait 
	15112, -- Mythic: The Tarragrue
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["The Tarragrue"];

end;

sanctum_cat:addChild(L["The Eye of the Jailer"], {
	15065, -- Eye Wish You Were Here
	15113, -- Mythic: The Eye of the Jailer
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["The Eye of the Jailer"];

end;

sanctum_cat:addChild(L["The Nine"], {
	15003, -- To the Nines
	15114, -- Mythic: The Nine
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Kyra"] or 
			UnitName("target") == L["Signe"] or 
			UnitName("target") == L["Skyja"]);

end;

sanctum_cat:addChild(L["Remnant of Ner'zhul"], {
	15058, -- I Used to Bullseye Deeprun Rats Back Home
	15115, -- Mythic: Remnant of Ner'zhul
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Remnant of Ner'zhul"];

end;

sanctum_cat:addChild(L["Soulrender Dormazain"], {
	15105, -- Tormentor's Tango
	15116, -- Mythic: Soulrender Dormazain
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Soulrender Dormazain"];

end;

sanctum_cat:addChild(L["Painsmith Raznal"], {
	15131, -- Whack-A-Soul
	15117, -- Mythic: Painsmith Raznal
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Painsmith Raznal"];

end;

sanctum_cat:addChild(L["Guardian of the First Ones"], {
	15132, -- Knowledge is Power
	15118, -- Mythic: Guardian of the First Ones
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Guardian of the First Ones"];

end;

sanctum_cat:addChild(L["Fatescribe Roh-Kalo"], {
	15040, -- Flawless Fate
	15119, -- Mythic: Fatescribe Roh-Kalo
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Fatescribe Roh-Kalo"];

end;

sanctum_cat:addChild(L["Kel'Thuzad_SoD"], {
	15108, -- Together Forever
	15120, -- Mythic: Kel'Thuzad
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			2001 == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Kel'Thuzad_SoD"];

end;

sanctum_cat:addChild(L["Sylvanas Windrunner_SoD"], {
	15133, -- This World is a Prism
	15121, -- Mythic: Sylvanas Windrunner
}).locate = function()
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			C_Map.GetBestMapForUnit("player") == 2002 and
			UnitName("target") == L["Sylvanas Windrunner_SoD"];

end;
	
sanctum_cat:inheritAchievements();

local sotfo_cat = AchieveIt.Categories:addCategory(CatID.Raids_Shadowlands, L["Sepulcher of the First Ones"]);-- (Zone.SepulcherOfTheFirstOnes));

sotfo_cat:addChild(L["Progress"], {

	15492, -- Cornerstone of Creation
	15493, -- Ephemeral Plains
	15416, -- Domination's Grasp
	15418, -- The Grand Design
	15478, -- Heroic: Sepulcher of the First Ones
	15490, -- Mythic: Sepulcher of the First Ones
	15479, -- Mythic: Vigilant Guardian
	15482, -- Mythic: Dausegne
	15481, -- Mythic: Artificer Xy'mox
	15483, -- Mythic: Prototype Pantheon
	15484, -- Mythic: Lihuvim
	15480, -- Mythic: Skolex, the Insatiable Ravener
	15485, -- Mythic: Halondrus the Reclaimer
	15486, -- Mythic: Anduin Wrynn
	15487, -- Mythic: Lords of Dread
	15488, -- Mythic: Rygelon
	15489, -- Mythic: The Jailer
	15681, -- Fate of the Sepulcher
	15682, -- Heroic: Fate of the Sepulcher
	15683, -- Mythic: Fate of the Sepulcher
}).locate = function()

	-- Sepulcher of the First Ones raid map ids

local sotfo_raid_ids = {
	2047, -- Progenitor_Raid_A
	2048, -- Progenitor_Raid_B
	2049, -- Progenitor_Raid_C
	2050, -- Progenitor_Raid_Anduin
	2051, -- Progenitor_Raid_Jailer
	2052, -- Progenitor_Raid_E
	};
	
	return	AchieveIt:Contains(sotfo_raid_ids,C_Map.GetBestMapForUnit("player")) 
	
end;

sotfo_cat:addChild(L["Vigilant Guardian"], {
	15381, -- Power ON
	15479, -- Mythic: Vigilant Guardian
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Vigilant Guardian"];

end;

sotfo_cat:addChild(L["Dausegne, the Fallen Oracle"], {
	15397, -- Four Ring Circus
	15482, -- Mythic: Dausegne
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Dausegne"];

end;

sotfo_cat:addChild(L["Artificer Xy'mox"], {
	15398, -- Xy Never, Ever Marks the Spot
	15481, -- Mythic: Artificer Xy'mox
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Artificer Xy'mox"];

end;

sotfo_cat:addChild(L["Prototype Pantheon"], {
	15400, -- Where the Wild Corgis Are
	15483, -- Mythic: Prototype Pantheon
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Prototype of War"] or
			UnitName("target") == L["Prototype of Duty"] or
			UnitName("target") == L["Prototype of Renewal"] or
			UnitName("target") == L["Prototype of Absolution"];

end;

sotfo_cat:addChild(L["Lihuvim, Principal Architect"], {
	15419, -- The Protoform Matrix
	15484, -- Mythic: Lihuvim
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Lihuvim, Principal Architect"];

end;

sotfo_cat:addChild(L["Skolex, the Insatiable Ravener"], {
	15401, -- Wisdom Comes From The Desert
	15480, -- Mythic: Skolex, the Insatiable Ravener
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Skolex, the Insatiable Ravener"];

end;

sotfo_cat:addChild(L["Halondrus the Reclaimer"], {
	15386, -- Shimmering Secrets
	15485, -- Mythic: Halondrus the Reclaimer
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Halondrus the Reclaimer"];

end;

sotfo_cat:addChild(L["Anduin Wrynn"], {
	15399, -- Coming to Terms
	15486, -- Mythic: Anduin Wrynn
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Anduin Wrynn"];

end;



sotfo_cat:addChild(L["Lords of Dread"], {
	15315, -- Amidst Ourselves
	15487, -- Mythic: Lords of Dread
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Mal'Ganis"] or
			UnitName("target") == L["Kin'tessa"];

end;

sotfo_cat:addChild(L["Rygelon"], {
	15396, -- We Are All Made of Stars
	15488, -- Mythic: Rygelon
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Rygelon"];

end;

sotfo_cat:addChild(L["The Jailer"], {
	15494, -- Damnation Aviation
	15489, -- Mythic: The Jailer
}).locate = function() 
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			-- == C_Map.GetBestMapForUnit("player") and
			UnitName("target") == L["Zovaal"];

end;

sotfo_cat:inheritAchievements();










