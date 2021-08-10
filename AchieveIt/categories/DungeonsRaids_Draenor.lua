----------------------------------------
-- Dungeons & Raids - Draenor Dungeon --
----------------------------------------

local AchieveIt = AchieveIt;
local CatID = AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone
local Difficulty = AchieveItConstants.DifficultyNames
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");


AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Glory"], {
	9396,	-- Glory of the Draenor Hero
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, _G["DUNGEONS"], {
	9037,	-- Bloodmaul Slag Mines
	9038,	-- Iron Docks
	9039,	-- Auchindoun
	8843,	-- Skyreach
	9042,	-- Upper Blackrock Spire
	9044,	-- The Everbloom
	9043,	-- Grimrail Depot
	9041,	-- Shadowmoon Burial Grounds
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Heroic Dungeons"], {
	9046,	-- Heroic: Bloodmaul Slag Mines
	9047,	-- Heroic: Iron Docks
	9049,	-- Heroic: Auchindoun
	8844,	-- Heroic: Skyreach
	9055,	-- Heroic: Upper Blackrock Spire
	9053,	-- Heroic: The Everbloom
	9052,	-- Heroic: Grimrail Depot
	9054,	-- Heroic: Shadowmoon Burial Grounds
});

AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Mythic Dungeons"], {
	10076,	-- Mythic: Bloodmaul Slag Mines
	10079,	-- Mythic: Iron Docks
	10080,	-- Mythic: Auchindoun
	10081,	-- Mythic: Skyreach
	10085,	-- Mythic: Upper Blackrock Spire
	10083,	-- Mythic: The Everbloom
	10082,	-- Mythic: Grimrail Depot
	10084,	-- Mythic: Shadowmoon Burial Grounds
});

-----------------------------------
-- Bloodmaul Slag Mines Category --
-----------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Bloodmaul Slag Mines"], {
	9037,	-- Bloodmaul Slag Mines
	9046,	-- Heroic: Bloodmaul Slag Mines
	10076,	-- Mythic: Bloodmaul Slag Mines
});

category:addChild(L["Gug'rokk"], {
	9008,	-- Is Draenor on Fire?
	9005,	-- Come With Me If You Want to Live
});

category:addChild(L["Magmolatus"], {
	8993,	-- A Gift of Earth and Fire
});

category:inheritAchievements();


-------------------------
-- Iron Docks Category --
-------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Iron Docks"], {
	9038,	-- Iron Docks
	9047,	-- Heroic: Iron Docks
	10079,	-- Mythic: Iron Docks
	9081,	-- Expert Timing
});

category:addChild(L["Fleshrender Nok'gar"], {
	9083,	-- Militaristic, Expansionist
});

category:addChild(L["Skulloc"], {
	9082,	-- Take Cover!
});

category:inheritAchievements();


-------------------------
-- Auchindoun Category --
-------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Auchindoun"], {
	9039,	-- Auchindoun
	9049,	-- Heroic: Auchindoun
	10080,	-- Mythic: Auchindoun
});

category:addChild(L["Soulbinder Nyami"], {
	9023,	-- ...They All Fall Down
});

category:addChild(L["Azzakel"], {
	9551,	-- Demon's Souls
});

category:addChild(L["Teron'gor"], {
	9552,	-- No Tag-backs!
});

category:inheritAchievements();


-----------------------
-- Skyreach Category --
-----------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Skyreach"], {
	8843,	-- Skyreach
	8844,	-- Heroic: Skyreach
	10081,	-- Mythic: Skyreach
	9034,	-- Magnify... Enhance
});

category:addChild(L["Ranjit"], {
	9033,	-- Ready for Raiding IV
});

category:addChild(L["Rukhran"], {
	9035,	-- I Saw Solis
});

category:addChild(L["High Sage Viryx"], {
	9036,	-- Monomania
});

category:inheritAchievements();


------------------------------------
-- Upper Blackrock Spire Category --
------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Upper Blackrock Spire"], {
	9042,	-- Upper Blackrock Spire
	9055,	-- Heroic: Upper Blackrock Spire
	10085,	-- Mythic: Upper Blackrock Spire
	9058,	-- Leeeeeeeeeeeeeroy...?
});

category:addChild(L["Orebender Gor'ashan"], {
	9045,	-- Magnets, How Do They Work?
});

category:addChild(L["Ragewing the Untamed"], {
	9056,	-- Bridge Over Troubled Fire
});

category:addChild(L["Warlord Zaela"], {
	9057,	-- Dragonmaw? More Like Dragonfall!
});

category:inheritAchievements();


----------------------------
-- The Everbloom Category --
----------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["The Everbloom"], {
	9044,	-- The Everbloom
	9053,	-- Heroic: The Everbloom
	10083,	-- Mythic: The Everbloom
});

category:addChild(L["Archmage Sol"], {
	9493,	-- They Burn, Burn, Burn
});

category:addChild(L["Yalnu"], {
	9223,	-- Weed Whacker
});

category:addChild(L["Witherbark"], {
	9017,	-- Water Management
});

category:inheritAchievements();


-----------------------------
-- Grimrail Depot Category --
-----------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Grimrail Depot"], {
	9043,	-- Grimrail Depot
	9052,	-- Heroic: Grimrail Depot
	10082,	-- Mythic: Grimrail Depot
});

category:addChild(L["Railmaster Rocketspark"], {
	9024,	-- This Is Why We Can't Have Nice Things
});

category:addChild(L["Nitrogg Thundertower"], {
	9007,	-- No Ticket
});

category:inheritAchievements();


----------------------------------------
-- Shadowmoon Burial Grounds Category --
----------------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Dungeons_Draenor, L["Shadowmoon Burial Grounds"], {
	9041,	-- Shadowmoon Burial Grounds
	9054,	-- Heroic: Shadowmoon Burial Grounds
	10084,	-- Mythic: Shadowmoon Burial Grounds
});

category:addChild(L["Sadana Bloodfury"], {
	9018,	-- What's Your Sign?
});

category:addChild(L["Bonemaw"], {
	9025,	-- Icky Ichors
});

category:addChild(L["Ner'zhul"], {
	9026,	-- Souls of the Lost
});

category:inheritAchievements();


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

local category = AchieveIt.Categories:addCategory(CatID.Raids_Draenor, L["Highmaul"]);

category:addChild(L["Glory"], {
	8985,	-- Glory of the Draenor Raider
});

category:addChild(L["Progress"], {
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
});

category:addChild(L["Kargath Bladefist"], {
	8949,	-- Mythic: Kargath Bladefist
	8948,	-- Flame On!
});

category:addChild(L["The Butcher"], {
	8960,	-- Mythic: The Butcher
	8947,	-- Hurry Up, Maggot!
});

category:addChild(L["Tectus"], {

	8961,	-- Mythic: Tectus
	8974,	-- More Like Wrecked-us

});

category:addChild(L["Brackenspore"], {
	8962,	-- Mythic: Brackenspore
	8975,	-- A Fungus Among Us
});

category:addChild(L["Twin Ogron"], {
	8963,	-- Mythic: Twin Ogron
	8958,	-- Brothers in Arms
});

category:addChild(L["Ko'ragh"], {
	8964,	-- Mythic: Ko'ragh
	8976,	-- Pair Annihilation
});

category:addChild(L["Imperator Mar'gok"], {
	8988,	-- Imperator's Fall
	8965,	-- Mythic: Imperator's Fall
	8977,	-- Lineage of Power
});

category:inheritAchievements();


--------------------------------
-- Blackrock Foundry Category --
--------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Draenor, L["Blackrock Foundry"]);

category:addChild(L["Glory"], {
	8985,	-- Glory of the Draenor Raider
});

category:addChild(L["Progress"], {
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
});

category:addChild(L["Gruul"], {
	8966,	-- Mythic: Gruul
	8978,	-- The Iron Price
});

category:addChild(L["Oregorger"], {
	8967,	-- Mythic: Oregorger
	8979,	-- He Shoots, He Ores
});

category:addChild(L["Hans'gar and Franzok"], {
	8968,	-- Mythic: Hans'gar and Franzok
	8980,	-- Stamp Stamp Revolution
});

category:addChild(L["Beastlord Darmac"], {
	8956,	-- Mythic: Beastlord Darmac
	8981,	-- Fain Would Lie Down
});

category:addChild(L["Flamebender Ka'graz"], {
	8932,	-- Mythic: Flamebender Ka'graz
	8929,	-- The Steel Has Been Brought
});

category:addChild(L["Operator Thogar"], {
	8969,	-- Mythic: Operator Thogar
	8982,	-- There's Always a Bigger Train
});

category:addChild(L["Blast Furnace"], {
	8970,	-- Mythic: Blast Furnace
	8930,	-- Ya, We've Got Time...
});

category:addChild(L["Kromog"], {
	8971,	-- Mythic: Kromog
	8983,	-- Would You Give Me a Hand?
});

category:addChild(L["Iron Maidens"], {
	8972,	-- Mythic: Iron Maidens
	8984,	-- Be Quick or Be Dead
});

category:addChild(L["Blackhand"], {
	8992,	-- Blackhand's Crucible
	8973,	-- Mythic: Blackhand's Crucible
	8952,	-- Ashes, Ashes...
});

category:inheritAchievements();


-------------------------------
-- Hellfire Citadel Category --
-------------------------------

local category = AchieveIt.Categories:addCategory(CatID.Raids_Draenor, L["Hellfire Citadel"]);

category:addChild(L["Glory"], {
	10149,	-- Glory of the Hellfire Raider
});

category:addChild(L["Progress"], {
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
});

category:addChild(L["Hellfire Assault"], {
	10027,	-- Mythic: Hellfire Assault
	10026,	-- Nearly Indestructible
});

category:addChild(L["Iron Reaver"], {
	10032,	-- Mythic: Iron Reaver
	10057,	-- Turning the Tide
});

category:addChild(L["Kormrok"], {
	10033,	-- Mythic: Kormrok
	10013,	-- Waves Came Crashing Down All Around
});

category:addChild(L["Hellfire Council"], {
	10034,	-- Mythic: Hellfire Council
	10054,	-- Don't Fear The Reaper
});

category:addChild(L["Kilrogg Deadeye"], {
	10035,	-- Mythic: Kilrogg Deadeye
	9972,	-- A Race Against Slime
});

category:addChild(L["Gorefiend"], {
	10253,	-- Mythic: Gorefiend
	9979,	-- Get In My belly!
});

category:addChild(L["Shadow-Lord Iskar"], {
	10037,	-- Mythic: Shadow-Lord Iskar
	9988,	-- Pro Toss
});

category:addChild(L["Socrethar the Eternal"], {
	10040,	-- Mythic: Socrethar the Eternal
	10086,	-- I'm a Soul Man
});

category:addChild(L["Tyrant Velhari"], {
	10041,	-- Mythic: Tyrant Velhari
	9989,	-- Non-Lethal Enforcer
});

category:addChild(L["Fel Lord Zakuun"], {
	10038,	-- Mythic: Fel Lord Zakuun
	10012,	-- This Land Was Green and Good Until...
});

category:addChild(L["Xhul'horac"], {
	10039,	-- Mythic: Xhul'horac
	10087,	-- You Gotta Keep 'em Separated
});

category:addChild(L["Mannoroth"], {
	10042,	-- Mythic: Mannoroth
	10030,	-- Bad Manner(oth)
});

category:addChild(L["Archimonde"], {
	10043,	-- Mythic: Archimonde
	10073,	-- Echoes of Doomfire
});

category:inheritAchievements();
