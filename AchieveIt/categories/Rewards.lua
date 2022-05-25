local _ADDON_NAME, ADDON = ... -- Pulls back the Addon-Local Variables and store them locally.

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local act = AchieveItConstants.ActivityType
local fac =  AchieveIt.Factions

local titleAchievements	= {
	6742, -- 60 Exalted Reputations
	12864, -- 80 Exalted Reputations
	12866, -- 100 Exalted Reputations
	978, -- 3000 Quests Completed
	{ id = 870, faction = fac.NEUTRAL, activity = act.PvP}, -- 100000 Honorable Kills
	{ id = 5363, faction = fac.NEUTRAL, activity = act.PvP}, -- 250000 Honorable Kills
	1516, -- Accomplished Angler
	{ id = 948, faction = AchieveIt.Factions.ALLIANCE}, -- Ambassador of the Alliance
	{ id = 762, faction = AchieveIt.Factions.HORDE}, -- Ambassador of the Horde
	12104, -- And We're All Out of Mana Buns
	871, -- Avast Ye, Admiral!
	5827, -- Avengers of Hyjal
	11761, -- Azeroth's Next Top Model
	15654, -- Back from the Beyond
	4583, -- Bane of the Fallen King
	{ id = 230, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Battlemaster
	{ id = 1175, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Battlemaster
	{ id = 5351, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Blood Guard
	1683, -- Brewmaster
	{ id = 5338, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Centurion
	-- { id = 12959, activity = act.PvP}, -- Challenger: Battle for Azeroth Season 1
	{ id = 5353, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Champion
	1658, -- Champion of the Frozen Wastes
	{ id = 9080, faction = AchieveIt.Factions.HORDE}, -- Choppin' Even More Logs
	{ id = 9078, faction = AchieveIt.Factions.ALLIANCE}, -- Choppin' Even More Logs
	9077, -- Choppin' Some More Logs
	11941, -- Chromie Homie
	{ id = 5340, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Commander
	{ id = 12604, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Conqueror of Azeroth
	{ id = 12605, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Conqueror of Azeroth
	{ id = 8679, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Conqueror of Orgrimmar
	{ id = 5331, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Corporal
	10354, -- Crashin' Thrashin' Commander
	8397, -- Crazy for Cats
	8301, -- Deadly Pet Brawler
	5506, -- Defender of a Shattered World
	6177, -- Destroyer's End
	--[[ { id = 12945, activity = act.PvP}, -- Dread Gladiator: Battle for Azeroth Season 1
	{ id = 12962, activity = act.PvP}, -- Duelist: Battle for Azeroth Season 1 ]]
	{ id = 2817, faction = AchieveIt.Factions.ALLIANCE}, -- Exalted Argent Champion of the Alliance
	{ id = 2816, faction = AchieveIt.Factions.HORDE}, -- Exalted Argent Champion of the Horde
	{ id = 2760, faction = AchieveIt.Factions.ALLIANCE}, -- Exalted Champion of Darnassus
	{ id = 2762, faction = AchieveIt.Factions.ALLIANCE}, -- Exalted Champion of Gnomeregan
	{ id = 2763, faction = AchieveIt.Factions.ALLIANCE}, -- Exalted Champion of Ironforge
	{ id = 2765, faction = AchieveIt.Factions.HORDE}, -- Exalted Champion of Orgrimmar
	{ id = 2766, faction = AchieveIt.Factions.HORDE}, -- Exalted Champion of Sen'jin
	{ id = 2767, faction = AchieveIt.Factions.HORDE}, -- Exalted Champion of Silvermoon City
	{ id = 2764, faction = AchieveIt.Factions.ALLIANCE}, -- Exalted Champion of Stormwind
	{ id = 2761, faction = AchieveIt.Factions.ALLIANCE}, -- Exalted Champion of the Exodar
	{ id = 2769, faction = AchieveIt.Factions.HORDE}, -- Exalted Champion of the Undercity
	{ id = 2768, faction = AchieveIt.Factions.HORDE}, -- Exalted Champion of Thunder Bluff
	13134, -- Expedition Leader
	10694, -- Fabulous
	{ id = 5357, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Field Marshal
	9924, -- Field Photographer
	{ id = 8721, activity = act.PvP}, -- Fire-Watcher
	{ id = 5349, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- First Sergeant
	1693, -- Fool For Love
	1793, -- For the Children
	9094, -- Garrison Architect
	{ id = 5355, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- General
	-- { id = 12961, activity = act.PvP}, -- Gladiator: Battle for Azeroth Season 1
	11763, -- Glory of the Tomb Raider
	{ id = 5343, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Grand Marshal
	{ id = 5346, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Grunt
	953, -- Guardian of Cenarius
	1563, -- Hail to the Chef
	1656, -- Hallowed Be Thy Name
	3316, -- Herald of the Titans
	{ id = 6942, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Hero of the Alliance
	{ id = 6941, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Hero of the Horde
	5123, -- Heroic: Al'Akir
	8067, -- Heroic: Lei Shen
	6116, -- Heroic: Madness of Deathwing
	5116, -- Heroic: Nefarian
	5803, -- Heroic: Ragnaros
	6734, -- Heroic: Sha of Fear
	5121, -- Heroic: Sinestra
	6724, -- Heroic: Will of the Emperor
	{ id = 5356, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- High Warlord
	{ id = 12909, activity = act.PvP}, -- Honor Level 100
	{ id = 12913, activity = act.PvP}, -- Honor Level 200
	{ id = 12901, activity = act.PvP}, -- Honor Level 25
	{ id = 12915, activity = act.PvP}, -- Honor Level 300
	{ id = 12904, activity = act.PvP}, -- Honor Level 50
	{ id = 12907, activity = act.PvP}, -- Honor Level 80
	4854, -- I Had It in My Hand
	2336, -- Insane in the Membrane
	7284, -- Is Another Man's Treasure
	4856, -- It Belongs in a Museum!
	13555, -- Junkyard Tinkmaster
	{ id = 8052, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Khan
	{ id = 8055, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Khan
	{ id = 5335, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Knight
	{ id = 5337, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Knight-Captain
	{ id = 5359, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Knight-Champion
	{ id = 5336, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Knight-Lieutenant
	9058, -- Leeeeeeeeeeeeeroy...?
	{ id = 5352, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Legionnaire
	{ id = 8680, faction = AchieveIt.Factions.HORDE}, -- Liberator of Orgrimmar
	{ id = 5339, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Lieutenant Commander
	{ id = 5354, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Lieutenant General
	11232, -- Lock, Stock and Two Smoking Goblins
	4477, -- Looking For Many
	-- 14140, -- Mad World
	9072, -- Mantle of the Talon King
	{ id = 5341, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Marshall
	{ id = 14175, activity = act.PvP}, -- Master of Deepwind Gorge	
	{ id = 12861, activity = act.PvP}, -- Master of Duels
	7306, -- Master of Pandaren Cooking
	{ id = 12412, activity = act.PvP}, -- Master of Seething Shore
	10164, -- Master of the Seas
	{ id = 5333, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Master Sergeant
	1691, -- Merrymaker
	10043, -- Mythic: Archimonde
	12002, -- Mythic: Argus the Unmaker
	8973, -- Mythic: Blackhand's Crucible
	12533, -- Mythic: G'huun
	8482, -- Mythic: Garrosh Hellscream
	10850, -- Mythic: Gul'dan
	8965, -- Mythic: Imperator's Fall
	11781, -- Mythic: Kil'jaeden
	13314, -- Mythic: Lady Jaina Proudmoore
	14055, -- Mythic: N'Zoth the Corruptor
	13733, -- Mythic: Queen Azshara
	14365, -- Mythic: Sire Denathrius Title Reward: Sinbreaker
	15121, -- Mythic: Sylvanas Windrunner  Title Reward: Breaker of Chains
	10827, -- Mythic: Xavius
	{ id = 9517, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Nemesis: Death Stalker
	{ id = 9509, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Nemesis: Draenei Destroyer
	{ id = 9510, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Nemesis: Dwarfstalker
	{ id = 9511, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Nemesis: Gnomebane
	{ id = 9520, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Nemesis: Huojin's Fall
	{ id = 9518, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Nemesis: Killer of Kezan
	{ id = 9512, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Nemesis: Manslayer
	{ id = 9519, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Nemesis: Orcslayer
	{ id = 9513, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Nemesis: Scourge of the Kaldorei
	{ id = 9516, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Nemesis: Slayer of Sin'dorei
	{ id = 9514, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Nemesis: Terror of the Tushui
	{ id = 9521, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Nemesis: The Butcher
	{ id = 9522, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Nemesis: Troll Hunter
	{ id = 9515, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Nemesis: Worgen Hunter
	10609, -- No Stone Unturned
	2798, -- Noble Gardener
	12399, -- Observed
	12083, -- Paragon of Argus
	-- 13779, -- Phenomenal Cosmic Power
	3478, -- Pilgrim
	10334, -- Predator
	12439, -- Priority Mail
	{ id = 5330, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Private
	9464, -- Professional Draenor Master
	9577, -- Proving Yourself: Endless Damage (Wave 30)
	9589, -- Proving Yourself: Endless Healer (Wave 30)
	9583, -- Proving Yourself: Endless Tank (Wave 30)
	-- { id = 12960, activity = act.PvP}, -- Rival: Battle for Azeroth Season 1
	{ id = 10072, faction = AchieveIt.Factions.ALLIANCE}, -- Rumble in the Jungle
	{ id = 10265, faction = AchieveIt.Factions.HORDE}, -- Rumble in the Jungle
	9619, -- Savage Hero
	{ id = 6874, faction = AchieveIt.Factions.ALLIANCE}, -- Scenaturday
	{ id = 7509, faction = AchieveIt.Factions.HORDE}, -- Scenaturday
	5767, -- Scourer of the Eternal Sands
	{ id = 5345, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Scout
	{ id = 5348, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Senior Sergeant
	{ id = 5332, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Sergeant
	{ id = 5347, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Sergeant
	{ id = 5334, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Sergeant Major
	{ id = 14191, activity = act.PvP}, -- Servant of N'Zoth
	{ id = 5350, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Stone Guard
	8121, -- Stormbreaker
	6607, -- Taming Azeroth
	14277, -- The Accuser's Avowed
	945, -- The Argent Champion
	4598, -- The Ashen Verdict
	-- 11387, -- The Chosen
	{ id = 714, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- The Conqueror
	{ id = 942, faction = AchieveIt.Factions.ALLIANCE}, -- The Diplomat
	{ id = 943, faction = AchieveIt.Factions.HORDE}, -- The Diplomat
	{ id = 1039, faction = AchieveIt.Factions.HORDE}, -- The Flame Keeper
	{ id = 1038, faction = AchieveIt.Factions.ALLIANCE}, -- The Flame Warden
	{ id = 13924, faction = AchieveIt.Factions.HORDE}, -- The Fourth War
	4530, -- The Frozen Throne (10 player)
	4597, -- The Frozen Throne (25 player)
	{ id = 907, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- The Justicar
	9725, -- The Last of Us
	4584, -- The Light of Dawn
	7520, -- The Loremaster
	14682, -- The Party Herald Title Reward: The Party Herald
	7612, -- The Seat of Knowledge
	7479, -- The Shado-Master
	{ id = 9540, faction = AchieveIt.Factions.ALLIANCE}, -- The Stable Master
	{ id = 9706, faction = AchieveIt.Factions.HORDE}, -- The Stable Master
	2051, -- The Twilight Zone (10 player)
	2054, -- The Twilight Zone (25 player)
	913, -- To Honor One's Elders
	6926, -- Tranquil Master
	14568, -- Twisting Corridors: Layer 6
	13638, -- Undersea Usurper
	46, -- Universal Explorer
	{ id = 5328, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Veteran of the Alliance
	{ id = 5325, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Veteran of the Horde
	5879, -- Veteran of the Molten Front
	8023, -- Wakener
	{ id = 5329, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Warbound Veteran of the Alliance
	{ id = 5326, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Warbringer of the Horde
	{ id = 5342, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Warlord
	{ id = 9508, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Warlord of Draenor
	{ id = 9738, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Warlord of Draenor
	4855, -- What was Briefly Yours is Now Mine
	6590, -- World Safari
	{ id = 13925, faction = AchieveIt.Factions.ALLIANCE}, -- The Fourth War

	
	--[[ Unobtinable/obsolete achievements. Add some way to filter in the future, maybe.
	
	
	{ id = 13647, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Battle for Azeroth Season 3
	{ id = 13630, faction = fac.NEUTRAL, activity = act.PvP}, -- Notorious Gladiator: Battle for Azeroth Season 3 
	14144, -- Battle for Azeroth Keystone Conqueror: Season Four
	{ id = 13967, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Battle for Azeroth Season 4
	{ id = 13957, faction = fac.NEUTRAL, activity = act.PvP}, -- Corrupted Gladiator: Battle for Azeroth Season 4
	{ id = 13199, faction = fac.NEUTRAL, activity = act.PvP}, -- Combatant: Battle for Azeroth Season 1 
	3117, -- Realm First! Death's Demise
	{ id = 13639, faction = fac.NEUTRAL, activity = act.PvP}, -- Combatant: Battle for Azeroth Season 3
	9618, -- The Iron Invasion
	{ id = 12034, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Legion Season 5
	{ id = 13641, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Battle for Azeroth Season 3
	{ id = 12035, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Legion Season 5
	{ id = 13676, faction = fac.NEUTRAL, activity = act.PvP}, -- Elite: Battle for Azeroth Season 3 
	9016, -- Breaker of the Black Harvest
	{ id = 13212, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Battle for Azeroth Season 2
	{ id = 13634, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Battle for Azeroth Season 3
	{ id = 13989, faction = fac.NEUTRAL, activity = act.PvP}, -- Elite: Battle for Azeroth Season 4
	{ id = 13642, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Battle for Azeroth Season 3
	456, -- Realm First! Obsidian Slayer
	--{ id = 13200, faction = fac.NEUTRAL, activity = act.PvP}, -- Sinister Gladiator: Battle for Azeroth Season 2
	8903, -- Mistwalker
	{ id = 12168, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Legion Season 7
	{ id = 11012, faction = fac.NEUTRAL, activity = act.PvP}, -- Vindictive Gladiator: Legion Season 1
	4078, -- Realm First! Grand Crusader
	{ id = 13192, faction = AchieveIt.Factions.HORDE}, -- Brawler for Azeroth
	13465, -- Elite: Battle for Azeroth Season 1
	{ id = 13191, faction = AchieveIt.Factions.ALLIANCE}, -- Brawler for Azeroth
	3259, -- Realm First! Celestial Defender
	{ id = 13204, faction = fac.NEUTRAL, activity = act.PvP}, -- Combatant: Battle for Azeroth Season 2
	{ id = 11011, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Legion Season 1
	{ id = 8392, activity = act.PvP}, -- Tournament Glory 2013
	1402, -- Realm First! Conqueror of Naxxramas
	1400, -- Realm First! Magic Seeker
	{ id = 8646, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Season 14
	{ id = 9239, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Warlords Season 1
	{ id = 8669, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Season 15
	{ id = 12185, faction = fac.NEUTRAL, activity = act.PvP}, -- Demonic Gladiator: Legion Season 7
	{ id = 11038, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Legion Season 3
	{ id = 12043, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Legion Season 5
	{ id = 11014, faction = fac.NEUTRAL, activity = act.PvP}, -- Fearless Gladiator: Legion Season 2
	{ id = 12010, faction = fac.NEUTRAL, activity = act.PvP}, -- Fierce Gladiator: Legion Season 5
	{ id = 13205, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Battle for Azeroth Season 2
	{ id = 13959, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Battle for Azeroth Season 4
	{ id = 8645, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Season 14
	{ id = 8644, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Season 14
	{ id = 13963, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Battle for Azeroth Season 4
	{ id = 12179, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Legion Season 6
	{ id = 9566, faction = AchieveIt.Factions.HORDE}, -- Victory in Hillsbrad
	{ id = 9729, faction = AchieveIt.Factions.ALLIANCE}, -- Victory in Hillsbrad
	{ id = 12039, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Legion Season 5
	{ id = 13964, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Battle for Azeroth Season 4
	{ id = 11058, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Legion Season 4
	{ id = 8668, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Season 15
	{ id = 10111, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Warlords Season 3
	{ id = 13451, faction = fac.NEUTRAL, activity = act.PvP}, -- Elite: Battle for Azeroth Season 2
	{ id = 11062, faction = fac.NEUTRAL, activity = act.PvP}, -- Ferocious Gladiator: Legion Season 4
	{ id = 11013, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Legion Season 2
	{ id = 11061, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Legion Season 4
	{ id = 8667, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Season 15
	{ id = 10098, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Warlords Season 2
	{ id = 12191, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Legion Season 7
	{ id = 11053, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Legion Season 4
	{ id = 8666, faction = fac.NEUTRAL, activity = act.PvP}, -- Prideful Gladiator: Season 15
	{ id = 9232, faction = fac.NEUTRAL, activity = act.PvP}, -- Primal Gladiator: Warlords Season 1
	{ id = 9241, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Warlords Season 1
	{ id = 11036, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Legion Season 2
	{ id = 10097, faction = fac.NEUTRAL, activity = act.PvP}, -- Warmongering Gladiator: Warlords Season 3
	{ id = 13203, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Battle for Azeroth Season 2
	{ id = 11017, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Legion Season 1
	{ id = 11039, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Legion Season 3
	{ id = 12036, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Legion Season 5
	{ id = 12169, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Legion Season 6
	{ id = 8649, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Season 14
	{ id = 11045, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Legion Season 3
	{ id = 12194, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Legion Season 7
	{ id = 13209, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Battle for Azeroth Season 2
	{ id = 9240, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Warlords Season 1
	{ id = 8643, faction = fac.NEUTRAL, activity = act.PvP}, -- Grievous Gladiator: Season 14
	{ id = 11032, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Guardian of the Alliance: Legion Season 2
	{ id = 11021, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Guardian of the Horde: Legion Season 1
	{ id = 11059, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Legion Season 4
	{ id = 10112, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Warlords Season 3
	{ id = 9995, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Soldier of the Alliance: Warlords Season 1
	{ id = 10120, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Soldier of the Alliance: Warlords Season 3
	{ id = 9998, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Warlords Season 1
	{ id = 8670, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Season 15
	{ id = 10113, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Warlords Season 3
	{ id = 13962, faction = fac.NEUTRAL, activity = act.PvP}, -- Combatant: Battle for Azeroth Season 4
	{ id = 11054, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Legion Season 4
	{ id = 12175, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Legion Season 6
	{ id = 12195, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Legion Season 7
	{ id = 9996, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Warlords Season 1
	{ id = 10106, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Warlords Season 2
	{ id = 10001, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Warlords Season 1
	{ id = 10119, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Warlords Season 3
	{ id = 12171, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Legion Season 6
	{ id = 12186, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Legion Season 7
	{ id = 12045, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Legion Season 5
	{ id = 10110, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Warlords Season 3
	{ id = 11052, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Guardian of the Alliance: Legion Season 4
	{ id = 12042, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Guardian of the Horde: Legion Season 5
	{ id = 11016, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Legion Season 1
	{ id = 11027, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Legion Season 2
	{ id = 11040, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Legion Season 3
	{ id = 12170, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Legion Season 6
	{ id = 10100, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Warlords Season 2
	{ id = 11024, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Soldier of the Alliance: Legion Season 1
	{ id = 11049, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Soldier of the Alliance: Legion Season 3
	{ id = 11025, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Legion Season 1
	{ id = 11051, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Legion Season 4
	{ id = 12044, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Legion Season 5
	{ id = 12178, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Legion Season 6
	{ id = 10105, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Warlords Season 2
	{ id = 11060, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Legion Season 4
	{ id = 12187,  faction = fac.NEUTRAL, activity = act.PvP},-- Challenger: Legion Season 7
	{ id = 9242, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Warlords Season 1
	{ id = 10101, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Warlords Season 2
	{ id = 11037, faction = fac.NEUTRAL, activity = act.PvP}, -- Cruel Gladiator: Legion Season 3
	{ id = 11034, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Legion Season 2
	{ id = 10118, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Warlords Season 3
	{ id = 11023, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Legion Season 1
	{ id = 11033, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Legion Season 2
	{ id = 11044, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Legion Season 3
	{ id = 11055, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Legion Season 4
	{ id = 10107, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Warlords Season 2
	{ id = 12134, faction = fac.NEUTRAL, activity = act.PvP}, -- Dominant Gladiator: Legion Season 6
	{ id = 11015, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Legion Season 1
	{ id = 11026, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Legion Season 2
	{ id = 10099, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Warlords Season 2
	{ id = 12167, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Legion Season 6
	{ id = 11020, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Guardian of the Alliance: Legion Season 1
	{ id = 11047, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Guardian of the Alliance: Legion Season 3
	{ id = 12038, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Guardian of the Alliance: Legion Season 5
	{ id = 12177, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Guardian of the Alliance: Legion Season 6
	{ id = 9997, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Guardian of the Alliance: Warlords Season 1
	{ id = 10108, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Guardian of the Alliance: Warlords Season 2
	{ id = 10116, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Guardian of the Alliance: Warlords Season 3
	{ id = 11031, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Guardian of the Horde: Legion Season 2
	{ id = 11046, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Guardian of the Horde: Legion Season 3
	{ id = 12176, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Guardian of the Horde: Legion Season 6
	{ id = 12192, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Guardian of the Horde: Legion Season 7
	{ id = 10109, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Guardian of the Horde: Warlords Season 2
	{ id = 10117, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Guardian of the Horde: Warlords Season 3
	{ id = 12188, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Legion Season 7
	{ id = 12040, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Soldier of the Alliance: Legion Season 5
	{ id = 10104, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Soldier of the Alliance: Warlords Season 2
	{ id = 11035, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Legion Season 2
	{ id = 11048, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Legion Season 3
	{ id = 12190, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Legion Season 7
	{ id = 10121, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Soldier of the Horde: Warlords Season 3
	{ id = 11028, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Legion Season 2
	{ id = 11022, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Defender of the Alliance: Legion Season 1
	{ id = 12174, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Defender of the Horde: Legion Season 6
	{ id = 11041, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Legion Season 3
	{ id = 10000, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Guardian of the Horde: Warlords Season 1
	{ id = 11050, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Soldier of the Alliance: Legion Season 4
	{ id = 12189, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Soldier of the Alliance: Legion Season 7
	{ id = 10096, faction = fac.NEUTRAL, activity = act.PvP}, -- Wild Gladiator: Warlords Season 2
	{ id = 14690, faction = fac.NEUTRAL, activity = act.PvP}, -- Sinful Gladiator: Shadowlands Season 1 
	14531, -- Shadowlands Keystone Conqueror: Season One
	{ id = 14689, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Shadowlands Season 1 
	{ id = 14688, faction = fac.NEUTRAL, activity = act.PvP}, -- Duelist: Shadowlands Season 1 Title Reward: Duelist
	{ id = 14686, faction = fac.NEUTRAL, activity = act.PvP}, -- Challenger: Shadowlands Season 1 Title Reward: Challenger
	{ id = 14685, faction = fac.NEUTRAL, activity = act.PvP}, -- Combatant: Shadowlands Season 1 Title Reward: Combatant
	{ id = 14687, faction = fac.NEUTRAL, activity = act.PvP}, -- Rival: Shadowlands Season 1 Title Reward: Rival
	{ id = 14691, faction = fac.NEUTRAL, activity = act.PvP}, -- Elite: Shadowlands Season 1 Title Reward: the Elite ]]

};


local mountAchievements		= {
	12866,  -- 100 Exalted Reputations
	12103,	-- ...And Chew Mana Buns
	{ id = 12933, faction = AchieveIt.Factions.ALLIANCE}, -- A Horde of Hoofbeats
	{ id = 12934, faction = AchieveIt.Factions.HORDE}, -- A Horde of Hoofbeats
	{ id = 13928, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Alterac Valley of Olde
	{ id = 13930, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Alterac Valley of Olde
	9713,	-- Awake the Drakes
	-- 14145,  -- Battle for Azeroth Keystone Master: Season Four
	12989,  -- Battle for Azeroth Pathfinder, Part One
	13250,  -- Battle for Azeroth Pathfinder, Part Two
	-- 9550,   -- Boldly, You Sought the Power of Ragnaros
	11190,  -- Broken Isles Pathfinder, Part One
	11446,  -- Broken Isles Pathfinder, Part Two
	-- { id = 11005, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Cruel Combatant
	-- { id = 11008, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Cruel Combatant
	10018,	-- Draenor Pathfinder
	12069,  -- Explore Argus
	{ id = 614, faction = AchieveIt.Factions.ALLIANCE},	-- For The Alliance!
	{ id = 619, faction = AchieveIt.Factions.HORDE},	-- For The Horde!
	11474,  -- Free For All, More For Me
	{ id = 2091, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator
	--[[ { id = 12961, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Battle for Azeroth Season 1
	{ id = 14689, faction = fac.NEUTRAL, activity = act.PvP}, -- Gladiator: Shadowlands Season 1	]]
	11987,  -- Glory of the Argus Raider
	4845,	-- Glory of the Cataclysm Hero
	4853,	-- Glory of the Cataclysm Raider
	13315,  -- Glory of the Dazar'alor Raider
	15130,  -- Glory of the Dominant Raider
	9396,   -- Glory of the Draenor Hero
	8985,   -- Glory of the Draenor Raider
	6169,	-- Glory of the Dragon Soul Raider
	13687,  -- Glory of the Eternal Raider
	5828,	-- Glory of the Firelands Raider
	10149,  -- Glory of the Hellfire Raider
	2136,	-- Glory of the Hero
	4602,	-- Glory of the Icecrown Raider (10 player)
	4603,	-- Glory of the Icecrown Raider (25 player)
	11163,  -- Glory of the Legion Hero
	11180,  -- Glory of the Legion Raider
	14355,  -- Glory of the Nathria Raider
	14146,  -- Glory of the Ny'alotha Raider
	8454,	-- Glory of the Orgrimmar Raider
	6927,	-- Glory of the Pandaria Hero
	6932,	-- Glory of the Pandaria Raider
	14322,  -- Glory of the Shadowlands Hero
	8124,	-- Glory of the Thundering Raider
	12806,  -- Glory of the Uldir Raider
	12401,  -- Glory of the Ulduar Raider
	12812,  -- Glory of the Wartorn Hero
	9909,   -- Heirloom Hoarder
	{ id = 12895, faction = fac.NEUTRAL, activity = act.PvP}, -- Honor Level 15
	{ id = 12903, faction = fac.NEUTRAL, activity = act.PvP}, -- Honor Level 40
	{ id = 12906, faction = fac.NEUTRAL, activity = act.PvP}, -- Honor Level 70
	{ id = 12910, faction = fac.NEUTRAL, activity = act.PvP}, -- Honor Level 125
	{ id = 12911, faction = fac.NEUTRAL, activity = act.PvP}, -- Honor Level 150
	{ id = 12914, faction = fac.NEUTRAL, activity = act.PvP}, -- Honor Level 250
	{ id = 12917, faction = fac.NEUTRAL, activity = act.PvP}, -- Honor Level 500
	2143,	-- Leading the Cavalry
	{ id = 10355, faction = AchieveIt.Factions.HORDE},	-- Lord of the Reins
	{ id = 10356, faction = AchieveIt.Factions.ALLIANCE},	-- Lord of the Reins
	13541,  -- Mecha-Done
	-- 13931,  -- Memories of Fel, Frost and Fire
	{ id = 8304, faction = AchieveIt.Factions.ALLIANCE},	-- Mount Parade
	{ id = 8302, faction = AchieveIt.Factions.HORDE},	-- Mount Parade
	{ id = 9598, faction = AchieveIt.Factions.ALLIANCE},	-- Mountacular
	{ id = 9599, faction = AchieveIt.Factions.HORDE},	-- Mountacular
	{ id = 2536, faction = AchieveIt.Factions.ALLIANCE}, -- Mountain o' Mounts
	{ id = 2537, faction = AchieveIt.Factions.HORDE}, -- Mountain o' Mounts
	{ id = 12932, faction = AchieveIt.Factions.ALLIANCE}, -- No Stable Big Enough
	{ id = 12931, faction = AchieveIt.Factions.HORDE}, -- No Stable Big Enough
	{ id = 6828, faction = AchieveIt.Factions.ALLIANCE},	-- Pandaren Ambassador
	{ id = 6827, faction = AchieveIt.Factions.HORDE},	-- Pandaren Ambassador
	11176,	-- Remember to Share
	-- 14532,  -- Shadowlands Keystone Master: Season One
	5866,	-- The Molten Front Offensive
	13994,  -- Through the Depths of Visions
	14570,  -- Twisting Corridors: Layer 8
	13517,  -- Two Sides to Every Tale
	{ id = 9540, faction = AchieveIt.Factions.ALLIANCE}, -- The Stable Master
	{ id = 9706, faction = AchieveIt.Factions.HORDE}, -- The Stable Master
	14570, -- Twisting Corridors: Layer 8
	11066,  -- Underbelly Tycoon
	13638,  -- Undersea Usurper
	{ id = 5328, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP},	-- Veteran of the Alliance
	{ id = 5823, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP},	-- Veteran of the Alliance II
	{ id = 5325, faction = AchieveIt.Factions.HORDE, activity = act.PvP},	-- Veteran of the Horde
	{ id = 5824, faction = AchieveIt.Factions.HORDE, activity = act.PvP},	-- Veteran of the Horde II
	{ id = 5329, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP},	-- Warbound Veteran of the Alliance
	{ id = 5326, faction = AchieveIt.Factions.HORDE, activity = act.PvP},	-- Warbringer of the Horde
	-- 9496,   -- Warlord's Deathwheel
	{ id = 7860, faction = AchieveIt.Factions.ALLIANCE},	-- We're Going to Need More Saddles
	{ id = 7862, faction = AchieveIt.Factions.HORDE},	-- We're Going to Need More Saddles
	2144,	-- What a Long, Strange Trip It's Been


};

local petAchievements	= {
	15004,  -- A Sly Fox
	14881,  -- Abhorrent Adversaries of the Afterlife
	9069,	-- An Awfully Big Adventure
	12930,	-- Battle Safari
	9805,	-- Big Rocketeer: Gold
	11233,	-- Broken Isles Safari
	8300,	-- Brutal Pet Brawler
	9685,	-- Draenor Safari
	13279,  -- Family Battler
	14879,  -- Family Exorcist
	9696,	-- Family Familiar
	12100,	-- Family Fighter
	7500,	-- Going to Need More Leashes
	1956,	-- Higher Learning
	{ id = 12893, activity = act.PvP},	-- Honor Level 5
	{ id = 12900, activity = act.PvP},	-- Honor Level 20
	{ id = 12916, activity = act.PvP},	-- Honor Level 400
	12723,	-- How to Keep a Mummy
	13062,	-- Lets Bee Friends
	2516,	-- Lil' Game Hunter
	6402,	-- Ling-Ting's Herbal Journey
	5875,	-- Littlest Pet Shop
	4478,	-- Looking For Multitudes
	13766,  -- Malowned
	12958,	-- Master of Minions
	5877,	-- Menagerie
	11856,	-- Pet Battle Challenge: Deadmines
	13269,  -- Pet Battle Challenge: Gnomeregan
	13627,  -- Pet Battle Challenge: Stratholme
	11765,	-- Pet Battle Challenge: Wailing Caverns
	12992,	-- Pet Emporium
	5876,	-- Petting Zoo
	3478,   -- Pilgrim
	10412,	-- Poor Unfortunate Souls
	12431,	-- Post Haste
	6582,	-- Pro Pet Mob
	7934,	-- Raiding with Leashes
	8293,	-- Raiding with Leashes II: Attunement Edition
	9824,	-- Raiding with Leashes III: Drinkin' From the Sunwell
	12079,	-- Raiding with Leashes V: Cutaclysm
	13469,  -- Raiding with Leashes VI: Pets of Pandaria
	14143,  -- Reeking of Visions
	5449,	-- Rock Lover
	1250,	-- Shop Smart, Shop Pet...Smart
	9643,	-- So. Many. Pets.
	13695,  -- Team Aquashock
	7501,	-- That's a Lot of Pet Food
	9983,	-- That's Whack!
	5860,	-- The 'Unbeatable?' Pterodactyl: BEATEN.
	7521,	-- Time to Open a Pet Store
	12996,	-- Toybox Tycoon

	-- 8820, -- WoW's 10th Anniversary

};

local tabardAchievements = {
	{ id = 876, activity = act.PvP},	-- Brutally Dedicated
	{ id = 12863, activity = act.PvP},	-- Dueling Master
	12290,	-- Family Brawler
	{ id = 3857, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP },	-- Master of Isle of Conquest
	{ id = 3957, faction = AchieveIt.Factions.HORDE, activity = act.PvP },	-- Master of Isle of Conquest
	45,	-- Northrend Explorer
	7520,	-- The Loremaster
	1021,	-- Twenty-Five Tabards
};

local questAchievements = {
	{ id = 3676, faction = AchieveIt.Factions.ALLIANCE },	-- A Silver Confidant
	8080,	-- Fabled Pandaren Tamer
	10617,	-- Nightfallen But Not Forgotten
	7936,	-- Pandaren Spirit Tamer
	11320,	-- Raiding with Leashes IV: Wrath of the Lick King
	7525,	-- Taming Cataclysm
	{ id = 6603, faction = AchieveIt.Factions.ALLIANCE },	-- Taming Eastern Kingdoms
	{ id = 6602, faction = AchieveIt.Factions.HORDE },	-- Taming Kalimdor
	6605,	-- Taming Northrend
	6604,	-- Taming Outland
	6606,	-- Taming Pandaria
	{ id = 3677, faction = AchieveIt.Factions.HORDE },	-- The Sunreavers
};

-- Currently, none exist
--local teleportAchievements = {
--
--};

local blueprintAchievements = {
	9463,	-- Draenic Pet Battler
	9454,	-- Draenic Seed Collector
	9453,	-- Draenic Stone Collector
	9462,	-- Draenor Angler
	9129,	-- Filling the Ranks
	9497,	-- Finding Your Waystones
	9487,	-- Got My Mind On My Draenor Money
	9526,	-- Master of Mounts
	9565,	-- Master Trapper
	9523,	-- Patrolling Draenor
	9468,	-- Salvaging Pays Off
	{ id = 9478, faction = AchieveIt.Factions.ALLIANCE },	-- Savage Friends
	{ id = 9477, faction = AchieveIt.Factions.HORDE },	-- Savage Friends
	9703,	-- Stay Awhile and Listen
	9527,	-- Terrific Technology
	9495,	-- The Bone Collector
	9429,	-- Upgrading the Mill
	9406,	-- Working More Orders
};

local monumentAchievements = {
	{ id = 9630, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP},	-- Defender of Draenor
	{ id = 9248, faction = AchieveIt.Factions.HORDE, activity = act.PvP},	-- Defender of Draenor
	9264,	-- Draenor Pet Brawler
	9246,	-- Master Draenor Crafter
	9265,	-- Master of Apexis
	{ id = 9631, faction = AchieveIt.Factions.ALLIANCE },	-- Mythic Draenor Raider
	{ id = 9255, faction = AchieveIt.Factions.HORDE },	-- Mythic Draenor Raider
};

local followerAchievements = {
	9972,	-- A Race Against Slime
	{ id = 8925, faction = AchieveIt.Factions.ALLIANCE },	-- Between Arak and a Hard Place
	{ id = 8926, faction = AchieveIt.Factions.HORDE }, -- Between Arak and a Hard Place
	{ id = 9928, faction = AchieveIt.Factions.ALLIANCE },	-- Don't Call Me Junior
	{ id = 9901, faction = AchieveIt.Factions.HORDE },	-- Don't Call Me Junior
	9058, -- Leeeeeeeeeeeeeroy...?
	9072,	-- Mantle of the Talon King
	8929,	-- The Steel Has Been Brought
};

local allied_races_achievements = {
	{ id = 12515, faction = AchieveIt.Factions.ALLIANCE}, -- Allied Races: Dark Iron Dwarf
	{ id = 12245, faction = AchieveIt.Factions.HORDE}, -- Allied Races: Highmountain Tauren
	13163, -- Allied Races: Kul Tiran
	{ id = 12243, faction = AchieveIt.Factions.ALLIANCE}, -- Allied Races: Lightforged Draenei
	{ id = 12518, faction = AchieveIt.Factions.HORDE}, -- Allied Races: Mag'har Orc
	14013, -- Allied Races: Mechagnome
	{ id = 12244, faction = AchieveIt.Factions.HORDE}, -- Allied Races: Nightborne
	{ id = 12242, faction = AchieveIt.Factions.ALLIANCE}, -- Allied Races: Void Elf
	13206, -- Allied Races: Vulpera
	13161, -- Allied Races: Zandalari Troll

}

local itemAchievements = {
	9885,	-- Ace Tonk Commander
	{ id =  8845, faction = AchieveIt.Factions.ALLIANCE}, -- As I Walk Through the Valley of the Shadow of Moon
	13513,  -- Available in Eight Colors
	{ id = 9914, faction = AchieveIt.Factions.HORDE },	-- Azeroth's Top Twenty Tunes
	{ id = 9912, faction = AchieveIt.Factions.ALLIANCE },	-- Azeroth's Top Twenty Tunes
	14625,  -- Battle in Shadowlands
	10876,	-- Battle on the Broken Isles
	12936,	-- Battle on Zandalar and Kul Tiras
	9817,	-- Big Powermonger: Gold
	9799,	-- Big Race Roadhog
	9811,	-- Big Wanderluster: Gold
	{ id = 10256, faction = AchieveIt.Factions.ALLIANCE },	-- Charting a Course
	{ id = 10258, faction = AchieveIt.Factions.HORDE },	-- Charting a Course
	12078,	-- Commander of Argus
	9761,	-- Darkmoon Racer Roadhog
	{ id =  8920, faction = AchieveIt.Factions.ALLIANCE}, -- Don't Let the Tala-door Hit You on the Way Out
	{ id =  8919, faction = AchieveIt.Factions.HORDE}, -- Don't Let the Tala-door Hit You on the Way Out
	-- { id =  11210, faction = AchieveIt.Factions.ALLIANCE},  -- Fight for the Alliance
	-- { id =  11211, faction = AchieveIt.Factions.HORDE},  -- Fight for the Horde
	11725,	-- Fisherfriend of the Isles
	6556,	-- Going to Need More Traps
	10774,	-- Hatchling of the Talon
	{ id = 12415, faction = AchieveIt.Factions.HORDE },	-- Heritage of Highmountain
	{ id = 13076, faction = AchieveIt.Factions.ALLIANCE },	-- Heritage of the Dark Iron
	{ id = 12414, faction = AchieveIt.Factions.ALLIANCE },	-- Heritage of the Lightforged
	{ id = 13077, faction = AchieveIt.Factions.HORDE },	-- Heritage of Mag'har
	{ id = 12413, faction = AchieveIt.Factions.HORDE },	-- Heritage of Nightborne
	{ id = 12291, faction = AchieveIt.Factions.ALLIANCE },	-- Heritage of the Void
	{ id = 14002, faction = AchieveIt.Factions.HORDE },	-- Heritage of the Vulpera
	{ id = 14014, faction = AchieveIt.Factions.ALLIANCE },	--Heritage of the Mechagnome
	{ id = 13504, faction = AchieveIt.Factions.ALLIANCE }, -- Heritage of the Kul Tirans
	{ id = 13503, faction = AchieveIt.Factions.HORDE }, -- Heritage of the Zandalari
	11175,	-- Higher Dimensional Learning
	1956,	-- Higher Learning
	{ id = 12894, activity = act.PvP},	-- Honor Level 10
	{ id = 12902, activity = act.PvP},	-- Honor Level 30
	{ id = 12905, activity = act.PvP},	-- Honor Level 60
	{ id = 12908, activity = act.PvP},	-- Honor Level 90
	{ id = 12912, activity = act.PvP},	-- Honor Level 175
	7908,	-- I Choose You
	14721,  -- It's In The Mix
	6566,	-- Just a Pup
	5859,	-- Legacy of Leyara
	{ id =  8927, faction = AchieveIt.Factions.ALLIANCE}, -- Nagrandeur
	{ id =  8928, faction = AchieveIt.Factions.HORDE}, -- Nagrandeur
	7433,	-- Newbie
	11427,	-- No Shellfish Endeavor
	14766,  -- Parasoling Toy Reward: Weathered Purple Parasol
	14020,  -- Pet Battle Challenge: Blackrock Depths
	{ id = 10255, faction = AchieveIt.Factions.HORDE },	-- Petty Officer
	{ id = 10172, faction = AchieveIt.Factions.ALLIANCE },	-- Petty Officer
	9785,	-- Powermonger: Gold
	6581,	-- Pro Pet Crew
	7385,	-- Pub Crawl
	{ id =  8923, faction = AchieveIt.Factions.ALLIANCE}, -- Putting the Gore in Gorgrond
	{ id =  8924, faction = AchieveIt.Factions.HORDE}, -- Putting the Gore in Gorgrond
	9764,	-- Rocketeer: Gold
	10170,	-- Seaman
	13502,  -- Secret Fish and Where to Find Them
	13489,  -- Secret Fish of Mechagon
	7499,	-- Taming the World
	2096,	-- The Coin Master
	8348,	-- The Longest Day
	14021,  -- The Shadows Revealed
	9673,	-- The Toymaster
	9394,	-- They Really Love Me
	9894,	-- Triumphant Turtle Tossing	
	14471, -- Twisting Corridors: Layer 4
	{ id = 13285, faction = AchieveIt.Factions.ALLIANCE },	-- Upright Citizens
	9792,	-- Wanderluster: Gold
	9838,	-- What A Strange, Interdimensional Trip It's Been
	{ id =  8671, faction = AchieveIt.Factions.HORDE}, -- You'll Get Caught Up In The... Frostfire!

};

local function filter_rewards(p_rewards)
	local filtered_rewards = {}

	for _i, reward in ipairs(p_rewards) do
		local okay_to_add = true
		if (type(reward) == "table") and (reward.activity) then
			if(reward.activity == act.PvP and not AchieveIt_Data.ShowPvPRewards) then
				AchieveIt:Printd("Skipping ", reward)
				okay_to_add = false
			elseif (reward.activity == act.PetBattle and not AchieveIt_Data.ShowBPetRewards) then
				AchieveIt:Printd("Skipping ", reward)
				okay_to_add = false
			end
		end

		if (okay_to_add) then
			tinsert(filtered_rewards, reward);
		end
	end

	return filtered_rewards
end

function ADDON.LoadRewardCategories()

	local _, class = UnitClass("player")

	if ( class == "DEMONHUNTER") then
		tinsert(itemAchievements, 11869)	-- I'll Hold These For You Until You Get Out
	end


	-- Add category
	local category = AchieveIt.Categories:addCategory(false, _G["REWARDS"]);

	titleAchievements = filter_rewards(titleAchievements)
	mountAchievements = filter_rewards(mountAchievements)
	tabardAchievements = filter_rewards(tabardAchievements)
	monumentAchievements = filter_rewards(monumentAchievements)
	petAchievements = filter_rewards(petAchievements)
	itemAchievements = filter_rewards(itemAchievements)
	
	-- add children
	category:addChild(_G["UNIT_NAME_PLAYER_TITLE"], titleAchievements);
	category:addChild(_G["MOUNTS"], mountAchievements);
	category:addChild(_G["PETS"], petAchievements);
	category:addChild(L["Tabards"], tabardAchievements);
	category:addChild(_G["ITEMS"], itemAchievements);
	category:addChild(_G["QUESTS_LABEL"], questAchievements);
	--category:addChild(L["Teleports"], teleportAchievements);
	category:addChild(L["Blueprints"], blueprintAchievements);
	category:addChild(_G["GARRISON_MONUMENTS_TITLE"], monumentAchievements);
	category:addChild(_G["GARRISON_FOLLOWERS"], followerAchievements);
	category:addChild(L["Allied Races"], allied_races_achievements);

	category:inheritAchievements();

end

--[[
Customization, a new category?
	{ id = 13251, faction = AchieveIt.Factions.ALLIANCE}, -- In Teldrassil's Shadow


--]]