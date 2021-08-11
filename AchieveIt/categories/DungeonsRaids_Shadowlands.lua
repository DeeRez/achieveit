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

AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,Difficulty.Normal, {
	14373, -- De Other Side
	14370, -- Halls of Atonement
	14371, -- Mists of Tirna Scithe
	14369, -- Plaguefall
	14197, -- Sanguine Depths
	14326, -- Spires of Ascension
	14366, -- The Necrotic Wake
	14372, -- Theater of Pain
	
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands,Difficulty.Heroic, {
	14408, -- De Other Side
	14410, -- Halls of Atonement
	14412, -- Mists of Tirna Scithe
	14414, -- Plaguefall
	14198, -- Sanguine Depths
	14324, -- Spires of Ascension
	14367, -- The Necrotic Wake
	14416, -- Theater of Pain
	
});

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
	
});

-------------------
-- De Other Side --
-------------------

local dos_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, AchieveIt.GetMapName(Zone.DeOtherSide));


dos_cat:addChild(L["Hakkar the Soulflayer"], {
	14354, -- Highly Communicable
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Hakkar the Soulflayer"];

end;		

dos_cat:addChild(L["The Manastorms"], {
	14374, -- Couples Therapy
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
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

local hoa_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, AchieveIt.GetMapName(Zone.HallsOfAtonement));

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

local mists_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, AchieveIt.GetMapName(Zone.MistsOfTirnaScithe), {
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

local plaguefall_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, AchieveIt.GetMapName(Zone.Plaguefall), {
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

local sanguine_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, AchieveIt.GetMapName(Zone.SanguineDepths), {
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

local tazavesh_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, AchieveIt.GetMapName(Zone.Tazavesh), {
	15190, -- Mischief!
	15178, -- Fake It 'Til You Make It
});

tazavesh_cat:addChild(L["Zo'phex the Sentinel"], {
	15109, -- Will It Blend
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Zo'phex the Sentinel"];

end;

tazavesh_cat:addChild(L["Mailroom Mayhem"], {
	15106, -- Quality Control
});

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

local necrotic_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, AchieveIt.GetMapName(Zone.TheNecroticWake));

necrotic_cat:addChild(L["Amarth the Harvester"], {
	14295, -- Bountiful Harvest
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Amarth the Harvester"];

end;	
 necrotic_cat:addChild(L["Surgeon Stitchflesh"], {
	14320, -- Surgeon's Supplies
}).locate = function() 
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Surgeon Stitchflesh"];

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

local top_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Shadowlands, AchieveIt.GetMapName(Zone.TheaterOfPain));


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
			UnitName("target") == L["Mordretha, the Endless Empress"];

end;

top_cat:inheritAchievements();


-----------
-- Raids --
-----------


local category = AchieveIt.Categories:addCategory(CatID.Raids_Shadowlands, L["Glory"], {

	14355, -- Glory of the Nathria Raider
	15130, -- Glory of the Dominant Raider
});

--------------------
-- Castle Nathria --
--------------------

local nathria_cat = AchieveIt.Categories:addCategory(CatID.Raids_Shadowlands, AchieveIt.GetMapName(Zone.CastleNathria));

nathria_cat:addChild(L["Progress"], {
	14715, -- Castle Nathria
	14717, -- Heroic: Castle Nathria
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
});

nathria_cat:addChild(L["Shriekwing"], {
	14293, -- Blind as a Bat
	14356, -- Mythic: Shriekwing
});

nathria_cat:addChild(L["Huntsman Altimor"], {
	14523, -- Taking Care of Business
	14357, -- Mythic: Huntsman Altimor
});

nathria_cat:addChild(L["Sun King's Salvation"], {
	14608, -- Burning Bright
	14360, -- Mythic: Sun King's Salvation
});

nathria_cat:addChild(L["Artificer Xy'mox"], {
	14617, -- Private Stock
	14359, -- Mythic: Artificer Xy'mox
});

nathria_cat:addChild(L["Hungering Destroyer"], {
	14376, -- Feed the Beast
	14358, -- Mythic: Hungering Destroyer
});

nathria_cat:addChild(L["Lady Inerva Darkvein"], {
	14524, -- I Don't Know What I Expected
	14361, -- Mythic: Lady Inerva Darkvein
});

nathria_cat:addChild(L["The Council of Blood"], {
	14619, -- Pour Decision Making
	14362, -- Mythic: The Councin of Blood
});

nathria_cat:addChild(L["Sludgefist"], {
	14294, -- Dirtflap's Revenge
	14363, -- Mythic: Sludgefist
});

nathria_cat:addChild(L["Stone Legion Generals"], {
	14525, -- Feed Me, Seymour!
	14364, -- Mythic: Stone Legion Generals
});

nathria_cat:addChild(L["Sire Denathrius"], {
	14610, -- Clear Conscience
	14365, -- Mythic: Sire Denathrius
});

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
});

sanctum_cat:addChild(L["The Tarragrue"], {
	14998, -- Name A Better Duo, I'll Wait 
	15112, -- Mythic: The Tarragrue
});

sanctum_cat:addChild(L["The Eye of the Jailer"], {
	15065, -- Eye Wish You Were Here
	15113, -- Mythic: The Eye of the Jailer
});

sanctum_cat:addChild(L["The Nine"], {
	15003, -- To the Nines
	15114, -- Mythic: The Nine
});

sanctum_cat:addChild(L["Remnant of Ner'zhul"], {
	15058, -- I Used to Bullseye Deeprun Rats Back Home
	15115, -- Mythic: Remnant of Ner'zhul
});

sanctum_cat:addChild(L["Soulrender Dormazain"], {
	15105, -- Tormentor's Tango
	15116, -- Mythic: Soulrender Dormazain
});

sanctum_cat:addChild(L["Painsmith Raznal"], {
	15131, -- Whack-A-Soul
	15117, -- Mythic: Painsmith Raznal
});

sanctum_cat:addChild(L["Guardian of the First Ones"], {
	15132, -- Knowledge is Power
	15118, -- Mythic: Guardian of the First Ones
});

sanctum_cat:addChild(L["Fatescribe Roh-Kalo"], {
	15040, -- Flawless Fate
	15119, -- Mythic: Fatescribe Roh-Kalo
});

sanctum_cat:addChild(L["Kel'Thuzad"], {
	15108, -- Together Forever
	15120, -- Mythic: Kel'Thuzad
});

sanctum_cat:addChild(L["Sylvanas Windrunner"], {
	15133, -- This World is a Prism
	15121, -- Mythic: Sylvanas Windrunner
});
	
sanctum_cat:inheritAchievements();












