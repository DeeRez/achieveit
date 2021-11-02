----------------------------------------
-- Dungeons & Raids - Draenor Dungeon --
----------------------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local wod_dungeon_id = {
573, -- Bloodmaul Slag Mines
574, -- Shadowmoon Burial Grounds - Crypt of the Ancients
575, -- Shadowmoon Burial Grounds - Altar of Shadow	Dungeon
576, -- Shadowmoon Burial Grounds - Edge of Reality	Dungeon
593, --	Auchindoun
595, -- Iron Docks
601, -- Skyreach - Lower Quarter
602, -- Skyreach - Grand Spire
606, -- Grimrail Depot - Train Depot
607, -- Grimrail Depot - Rafters
608, -- Grimrail Depot - Rear Train Cars
609, -- Grimrail Depot - Forward Train Cars
616, -- Upper Blackrock Spire - Dragonspire Hall
617, -- Upper Blackrock Spire - The Rookery
618, -- Upper Blackrock Spire - Hall of Blackhand
620, -- The Everbloom - The Everbloom
621, -- The Everbloom - The Overlook
}

local highmaul_raid_ids = {
	610, -- Highmaul - Highmaul	
	611, -- Highmaul - Gladiator's Rest
	612, -- Highmaul - The Coliseum
	613, -- Highmaul - Chamber of Nullification
	614, -- Highmaul - Imperator's Rise	Dungeon
	615, -- Highmaul - Throne of the Imperator
}

local brf_raid_ids = {
	596, -- Blackrock Foundry - The Black Forge
	597, -- Blackrock Foundry - Slagworks
	598, -- Blackrock Foundry - The Workshop
	599, -- Blackrock Foundry - Iron Assembly
	600, -- Blackrock Foundry - The Crucible
}

local hfc_raid_ids = {
	661, -- Hellfire Citadel - Hellfire Citadel
	662, -- Hellfire Citadel - Hellfire Antechamber
	663, -- Hellfire Citadel - Hellfire Passage
	664, -- Hellfire Citadel - Pits of Mannoroth
	665, -- Hellfire Citadel - Court of Blood
	666, -- Hellfire Citadel - Grommash's Torment
	667, -- Hellfire Citadel - The Felborne Breach
	668, -- Hellfire Citadel - Halls of the Sargerei
	669, -- Hellfire Citadel - Destructor's Rise
	670, -- Hellfire Citadel - The Black Gate
}
	

	
AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Glory"], {
	9396,	-- Glory of the Draenor Hero
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, Difficulty.Normal, {
	9039,	-- Auchindoun
	9037,	-- Bloodmaul Slag Mines
	9043,	-- Grimrail Depot
	9038,	-- Iron Docks
	9041,	-- Shadowmoon Burial Grounds
	8843,	-- Skyreach
	9044,	-- The Everbloom
	9042,	-- Upper Blackrock Spire
}).locate = function()
	return 	AchieveIt:Contains(wod_dungeon_id,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isDungeon(); 
end;

AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, Difficulty.Heroic, {
	9049,	-- Heroic: Auchindoun
	9046,	-- Heroic: Bloodmaul Slag Mines
	9052,	-- Heroic: Grimrail Depot
	9047,	-- Heroic: Iron Docks
	9054,	-- Heroic: Shadowmoon Burial Grounds
	8844,	-- Heroic: Skyreach
	9053,	-- Heroic: The Everbloom
	9055,	-- Heroic: Upper Blackrock Spire
}).locate = function()
	return 	AchieveIt:Contains(wod_dungeon_id,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isHeroicDungeon(); -- and it is a heroic version
end;

AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, Difficulty.Mythic, {
	10080,	-- Mythic: Auchindoun
	10076,	-- Mythic: Bloodmaul Slag Mines
	10082,	-- Mythic: Grimrail Depot
	10079,	-- Mythic: Iron Docks
	10084,	-- Mythic: Shadowmoon Burial Grounds
	10081,	-- Mythic: Skyreach
	10083,	-- Mythic: The Everbloom
	10085,	-- Mythic: Upper Blackrock Spire
}).locate = function()
	return 	AchieveIt:Contains(wod_dungeon_id,C_Map.GetBestMapForUnit("player")) and 
			AchieveIt.difficulty.isMythicDungeon(); -- and it is a heroic version
end;

-------------------------
-- Auchindoun Category --
-------------------------

local auchindoun_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor,L["Auchindoun"], {
	9039,	-- Auchindoun
	9049,	-- Heroic: Auchindoun
	10080,	-- Mythic: Auchindoun
});

auchindoun_cat:addChild(L["Soulbinder Nyami"], {
	9023,	-- ...They All Fall Down
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Soulbinder Nyami"];
end;

auchindoun_cat:addChild(L["Azzakel"], {
	9551,	-- Demon's Souls
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Azzakel"];
end;

auchindoun_cat:addChild(L["Teron'gor"], {
	9552,	-- No Tag-backs!
}).locate = function()
	return 	(AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Teron'gor"];
end;

auchindoun_cat:inheritAchievements();

-----------------------------------
-- Bloodmaul Slag Mines Category --
-----------------------------------

local bsm_cat= AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor,L["Bloodmaul Slag Mines"], {
	9037,	-- Bloodmaul Slag Mines
	9046,	-- Heroic: Bloodmaul Slag Mines
	10076,	-- Mythic: Bloodmaul Slag Mines
	9005,	-- Come With Me If You Want to Live
});

bsm_cat:addChild(L["Magmolatus"], {
	8993,	-- A Gift of Earth and Fire
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon()) and
			UnitName("target") == L["Magmolatus"];
end;

bsm_cat:addChild(L["Gug'rokk"], {
	9008,	-- Is Draenor on Fire?
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon()) and
			UnitName("target") == L["Gug'rokk"];
end;

bsm_cat:inheritAchievements();

-----------------------------
-- Grimrail Depot Category --
-----------------------------

local grimrail_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor,L["Grimrail Depot"], {
	9043,	-- Grimrail Depot
	9052,	-- Heroic: Grimrail Depot
	10082,	-- Mythic: Grimrail Depot
});

grimrail_cat:addChild(L["Rocketspark and Borka"], {
	9024,	-- This Is Why We Can't Have Nice Things
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			(UnitName("target") == L["Railmaster Rocketspark"] or 
			UnitName("target") == L["Borka the Brute"]);
end;

grimrail_cat:addChild(L["Nitrogg Thundertower"], {
	9007,	-- No Ticket
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Nitrogg Thundertower"];
end;

grimrail_cat:inheritAchievements();

-------------------------
-- Iron Docks Category --
-------------------------

local irondocks_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor,L["Iron Docks"], {
	9038,	-- Iron Docks
	9047,	-- Heroic: Iron Docks
	10079,	-- Mythic: Iron Docks
	9081,	-- Expert Timing
});

irondocks_cat:addChild(L["Fleshrender Nok'gar"], {
	9083,	-- Militaristic, Expansionist
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			(UnitName("target") == L["Fleshrender Nok'gar"] or
			UnitName("target") == L["Dreadfang"]);
end;

irondocks_cat:addChild(L["Skulloc"], {
	9082,	-- Take Cover!
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or
			AchieveIt.difficulty.isMythicDungeon())	and
	       (UnitName("target") == L["Skulloc"] or
			UnitName("target") == L["Koramar"] or
			UnitName("target") == L["Zoggosh"]);
end;

irondocks_cat:inheritAchievements();

----------------------------------------
-- Shadowmoon Burial Grounds Category --
----------------------------------------

local sbg_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor,L["Shadowmoon Burial Grounds"], {
	9041,	-- Shadowmoon Burial Grounds
	9054,	-- Heroic: Shadowmoon Burial Grounds
	10084,	-- Mythic: Shadowmoon Burial Grounds
});

sbg_cat:addChild(L["Sadana Bloodfury"], {
	9018,	-- What's Your Sign?
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Sadana Bloodfury"];
end;

sbg_cat:addChild(L["Bonemaw"], {
	9025,	-- Icky Ichors
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Bonemaw"];
end;

sbg_cat:addChild(L["Ner'zhul"], {
	9026,	-- Souls of the Lost
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Ner'zhul"];
end;

sbg_cat:inheritAchievements();

-----------------------
-- Skyreach Category --
-----------------------

local skyreach_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor,L["Skyreach"], {
	8843,	-- Skyreach
	8844,	-- Heroic: Skyreach
	10081,	-- Mythic: Skyreach
	9034,	-- Magnify... Enhance
});

skyreach_cat:addChild(L["Ranjit"], {
	9033,	-- Ready for Raiding IV
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Ranjit"];
end;

skyreach_cat:addChild(L["Rukhran"], {
	9035,	-- I Saw Solis
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Rukhran"];
end;

skyreach_cat:addChild(L["High Sage Viryx"], {
	9036,	-- Monomania
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["High Sage Viryx"];
end;

skyreach_cat:inheritAchievements();

----------------------------
-- The Everbloom Category --
----------------------------

local everbloom_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor,L["The Everbloom"], {
	9044,	-- The Everbloom
	9053,	-- Heroic: The Everbloom
	10083,	-- Mythic: The Everbloom
});

everbloom_cat:addChild(L["Witherbark"], {
	9017,	-- Water Management
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or AchieveIt.difficulty.isMythicDungeon())	and
	UnitName("target") == L["Witherbark"];
end;

everbloom_cat:addChild(L["Archmage Sol"], {
	9493,	-- They Burn, Burn, Burn
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Archmage Sol"];
end;

everbloom_cat:addChild(L["Yalnu"], {
	9223,	-- Weed Whacker
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Yalnu"];
end;

everbloom_cat:inheritAchievements();

------------------------------------
-- Upper Blackrock Spire Category --
------------------------------------

local ubrs_cat = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor,L["Upper Blackrock Spire"], {
	9042,	-- Upper Blackrock Spire
	9055,	-- Heroic: Upper Blackrock Spire
	10085,	-- Mythic: Upper Blackrock Spire
	9058,	-- Leeeeeeeeeeeeeroy...?
});

ubrs_cat:addChild(L["Orebender Gor'ashan"], {
	9045,	-- Magnets, How Do They Work?
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Orebender Gor'ashan"];
end;

ubrs_cat:addChild(L["Ragewing the Untamed"], {
	9056,	-- Bridge Over Troubled Fire
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Ragewing the Untamed"];
end;

ubrs_cat:addChild(L["Warlord Zaela"], {
	9057,	-- Dragonmaw? More Like Dragonfall!
}).locate = function()
	return  (AchieveIt.difficulty.isHeroicDungeon() or 
			AchieveIt.difficulty.isMythicDungeon())	and
			UnitName("target") == L["Warlord Zaela"];
end;

ubrs_cat:inheritAchievements();

-------------------------------------
-- Dungeons & Raids - Draenor Raid --
-------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Draenor, L["Glory"], {
	8985,	-- Glory of the Draenor Raider
	10149,	-- Glory of the Hellfire Raider
});

local category = AchieveIt.Categories:addCategory(CatID.Raids_Draenor, L["World Bosses"], {
	9423,	-- Goliaths of Gorgrond
	9425,	-- So Grossly Incandescent
	10071,	-- The Legion Will NOT Conquer All
});

-----------------------
-- Highmaul Category --
-----------------------

local highmaul_cat = AchieveIt.Categories:addCategory(CatID.Raids_Draenor,L["Highmaul"]);

highmaul_cat:addChild(L["Glory"], {
	8985,	-- Glory of the Draenor Raider
});

highmaul_cat:addChild(L["Progress"], {
	8986,	-- The Walled City
	8987,	-- Arcane Sanctum
	8988,	-- Imperator's Fall
	8949,	-- Mythic: Kargath Bladefist
	8960,	-- Mythic: The Butcher
	8961,	-- Mythic: Tectus
	8962,	-- Mythic: Brackenspore
	8963,	-- Mythic: Twin Ogron
	8964,	-- Mythic: Ko'ragh
	8965,	-- Mythic: Imperator's Fall
}).locate = function()
	return AchieveIt:Contains(highmaul_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

highmaul_cat:addChild(L["Kargath Bladefist"], {
	8949,	-- Mythic: Kargath Bladefist
	8948,	-- Flame On!
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Kargath Bladefist"];
end;

highmaul_cat:addChild(L["The Butcher"], {
	8960,	-- Mythic: The Butcher
	8947,	-- Hurry Up, Maggot!
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["The Butcher"];
end;

highmaul_cat:addChild(L["Tectus"], {
	8961,	-- Mythic: Tectus
	8974,	-- More Like Wrecked-us
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Tectus"];
end;

highmaul_cat:addChild(L["Brackenspore"], {
	8962,	-- Mythic: Brackenspore
	8975,	-- A Fungus Among Us
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Brackenspore"];
end;

highmaul_cat:addChild(L["Twin Ogron"], {
	8963,	-- Mythic: Twin Ogron
	8958,	-- Brothers in Arms
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Phemos"] or
			UnitName("target") == L["Pol"]);
end;

highmaul_cat:addChild(L["Ko'ragh"], {
	8964,	-- Mythic: Ko'ragh
	8976,	-- Pair Annihilation
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Ko'ragh"];
end;

highmaul_cat:addChild(L["Imperator Mar'gok"], {
	8988,	-- Imperator's Fall
	8965,	-- Mythic: Imperator's Fall
	8977,	-- Lineage of Power
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Imperator Mar'gok"];
end;

highmaul_cat:inheritAchievements();


--------------------------------
-- Blackrock Foundry Category --
--------------------------------

local brf_cat = AchieveIt.Categories:addCategory(CatID.Raids_Draenor,L["Blackrock Foundry"]);

brf_cat:addChild(L["Glory"], {
	8985,	-- Glory of the Draenor Raider
});

brf_cat:addChild(L["Progress"], {
	8989,	-- Slagworks
	8990,	-- Black Forge
	8991,	-- Iron Assembly
	8992,	-- Blackhand's Crucible
	8966,	-- Mythic: Gruul
	8967,	-- Mythic: Oregorger
	8968,	-- Mythic: Hans'gar and Franzok
	8956,	-- Mythic: Beastlord Darmac
	8932,	-- Mythic: Flamebender Ka'graz
	8969,	-- Mythic: Operator Thogar
	8970,	-- Mythic: Blast Furnace
	8971,	-- Mythic: Kromog
	8972,	-- Mythic: Iron Maidens
	8973,	-- Mythic: Blackhand's Crucible
}).locate = function()
	return AchieveIt:Contains(brf_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

brf_cat:addChild(L["Gruul"], {
	8966,	-- Mythic: Gruul
	8978,	-- The Iron Price
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Gruul"];
end;

brf_cat:addChild(L["Oregorger"], {
	8967,	-- Mythic: Oregorger
	8979,	-- He Shoots, He Ores
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Oregorger"];
end;

brf_cat:addChild(L["Hans'gar and Franzok"], {
	8968,	-- Mythic: Hans'gar and Franzok
	8980,	-- Stamp Stamp Revolution
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Hans'gar"] or
			UnitName("target") == L["Franzok"]);
end;

brf_cat:addChild(L["Beastlord Darmac"], {
	8956,	-- Mythic: Beastlord Darmac
	8981,	-- Fain Would Lie Down
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Beastlord Darmac"] or
			UnitName("target") == L["Cruelfang"] or
			UnitName("target") == L["Dreadwing"] or
			UnitName("target") == L["Faultline"] or
			UnitName("target") == L["Ironcrusher"]);
end;

brf_cat:addChild(L["Flamebender Ka'graz"], {
	8932,	-- Mythic: Flamebender Ka'graz
	8929,	-- The Steel Has Been Brought
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Aknor Steelbringer"] or
			UnitName("target") == L["Flamebender Ka'graz"]);
end;

brf_cat:addChild(L["Operator Thogar"], {
	8969,	-- Mythic: Operator Thogar
	8982,	-- There's Always a Bigger Train
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Operator Thogar"];
end;

brf_cat:addChild(L["The Blast Furnace"], {
	8970,	-- Mythic: Blast Furnace
	8930,	-- Ya, We've Got Time...
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Heart of the Mountain"];
end;

brf_cat:addChild(L["Kromog"], {
	8971,	-- Mythic: Kromog
	8983,	-- Would You Give Me a Hand?
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Kromog"];
end;

brf_cat:addChild(L["Iron Maidens"], {
	8972,	-- Mythic: Iron Maidens
	8984,	-- Be Quick or Be Dead
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Admiral Gar'an"] or
			UnitName("target") == L["Enforcer Sorka"] or
			UnitName("target") == L["Marak the Bloodied"]);
end;

brf_cat:addChild(L["Blackhand"], {
	8992,	-- Blackhand's Crucible
	8973,	-- Mythic: Blackhand's Crucible
	8952,	-- Ashes, Ashes...
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Blackhand"];
end;

brf_cat:inheritAchievements();


-------------------------------
-- Hellfire Citadel Category --
-------------------------------

local hfc_cat = AchieveIt.Categories:addCategory(CatID.Raids_Draenor,L["Hellfire Citadel"]);

hfc_cat:addChild(L["Glory"], {
	10149,	-- Glory of the Hellfire Raider
});

hfc_cat:addChild(L["Progress"], {
	10023,	-- Hellbreach
	10024,	-- Halls Of Blood
	10025,	-- Bastion Of Shadows
	10020,	-- Destrutor's Rise
	10019,	-- The Black Gate
	10027,	-- Mythic: Hellfire Assault
	10032,	-- Mythic: Iron Reaver
	10033,	-- Mythic: Kormrok
	10034,	-- Mythic: Hellfire Council
	10035,	-- Mythic: Kilrogg Deadeye
	10253,	-- Mythic: Gorefiend
	10037,	-- Mythic: Shadow-Lord Iskar
	10040,	-- Mythic: Socrethar the Eternal
	10041,	-- Mythic: Tyrant Velhari
	10038,	-- Mythic: Fel Lord Zakuun
	10039,	-- Mythic: Xhul'horac
	10042,	-- Mythic: Mannoroth
	10043,	-- Mythic: Archimonde
}).locate = function()
	return AchieveIt:Contains(hfc_raid_ids,C_Map.GetBestMapForUnit("player"));
end;

hfc_cat:addChild(L["Hellfire Assault"], {
	10027,	-- Mythic: Hellfire Assault
	10026,	-- Nearly Indestructible
}).locate = function()
	return	 not AchieveIt.difficulty.isRaidFinder() and
				C_Map.GetBestMapForUnit("player") == 661 and
				(UnitName("target") == L["Siegemaster Mar'tak"] or
				UnitName("target") == L["Contracted Engineer"] or
				UnitName("target") == L["Gorebound Felcaster"] or
				UnitName("target") == L["Iron Dragoon"]);
end;

hfc_cat:addChild(L["Iron Reaver"], {
	10032,	-- Mythic: Iron Reaver
	10057,	-- Turning the Tide
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
				C_Map.GetBestMapForUnit("player") == 661 and
				UnitName("target") == L["Iron Reaver"];
end;

hfc_cat:addChild(L["Kormrok"], {
	10033,	-- Mythic: Kormrok
	10013,	-- Waves Came Crashing Down All Around
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Kormrok"];
end;

hfc_cat:addChild(L["Hellfire Council"], {
	10034,	-- Mythic: Hellfire Council
	10054,	-- Don't Fear The Reaper
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			(UnitName("target") == L["Blademaster Jubei'thos"] or
			UnitName("target") == L["Dia Darkwhisper"] or
			UnitName("target") == L["Gurtogg Bloodboil"]);
end;

hfc_cat:addChild(L["Kilrogg Deadeye"], {
	10035,	-- Mythic: Kilrogg Deadeye
	9972,	-- A Race Against Slime
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Kilrogg Deadeye"];
end;

hfc_cat:addChild(L["Gorefiend"], {
	10253,	-- Mythic: Gorefiend
	9979,	-- Get In My belly!
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Gorefiend"];
end;

hfc_cat:addChild(L["Shadow-Lord Iskar"], {
	10037,	-- Mythic: Shadow-Lord Iskar
	9988,	-- Pro Toss
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Shadow-Lord Iskar"];
end;

hfc_cat:addChild(L["Socrethar the Eternal"], {
	10040,	-- Mythic: Socrethar the Eternal
	10086,	-- I'm a Soul Man
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Soulbound Construct"];
end;

hfc_cat:addChild(L["Tyrant Velhari"], {
	10041,	-- Mythic: Tyrant Velhari
	9989,	-- Non-Lethal Enforcer
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Tyrant Velhari"];
end;

hfc_cat:addChild(L["Fel Lord Zakuun"], {
	10038,	-- Mythic: Fel Lord Zakuun
	10012,	-- This Land Was Green and Good Until...
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Fel Lord Zakuun"];
end;

hfc_cat:addChild(L["Xhul'horac"], {
	10039,	-- Mythic: Xhul'horac
	10087,	-- You Gotta Keep 'em Separated
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Xhul'horac"];
end;

hfc_cat:addChild(L["Mannoroth_HFC"], {
	10042,	-- Mythic: Mannoroth
	10030,	-- Bad Manner(oth)
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Mannoroth_HFC"];
end;

hfc_cat:addChild(L["Archimonde_HFC"], {
	10043,	-- Mythic: Archimonde
	10073,	-- Echoes of Doomfire
}).locate = function()
	return	not AchieveIt.difficulty.isRaidFinder() and
			UnitName("target") == L["Archimonde_HFC"];
end;

hfc_cat:inheritAchievements();
