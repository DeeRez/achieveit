--------------------------------------------
-- Dungeons & Raids: Battle for Azeroth
--------------------------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

--------------------
-- Glory Category --
--------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, L["Glory"], {
	12812,	-- Glory of the Wartorn Hero
});

--------------------------------------------
-- Dungeons: Battle for Azeroth
--------------------------------------------

AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, Difficulty.Normal, {
	12824, -- Atal'Dazar
	12831, -- Freehold
	12835, -- Shrine of the Storm
	12844, -- The MOTHERLODE!!
	12504, -- The Temple of Sethraliss
	12840, -- Tol Dagor
	12500, -- Underrot
	12483, -- Waycrest Manor
});

AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, Difficulty.Heroic, {
	12825, -- Heroic: Atal'Dazar
	12832, -- Heroic: Freehold
	12837, -- Heroic: Shrine of the Storm
	12845, -- Heroic: The MOTHERLODE!!
	12505, -- Heroic: The Temple of Sethraliss
	12841, -- Heroic: Tol Dagor
	12501, -- Heroic: Underrot
	12484, -- Heroic: Waycrest Manor
});

AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, Difficulty.Mythic, {
	12826, -- Mythic: Atal'Dazar
	12833, -- Mythic: Freehold
	12838, -- Mythic: Shrine of the Storm
	12847, -- Siege of Boralus
	12846, -- Mythic: The MOTHERLODE!!
	12506, -- Mythic: The Temple of Sethraliss
	12842, -- Mythic: Tol Dagor
	12502, -- Mythic: Underrot
	12488, -- Mythic: Waycrest Manor
	13075, -- Battle for Azeroth Keymaster
	13448, -- Battle for Azeroth Keystone Conqueror: Season Two
	13449, -- Battle for Azeroth Keystone Master: Season Two

});

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.AtalDazar), {
	12270, -- Bringing Hexy Back
	12824, -- Atal'Dazar
});

category:addChild(L["Priestess Alun'za"], {
	12272, -- Gold Fever
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Priestess Alun'za"];

end;

category:addChild(L["Yazma"], {
	12273, -- It's Lit!
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Yazma"];

end;
	
category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.Freehold), {

	12550, -- Pecking Order
	12831, -- Freehold
});

category:addChild(L["Skycap'n Kragg"], {
	12548, -- I'm in Charge Now!
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Skycap'n Kragg"];

end;

category:addChild(L["Harlan Sweete"], {
	12998, -- That Sweete Booty
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Harlan Sweete"];

end;

category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.Kings_Rest), {

	12722, -- It Belongs in a Mausoleum!
	12848, -- Kings' Rest
});

category:addChild(L["Mchimba the Embalmer"], {
	12721, -- Wrap God
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Mchimba the Embalmer"];

end;

category:addChild(L["King Dazar"], {
	12723, -- How to Keep a Mummy
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["King Dazar"];

end;

category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.Mechagon), {
	
	13624, -- Keep DPS-ing and Nobody Explodes

});


category:addChild(L["King Gobbamak"], {
	13706, -- Stay Positive
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["King Gobbamak"];

end;

category:addChild(L["Gunker"], {
	13698, -- Clean Up On Aisle Mechagon
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Gunker"];

end;

category:addChild(L["Tussle Tonks"], {
	13723, -- M.C., Hammered
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
		   (UnitName("target") == L["The Platinun Pummeler"] or
			UnitName("target") == L["Gnomercy 4.U."]);

end;

category:addChild(L["Head Machinist Sparkflux"], {
	13545, -- Go Ahead, Make My Daisy
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Head Machinist Sparkflux"];

end;

category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.Shrine_of_the_Storm), {
	12600, -- Breath of the Shrine
	12835, -- Shrine of the Storm
});

category:addChild(L["Lord Stormsong"], {
	12601, -- The Void Lies Sleeping
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Lord Stormsong"];

end;

category:addChild(L["Vol'zith the Whisperer"], {
	12602, -- Trust No One
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Vol'zith the Whisperer"];

end;

category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.Siege_of_Boralus), {

	12847, -- Siege of Boralus
});

category:addChild(L["Dread Captain Lockwood"], {
	12727, -- Stand by Me
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Dread Captain Lockwood"];

end;

category:addChild(L["Viq'Goth"], {
	12726, -- A Fish Out of Water
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Viq'Goth"];

end;

category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.The_Temple_of_Sethraliss), {
	12503, -- Snake Eyes
	12504, -- The Temple of Sethraliss
});

category:addChild(L["Merektha"], {
	12507, -- Snake Eater
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Merektha"];

end;

category:addChild(L["Avatar of Sethraliss"], {
	12508, -- Good Night, Sweet Prince
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Avatar of Sethraliss"];

end;

category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.The_Motherlode), {
	12844, -- The MOTHERLODE!!
});

category:addChild(L["Coin-Operated Crowd Pummeler"], {
	12855, -- Pitch Invasion
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Coin-Operated Crowd Pummeler"];

end;

category:addChild(L["Mogul Razdunk"], {
	12854, -- Ready for Raiding VI
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Mogul Razdunk"];

end;

category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.Underrot), {
	12500, -- Underrot
});

category:addChild(L["Elder Leaxa"], {
	12498, -- Taint Nobody Got Time For That
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Elder Leaxa"];

end;

category:addChild(L["Sporecaller Zanchu"], {
	12549, -- Not a Fun Guy
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Sporecaller Zanchu"];

end;

category:addChild(L["Unbound Abomination"], {
	12499, -- Sporely Alive
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Unbound Abomination"];

end;

category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.Tol_Dagor), {
	12840, -- Tol Dagor
});

category:addChild(L["Knight Captain Valyri"], {
	12457, -- Remix to Ignition
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Knight Captain Valyri"];

end;

category:addChild(L["Overseer Korgus"], {
	12462, -- Shot Through the Heart
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Overseer Korgus"];

end;

category:inheritAchievements();

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_BfA, AchieveIt.GetMapName(Zone.Waycrest_Manor), {
	12489, -- Losing My Profession
	12483, -- Waycrest Manor
});

category:addChild(L["Soulbound Goliath"], {
	12495, -- Run Wild Like a Man On Fire
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Soulbound Goliath"];

end;

category:addChild(L["Gorak Tul"], {
	12490, -- Alchemical Romance
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	AchieveIt.difficulty.isMythicDungeon() and
			UnitName("target") == L["Gorak Tul"];

end;

category:inheritAchievements();

--------------------------------------------
-- Raids: Battle for Azeroth
--------------------------------------------

AchieveIt.Categories:addCategory(CatID.Raids_BfA, L["World Bosses"], {
	12587, -- Unbound Monstrosities	
});

AchieveIt.Categories:addCategory(CatID.Raids_BfA, L["Glory"], {
	12806, -- Glory Of The Uldir Raider
	13315, -- Glory of the Dazar'alor Raider	
	13687, -- Glory Of The Eternal Raider
	14146, -- Glory of the Ny'alotha Raider
});

local uldir_cat = AchieveIt.Categories:addCategory(CatID.Raids_BfA, AchieveIt.GetMapName(Zone.Uldir));

uldir_cat:addChild(L["Progress"], {-- Uldir: Halls of Containment (Taloc, MOTHER, Zek'voz)
	12521, -- Halls of Containment
	12522, -- Crimson Descent
	12523, -- Heart of Corruption
	12524, -- Mythic: Taloc
	12526, -- Mythic: MOTHER
	12527, -- Mythic: Zek'voz
	12530, -- Mythic: Fetid Devourer
	12529, -- Mythic: Vectis
	12531, -- Mythic: Zul
	12532, -- Mythic: Mythrax the Unraveler
	12533, -- Mythic: G'huun
});

uldir_cat:addChild(L["Taloc"], {
	12937, -- Elevator Music
	12524, -- Mythic: Taloc
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Taloc"];

end;

uldir_cat:addChild(L["MOTHER"], {
	12938, -- Parental Controls
	12526, -- Mythic: MOTHER
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["MOTHER"];

end;

uldir_cat:addChild(L["Zek'voz"], {
	12828, -- What's in the Box?
	12527, -- Mythic: Zek'voz
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Zek'voz"];

end;

uldir_cat:addChild(L["Fetid Devourer"], {
	12823, -- Thrash Mouth - All Stars
	12530, -- Mythic: Fetid Devourer
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Fetid Devourer"];

end;

uldir_cat:addChild(L["Vectis"], {
	12772, -- Now We Got Bad Blood
	12529, -- Mythic: Vectis
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Vectis"];

end;

uldir_cat:addChild(L["Zul"], {
	12830, -- Edgelords
	12531, -- Mythic: Zul
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Zul"];

end;

uldir_cat:addChild(L["Mythrax the Unraveler"], {
	12836, -- Existential Crisis
	12532, -- Mythic: Mythrax the Unraveler
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Mythrax the Unraveler"];

end;

uldir_cat:addChild(L["G'huun"], {
	12551, -- Double Dribble
	12533, -- Mythic: G'huun
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["G'huun"];

end;

uldir_cat:inheritAchievements();


local dazar_cat = AchieveIt.Categories:addCategory(CatID.Raids_BfA, AchieveIt.GetMapName(Zone.BattleOfDazarAlor));

dazar_cat:addChild(L["Progress"],{
	{ id = 13286, faction = AchieveIt.Factions.ALLIANCE},	-- Siege of Dazar'alor
	{ id = 13287, faction = AchieveIt.Factions.ALLIANCE},	-- Empire's Fall
	{ id = 13288, faction = AchieveIt.Factions.ALLIANCE},	-- Might of the Alliance
	{ id = 13289, faction = AchieveIt.Factions.HORDE},	-- Defense of Dazar'alor
	{ id = 13290, faction = AchieveIt.Factions.HORDE},	-- Death's Bargain
	{ id = 13291, faction = AchieveIt.Factions.HORDE},	-- Victory or Death
	13292,	-- Mythic: Champion of the Light
	13293,	-- Mythic: Grong
	{ id = 13295, faction = AchieveIt.Factions.HORDE},	-- Mythic: Jadefire Masters
	{ id = 13298, faction = AchieveIt.Factions.ALLIANCE},	-- Mythic: Jadefire Masters
	13299,	-- Mythic: Opulence
	13300,	-- Mythic: Conclave of the Chosen
	13311,	-- Mythic: King Rastakhan
	13312,	-- Mythic: Mekkatorque
	13313,	-- Mythic: Stormwall Blockade
	13314,	-- Mythic: Lady Jaina Proudmoore
	
});

dazar_cat:addChild(L["Champion of the Light"],{
	13316,	-- Can I Get a Hek Hek Hek Yeah?
	13292,	-- Mythic: Champion of the Light
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Frida Ironbellows"] or
			UnitName("target") == L["Ra'wani Kanae"]);

end;

dazar_cat:addChild(L["Grong"], {
	13383,	-- Barrel of Monkeys
	13293,	-- Mythic: Grong
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Grong"];

end;

dazar_cat:addChild(L["Jadefire Masters"], {
	13431,	-- Hidden Dragon
	{ id = 13295, faction = AchieveIt.Factions.HORDE},	-- Mythic: Jadefire Masters
	{ id = 13298, faction = AchieveIt.Factions.ALLIANCE},	-- Mythic: Jadefire Masters
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Ma'ra Grimfang"] or 
			UnitName("target") == L["Anathos Firecaller"] or 
			UnitName("target") == L["Mestrah"] or 
			UnitName("target") == L["Manceroy Flamefist"]);

end;


dazar_cat:addChild(L["Opulence"], {
	13345,	-- Praise the Sunflower
	13299,	-- Mythic: Opulence
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Opulence"];

end;

dazar_cat:addChild(L["Conclave of the Chosen"], {
	13325,	-- Walk the Dinosaur
	13300,	-- Mythic: Conclave of the Chosen
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Pa'ku's Aspect"] or 
			UnitName("target") == L["Gonk's Aspect"] or 
			UnitName("target") == L["Kimbul's Aspect"] or 
			UnitName("target") == L["Akunda's Aspect"]);

end;

dazar_cat:addChild(L["King Rastakhan"], {
	13425,	-- We Got Spirit, How About You?
	13311,	-- Mythic: King Rastakhan
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["King Rastakhan"];

end;

dazar_cat:addChild(L["High Tinker Mechatorque"], {
	13401,	-- I Got Next!
	13312,	-- Mythic: Mekkatorque
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["High Tinker Mechatorque"];

end;

dazar_cat:addChild(L["Stormwall Blockade"], {
	13430,	-- De Lurker Be'loa
	13313,	-- Mythic: Stormwall Blockade
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Brother Joseph"] or 
			UnitName("target") == L["Sister Katherine"] or 
			UnitName("target") == L["Laminaria"]);

end;

dazar_cat:addChild(L["Lady Jaina Proudmoore"], {
	13410,	-- Snow Fun Allowed
	13314,	-- Mythic: Lady Jaina Proudmoore
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Lady Jaina Proudmoore"];

end;


dazar_cat:inheritAchievements();

local crucible_cat = AchieveIt.Categories:addCategory(CatID.Raids_BfA, AchieveIt.GetMapName(Zone.CrucibleOfStorms));


crucible_cat:addChild(L["Progress"],{
	13414,	-- Crucible of Storms
	13416,	-- Mythic: The Restless Cabal
	13417,	-- Mythic: Uu'nat, Harbinger of the Void
});

crucible_cat:addChild(L["The Restless Cabal"], {
	13501, -- Gotta Bounce
	13416,	-- Mythic: The Restless Cabal
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
		   (UnitName("target") == L["Fa'thuulthe Feared"] or
			UnitName("target") == L["Zaxasj the Speaker"]);

end;

crucible_cat:addChild(L["Uu'nat, Harbinger of the Void"], {
	13506, -- A Good Eye-dea
	13417,	-- Mythic: Uu'nat, Harbinger of the Void
}).locate = function()

	-- in dungeon
	-- is mythic mode
	
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Uu'nat"];

end;

crucible_cat:inheritAchievements();

local palace_cat = AchieveIt.Categories:addCategory(CatID.Raids_BfA, AchieveIt.GetMapName(Zone.TheEternalPalace),
{
	13726, -- Mythic: Abyssal Commander Sivara
	13728, -- Mythic: Blackwater Behemoth
	13729, -- Mythic: Lady Ashvane
	13730, -- Mythic: Orgozoa
	13733, -- Mythic: Queen Azshara
	13727, -- Mythic: Radiance of Azshara
	13731, -- Mythic: The Queen's Court
	13732, -- Mythic: Za'qul

	13724, -- A Smack of Jellyfish
	13719, -- Depths of the Devoted
	13767, -- Fun Run
	13633, -- If It Pleases the Court
	13628, -- Intro to Marine Biology
	13716, -- Lactose Intolerant
	13629, -- Simple Geometry
	13768, -- The Best of Us
	13725, -- The Circle of Stars
	13718, -- The Grand Reception
	13684, -- You and What Army?

});

local waking_cat = AchieveIt.Categories:addCategory(CatID.Raids_BfA, AchieveIt.GetMapName(Zone.TheWakingCity),
{
	14054, -- Mythic: Carapace of N'Zoth
	14045, -- Mythic: Dark Inquisitor Xanesh
	14049, -- Mythic: Drest'agath
	14052, -- Mythic: Il'gynoth, Corruption Reborn
	14043, -- Mythic: Maut
	14055, -- Mythic: N'Zoth the Corruptor
	14051, -- Mythic: Ra-den the Despoiled
	14048, -- Mythic: Shad'har the Insatiable
	14046, -- Mythic: The Hivemind
	14044, -- Mythic: The Prophet Skitra
	14050, -- Mythic: Vexiona
	14041, -- Mythic: Wrathion, the Black Emperor

	14038, -- Bloody Mess
	14024, -- Buzzer Beater
	14147, -- Cleansing Treatment
	14195, -- Gift of Flesh
	14194, -- Halls of Devotion
	13999, -- How? Isn't it Obelisk?
	14148, -- It's Not A Cult
	14008, -- Mana Sponge
	14037, -- Phase 3: Prophet
	14023, -- Realizing Your Potential
	14019, -- Smoke Test
	14026, -- Temper Tantrum
	14196, -- The Waking Dream
	14139, -- Total Annihilation
	14193, -- Vision of Destiny
	13990, -- You Can Pet the Dog, But...


});