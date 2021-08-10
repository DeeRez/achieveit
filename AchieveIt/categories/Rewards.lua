local _ADDON_NAME, ADDON = ... -- Pulls back the Addon-Local Variables and store them locally.

local AchieveIt = AchieveIt;

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

local act = AchieveItConstants.ActivityType
local fac =  AchieveIt.Factions

local titleAchievements	= {
	12866, -- 100 Exalted Reputations
	{ id = 870, faction = fac.NEUTRAL, activity = act.PvP}, -- 100000 Honorable Kills
	{ id = 5363, faction = fac.NEUTRAL, activity = act.PvP}, -- 250000 Honorable Kills
	978, -- 3000 Quests Completed
	6742, -- 60 Exalted Reputations
	12864, -- 80 Exalted Reputations
	1516, -- Accomplished Angler
	{ id = 948, faction = AchieveIt.Factions.ALLIANCE}, -- Ambassador of the Alliance
	{ id = 762, faction = AchieveIt.Factions.HORDE}, -- Ambassador of the Horde
	12104, -- And We're All Out of Mana Buns
	871, -- Avast Ye, Admiral!
	5827, -- Avengers of Hyjal
	11761, -- Azeroth's Next Top Model
	4583, -- Bane of the Fallen King
	{ id = 230, faction = AchieveIt.Factions.ALLIANCE, activity = act.PvP}, -- Battlemaster
	{ id = 1175, faction = AchieveIt.Factions.HORDE, activity = act.PvP}, -- Battlemaster
	{ id = 5351, faction = AchieveIt.Factions.HORDE}, -- Blood Guard
	1683, -- Brewmaster
	{ id = 5338, faction = AchieveIt.Factions.HORDE}, -- Centurion
	12959, -- Challenger: Battle for Azeroth Season 1
	{ id = 5353, faction = AchieveIt.Factions.HORDE}, -- Champion
	1658, -- Champion of the Frozen Wastes
	{ id = 9080, faction = AchieveIt.Factions.HORDE}, -- Choppin' Even More Logs
	{ id = 9078, faction = AchieveIt.Factions.ALLIANCE}, -- Choppin' Even More Logs
	9077, -- Choppin' Some More Logs
	11941, -- Chromie Homie
	{ id = 5340, faction = AchieveIt.Factions.ALLIANCE}, -- Commander
	{ id = 12604, faction = AchieveIt.Factions.HORDE}, -- Conqueror of Azeroth
	{ id = 12605, faction = AchieveIt.Factions.ALLIANCE}, -- Conqueror of Azeroth
	{ id = 8679, faction = AchieveIt.Factions.ALLIANCE}, -- Conqueror of Orgrimmar
	{ id = 5331, faction = AchieveIt.Factions.ALLIANCE}, -- Corporal
	10354, -- Crashin' Thrashin' Commander
	8397, -- Crazy for Cats
	8301, -- Deadly Pet Brawler
	5506, -- Defender of a Shattered World
	6177, -- Destroyer's End
	12945, -- Dread Gladiator: Battle for Azeroth Season 1
	12962, -- Duelist: Battle for Azeroth Season 1
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
	{ id = 5357, faction = AchieveIt.Factions.ALLIANCE}, -- Field Marshal
	9924, -- Field Photographer
	8721, -- Fire-Watcher
	{ id = 5349, faction = AchieveIt.Factions.HORDE}, -- First Sergeant
	1693, -- Fool For Love
	1793, -- For the Children
	9094, -- Garrison Architect
	{ id = 5355, faction = AchieveIt.Factions.HORDE}, -- General
	12961, -- Gladiator: Battle for Azeroth Season 1
	11763, -- Glory of the Tomb Raider
	{ id = 5343, faction = AchieveIt.Factions.ALLIANCE}, -- Grand Marshal
	{ id = 5346, faction = AchieveIt.Factions.HORDE}, -- Grunt
	953, -- Guardian of Cenarius
	1563, -- Hail to the Chef
	1656, -- Hallowed Be Thy Name
	3316, -- Herald of the Titans
	{ id = 6942, faction = AchieveIt.Factions.ALLIANCE}, -- Hero of the Alliance
	{ id = 6941, faction = AchieveIt.Factions.HORDE}, -- Hero of the Horde
	5123, -- Heroic: Al'Akir
	8067, -- Heroic: Lei Shen
	6116, -- Heroic: Madness of Deathwing
	5116, -- Heroic: Nefarian
	5803, -- Heroic: Ragnaros
	6734, -- Heroic: Sha of Fear
	5121, -- Heroic: Sinestra
	6724, -- Heroic: Will of the Emperor
	{ id = 5356, faction = AchieveIt.Factions.HORDE}, -- High Warlord
	12909, -- Honor Level 100
	12913, -- Honor Level 200
	12901, -- Honor Level 25
	12915, -- Honor Level 300
	12904, -- Honor Level 50
	12907, -- Honor Level 80
	4854, -- I Had It in My Hand
	2336, -- Insane in the Membrane
	7284, -- Is Another Man's Treasure
	4856, -- It Belongs in a Museum!
	{ id = 8052, faction = AchieveIt.Factions.ALLIANCE}, -- Khan
	{ id = 8055, faction = AchieveIt.Factions.HORDE}, -- Khan
	{ id = 5335, faction = AchieveIt.Factions.ALLIANCE}, -- Knight
	{ id = 5337, faction = AchieveIt.Factions.ALLIANCE}, -- Knight-Captain
	{ id = 5359, faction = AchieveIt.Factions.ALLIANCE}, -- Knight-Champion
	{ id = 5336, faction = AchieveIt.Factions.ALLIANCE}, -- Knight-Lieutenant
	9058, -- Leeeeeeeeeeeeeroy...?
	{ id = 5352, faction = AchieveIt.Factions.HORDE}, -- Legionnaire
	{ id = 8680, faction = AchieveIt.Factions.HORDE}, -- Liberator of Orgrimmar
	{ id = 5339, faction = AchieveIt.Factions.ALLIANCE}, -- Lieutenant Commander
	{ id = 5354, faction = AchieveIt.Factions.HORDE}, -- Lieutenant General
	11232, -- Lock, Stock and Two Smoking Goblins
	4477, -- Looking For Many
	9072, -- Mantle of the Talon King
	{ id = 5341, faction = AchieveIt.Factions.ALLIANCE}, -- Marshal
	12861, -- Master of Duels
	7306, -- Master of Pandaren Cooking
	12412, -- Master of Seething Shore
	10164, -- Master of the Seas
	{ id = 5333, faction = AchieveIt.Factions.ALLIANCE}, -- Master Sergeant
	1691, -- Merrymaker
	10043, -- Mythic: Archimonde
	12002, -- Mythic: Argus the Unmaker
	8973, -- Mythic: Blackhand's Crucible
	12533, -- Mythic: G'huun
	8482, -- Mythic: Garrosh Hellscream
	10850, -- Mythic: Gul'dan
	8965, -- Mythic: Imperator's Fall
	11781, -- Mythic: Kil'jaeden
	10827, -- Mythic: Xavius
	{ id = 9517, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Death Stalker
	{ id = 9509, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Draenei Destroyer
	{ id = 9510, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Dwarfstalker
	{ id = 9511, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Gnomebane
	{ id = 9520, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Huojin's Fall
	{ id = 9518, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Killer of Kezan
	{ id = 9512, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Manslayer
	{ id = 9519, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Orcslayer
	{ id = 9513, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Scourge of the Kaldorei
	{ id = 9516, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Slayer of Sin'dorei
	{ id = 9514, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Terror of the Tushui
	{ id = 9521, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: The Butcher
	{ id = 9522, faction = AchieveIt.Factions.ALLIANCE}, -- Nemesis: Troll Hunter
	{ id = 9515, faction = AchieveIt.Factions.HORDE}, -- Nemesis: Worgen Hunter
	10609, -- No Stone Unturned
	2798, -- Noble Gardener
	12399, -- Observed
	12083, -- Paragon of Argus
	3478, -- Pilgrim
	10334, -- Predator
	12439, -- Priority Mail
	{ id = 5330, faction = AchieveIt.Factions.ALLIANCE}, -- Private
	9464, -- Professional Draenor Master
	9577, -- Proving Yourself: Endless Damage (Wave 30)
	9589, -- Proving Yourself: Endless Healer (Wave 30)
	9583, -- Proving Yourself: Endless Tank (Wave 30)
	12960, -- Rival: Battle for Azeroth Season 1
	{ id = 10072, faction = AchieveIt.Factions.ALLIANCE}, -- Rumble in the Jungle
	{ id = 10265, faction = AchieveIt.Factions.HORDE}, -- Rumble in the Jungle
	9619, -- Savage Hero
	{ id = 6874, faction = AchieveIt.Factions.ALLIANCE}, -- Scenaturday
	{ id = 7509, faction = AchieveIt.Factions.HORDE}, -- Scenaturday
	5767, -- Scourer of the Eternal Sands
	{ id = 5345, faction = AchieveIt.Factions.HORDE}, -- Scout
	{ id = 5348, faction = AchieveIt.Factions.HORDE}, -- Senior Sergeant
	{ id = 5332, faction = AchieveIt.Factions.ALLIANCE}, -- Sergeant
	{ id = 5347, faction = AchieveIt.Factions.HORDE}, -- Sergeant
	{ id = 5334, faction = AchieveIt.Factions.ALLIANCE}, -- Sergeant Major
	{ id = 5350, faction = AchieveIt.Factions.HORDE}, -- Stone Guard
	8121, -- Stormbreaker
	6607, -- Taming Azeroth
	945, -- The Argent Champion
	4598, -- The Ashen Verdict
	11387, -- The Chosen
	{ id = 714, faction = AchieveIt.Factions.HORDE}, -- The Conqueror
	{ id = 942, faction = AchieveIt.Factions.ALLIANCE}, -- The Diplomat
	{ id = 943, faction = AchieveIt.Factions.HORDE}, -- The Diplomat
	{ id = 1039, faction = AchieveIt.Factions.HORDE}, -- The Flame Keeper
	{ id = 1038, faction = AchieveIt.Factions.ALLIANCE}, -- The Flame Warden
	4530, -- The Frozen Throne (10 player)
	4597, -- The Frozen Throne (25 player)
	{ id = 907, faction = AchieveIt.Factions.ALLIANCE}, -- The Justicar
	9725, -- The Last of Us
	4584, -- The Light of Dawn
	7520, -- The Loremaster
	7612, -- The Seat of Knowledge
	7479, -- The Shado-Master
	{ id = 9540, faction = AchieveIt.Factions.ALLIANCE}, -- The Stable Master
	{ id = 9706, faction = AchieveIt.Factions.HORDE}, -- The Stable Master
	2051, -- The Twilight Zone (10 player)
	2054, -- The Twilight Zone (25 player)
	913, -- To Honor One's Elders
	6926, -- Tranquil Master
	46, -- Universal Explorer
	{ id = 5328, faction = AchieveIt.Factions.ALLIANCE}, -- Veteran of the Alliance
	{ id = 5325, faction = AchieveIt.Factions.HORDE}, -- Veteran of the Horde
	5879, -- Veteran of the Molten Front
	8023, -- Wakener
	{ id = 5329, faction = AchieveIt.Factions.ALLIANCE}, -- Warbound Veteran of the Alliance
	{ id = 5326, faction = AchieveIt.Factions.HORDE}, -- Warbringer of the Horde
	{ id = 5342, faction = AchieveIt.Factions.HORDE}, -- Warlord
	{ id = 9508, faction = AchieveIt.Factions.HORDE}, -- Warlord of Draenor
	{ id = 9738, faction = AchieveIt.Factions.ALLIANCE}, -- Warlord of Draenor
	4855, -- What was Briefly Yours is Now Mine
	6590, -- World Safari
	{ id = 13925, faction = AchieveIt.Factions.ALLIANCE}, -- The Fourth War
	13638, -- Undersea Usurper

	14140, -- Mad World
	{ id = 13924, faction = AchieveIt.Factions.HORDE}, -- The Fourth War
	14191, -- Servant of N'Zoth
	13779, -- Phenomenal Cosmic Power
	13647, -- Gladiator: Battle for Azeroth Season 3
	13630, -- Notorious Gladiator: Battle for Azeroth Season 3
	14144, -- Battle for Azeroth Keystone Conqueror: Season Four
	13555, -- Junkyard Tinkmaster
	13733, -- Mythic: Queen Azshara
	14175, -- Master of Deepwind Gorge
	13967, -- Gladiator: Battle for Azeroth Season 4
	13957, -- Corrupted Gladiator: Battle for Azeroth Season 4
	13199, -- Combatant: Battle for Azeroth Season 1
	3117, -- Realm First! Death's Demise
	14055, -- Mythic: N'Zoth the Corruptor
	13639, -- Combatant: Battle for Azeroth Season 3
	9618, -- The Iron Invasion
	12034, -- Duelist: Legion Season 5
	13641, -- Rival: Battle for Azeroth Season 3
	12035, -- Rival: Legion Season 5
	13676, -- Elite: Battle for Azeroth Season 3
	9016, -- Breaker of the Black Harvest
	13212, -- Gladiator: Battle for Azeroth Season 2
	13634, -- Challenger: Battle for Azeroth Season 3
	13989, -- Elite: Battle for Azeroth Season 4
	13642, -- Duelist: Battle for Azeroth Season 3
	456, -- Realm First! Obsidian Slayer
	13200, -- Sinister Gladiator: Battle for Azeroth Season 2
	13314, -- Mythic: Lady Jaina Proudmoore
	8903, -- Mistwalker
	12168, -- Gladiator: Legion Season 7
	11012, -- Vindictive Gladiator: Legion Season 1
	4078, -- Realm First! Grand Crusader
	{ id = 13192, faction = AchieveIt.Factions.HORDE}, -- Brawler for Azeroth
	13465, -- Elite: Battle for Azeroth Season 1
	{ id = 13191, faction = AchieveIt.Factions.ALLIANCE}, -- Brawler for Azeroth
	3259, -- Realm First! Celestial Defender
	13204, -- Combatant: Battle for Azeroth Season 2
	11011, -- Gladiator: Legion Season 1
	8392, -- Tournament Glory 2013
	1402, -- Realm First! Conqueror of Naxxramas
	1400, -- Realm First! Magic Seeker
	8646, -- Rival: Season 14
	9239, -- Gladiator: Warlords Season 1
	8669, -- Rival: Season 15
	12185, -- Demonic Gladiator: Legion Season 7
	11038, -- Gladiator: Legion Season 3
	{ id = 12043, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Legion Season 5
	11014, -- Fearless Gladiator: Legion Season 2
	12010, -- Fierce Gladiator: Legion Season 5
	13205, -- Rival: Battle for Azeroth Season 2
	13959, -- Challenger: Battle for Azeroth Season 4
	8645, -- Duelist: Season 14
	8644, -- Gladiator: Season 14
	13963, -- Rival: Battle for Azeroth Season 4
	{ id = 12179, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Legion Season 6
	{ id = 9566, faction = AchieveIt.Factions.HORDE}, -- Victory in Hillsbrad
	{ id = 9729, faction = AchieveIt.Factions.ALLIANCE}, -- Victory in Hillsbrad
	{ id = 12039, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Legion Season 5
	13964, -- Duelist: Battle for Azeroth Season 4
	11058, -- Duelist: Legion Season 4
	8668, -- Duelist: Season 15
	10111, -- Duelist: Warlords Season 3
	13451, -- Elite: Battle for Azeroth Season 2
	11062, -- Ferocious Gladiator: Legion Season 4
	11013, -- Gladiator: Legion Season 2
	11061, -- Gladiator: Legion Season 4
	8667, -- Gladiator: Season 15
	10098, -- Gladiator: Warlords Season 2
	{ id = 12191, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Legion Season 7
	{ id = 11053, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Legion Season 4
	8666, -- Prideful Gladiator: Season 15
	9232, -- Primal Gladiator: Warlords Season 1
	9241, -- Rival: Warlords Season 1
	{ id = 11036, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Legion Season 2
	10097, -- Warmongering Gladiator: Warlords Season 3
	13203, -- Challenger: Battle for Azeroth Season 2
	11017, -- Challenger: Legion Season 1
	11039, -- Challenger: Legion Season 3
	12036, -- Challenger: Legion Season 5
	12169, -- Challenger: Legion Season 6
	8649, -- Challenger: Season 14
	{ id = 11045, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Legion Season 3
	{ id = 12194, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Legion Season 7
	13209, -- Duelist: Battle for Azeroth Season 2
	9240, -- Duelist: Warlords Season 1
	8643, -- Grievous Gladiator: Season 14
	{ id = 11032, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Legion Season 2
	{ id = 11021, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Legion Season 1
	11059, -- Rival: Legion Season 4
	10112, -- Rival: Warlords Season 3
	{ id = 9995, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Warlords Season 1
	{ id = 10120, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Warlords Season 3
	{ id = 9998, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Warlords Season 1
	8670, -- Challenger: Season 15
	10113, -- Challenger: Warlords Season 3
	13962, -- Combatant: Battle for Azeroth Season 4
	{ id = 11054, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Legion Season 4
	{ id = 12175, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Legion Season 6
	{ id = 12195, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Legion Season 7
	{ id = 9996, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Warlords Season 1
	{ id = 10106, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Warlords Season 2
	{ id = 10001, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Warlords Season 1
	{ id = 10119, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Warlords Season 3
	12171, -- Duelist: Legion Season 6
	12186, -- Duelist: Legion Season 7
	12045, -- Gladiator: Legion Season 5
	10110, -- Gladiator: Warlords Season 3
	{ id = 11052, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Legion Season 4
	{ id = 12042, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Legion Season 5
	11016, -- Rival: Legion Season 1
	11027, -- Rival: Legion Season 2
	11040, -- Rival: Legion Season 3
	12170, -- Rival: Legion Season 6
	10100, -- Rival: Warlords Season 2
	{ id = 11024, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Legion Season 1
	{ id = 11049, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Legion Season 3
	{ id = 11025, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Legion Season 1
	{ id = 11051, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Legion Season 4
	{ id = 12044, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Legion Season 5
	{ id = 12178, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Legion Season 6
	{ id = 10105, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Warlords Season 2
	11060, -- Challenger: Legion Season 4
	12187, -- Challenger: Legion Season 7
	9242, -- Challenger: Warlords Season 1
	10101, -- Challenger: Warlords Season 2
	11037, -- Cruel Gladiator: Legion Season 3
	{ id = 11034, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Legion Season 2
	{ id = 10118, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Warlords Season 3
	{ id = 11023, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Legion Season 1
	{ id = 11033, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Legion Season 2
	{ id = 11044, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Legion Season 3
	{ id = 11055, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Legion Season 4
	{ id = 10107, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Warlords Season 2
	12134, -- Dominant Gladiator: Legion Season 6
	11015, -- Duelist: Legion Season 1
	11026, -- Duelist: Legion Season 2
	10099, -- Duelist: Warlords Season 2
	12167, -- Gladiator: Legion Season 6
	{ id = 11020, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Legion Season 1
	{ id = 11047, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Legion Season 3
	{ id = 12038, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Legion Season 5
	{ id = 12177, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Legion Season 6
	{ id = 9997, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Warlords Season 1
	{ id = 10108, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Warlords Season 2
	{ id = 10116, faction = AchieveIt.Factions.ALLIANCE}, -- Guardian of the Alliance: Warlords Season 3
	{ id = 11031, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Legion Season 2
	{ id = 11046, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Legion Season 3
	{ id = 12176, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Legion Season 6
	{ id = 12192, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Legion Season 7
	{ id = 10109, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Warlords Season 2
	{ id = 10117, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Warlords Season 3
	12188, -- Rival: Legion Season 7
	{ id = 12040, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Legion Season 5
	{ id = 10104, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Warlords Season 2
	{ id = 11035, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Legion Season 2
	{ id = 11048, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Legion Season 3
	{ id = 12190, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Legion Season 7
	{ id = 10121, faction = AchieveIt.Factions.HORDE}, -- Soldier of the Horde: Warlords Season 3
	11028, -- Challenger: Legion Season 2
	{ id = 11022, faction = AchieveIt.Factions.ALLIANCE}, -- Defender of the Alliance: Legion Season 1
	{ id = 12174, faction = AchieveIt.Factions.HORDE}, -- Defender of the Horde: Legion Season 6
	11041, -- Duelist: Legion Season 3
	{ id = 10000, faction = AchieveIt.Factions.HORDE}, -- Guardian of the Horde: Warlords Season 1
	{ id = 11050, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Legion Season 4
	{ id = 12189, faction = AchieveIt.Factions.ALLIANCE}, -- Soldier of the Alliance: Legion Season 7
	10096, -- Wild Gladiator: Warlords Season 2
	14690, -- Sinful Gladiator: Shadowlands Season 1
	14531, -- Shadowlands Keystone Conqueror: Season One
	14277, -- The Accuser's Avowed
	14689, -- Gladiator: Shadowlands Season 1
	14365, -- Mythic: Sire Denathrius Title Reward: Sinbreaker
	14682, -- The Party Herald Title Reward: The Party Herald
	14688, -- Duelist: Shadowlands Season 1 Title Reward: Duelist
	14686, -- Challenger: Shadowlands Season 1 Title Reward: Challenger
	14685, -- Combatant: Shadowlands Season 1 Title Reward: Combatant
	14687, -- Rival: Shadowlands Season 1 Title Reward: Rival
	14691, -- Elite: Shadowlands Season 1 Title Reward: the Elite

};

local mountAchievements		= {
	12103,	-- ...And Chew Mana Buns
	{ id = 12933, faction = AchieveIt.Factions.ALLIANCE}, -- A Horde of Hoofbeats
	{ id = 12934, faction = AchieveIt.Factions.HORDE}, -- A Horde of Hoofbeats
	9713,	-- Awake the Drakes
	10018,	-- Draenor Pathfinder
	{ id = 614, faction = AchieveIt.Factions.ALLIANCE },	-- For The Alliance!
	{ id = 619, faction = AchieveIt.Factions.HORDE },	-- For The Horde!
	11474, -- Free For All, More For Me
	2091, -- Gladiator
	12961, -- Gladiator: Battle for Azeroth Season 1
	11987, -- Glory of the Argus Raider
	4845,	-- Glory of the Cataclysm Hero
	4853,	-- Glory of the Cataclysm Raider
	9396, -- Glory of the Draenor Hero
	8985, -- Glory of the Draenor Raider
	6169,	-- Glory of the Dragon Soul Raider
	5828,	-- Glory of the Firelands Raider
	10149, -- Glory of the Hellfire Raider
	2136,	-- Glory of the Hero
	4602,	-- Glory of the Icecrown Raider (10 player)
	4603,	-- Glory of the Icecrown Raider (25 player)
	11163, -- Glory of the Legion Hero
	11180, -- Glory of the Legion Raider
	8454,	-- Glory of the Orgrimmar Raider
	6927,	-- Glory of the Pandaria Hero
	6932,	-- Glory of the Pandaria Raider
	8124,	-- Glory of the Thundering Raider
	12806, -- Glory of the Uldir Raider
	12401, -- Glory of the Ulduar Raider
	12812, -- Glory of the Wartorn Hero
	9909, -- Heirloom Hoarder
	12910, -- Honor Level 125
	12895, -- Honor Level 15
	12911, -- Honor Level 150
	12914, -- Honor Level 250
	12903, -- Honor Level 40
	12917, -- Honor Level 500
	12906, -- Honor Level 70
	2143,	-- Leading the Cavalry
	{ id = 10355, faction = AchieveIt.Factions.HORDE },	-- Lord of the Reins
	{ id = 10356, faction = AchieveIt.Factions.ALLIANCE },	-- Lord of the Reins
	{ id = 8304, faction = AchieveIt.Factions.ALLIANCE },	-- Mount Parade
	{ id = 8302, faction = AchieveIt.Factions.HORDE },	-- Mount Parade
	{ id = 9598, faction = AchieveIt.Factions.ALLIANCE },	-- Mountacular
	{ id = 9599, faction = AchieveIt.Factions.HORDE },	-- Mountacular
	{ id = 2536, faction = AchieveIt.Factions.ALLIANCE}, -- Mountain o' Mounts
	{ id = 2537, faction = AchieveIt.Factions.HORDE}, -- Mountain o' Mounts
	{ id = 12932, faction = AchieveIt.Factions.ALLIANCE}, -- No Stable Big Enough
	{ id = 12931, faction = AchieveIt.Factions.HORDE}, -- No Stable Big Enough
	{ id = 6828, faction = AchieveIt.Factions.ALLIANCE },	-- Pandaren Ambassador
	{ id = 6827, faction = AchieveIt.Factions.HORDE },	-- Pandaren Ambassador
	11176,	-- Remember to Share
	5866,	-- The Molten Front Offensive
	{ id = 9540, faction = AchieveIt.Factions.ALLIANCE}, -- The Stable Master
	{ id = 9706, faction = AchieveIt.Factions.HORDE}, -- The Stable Master
	11066, -- Underbelly Tycoon
	{ id = 5328, faction = AchieveIt.Factions.ALLIANCE },	-- Veteran of the Alliance
	{ id = 5823, faction = AchieveIt.Factions.ALLIANCE },	-- Veteran of the Alliance II
	{ id = 5325, faction = AchieveIt.Factions.HORDE },	-- Veteran of the Horde
	{ id = 5824, faction = AchieveIt.Factions.HORDE },	-- Veteran of the Horde II
	{ id = 5329, faction = AchieveIt.Factions.ALLIANCE },	-- Warbound Veteran of the Alliance
	{ id = 5326, faction = AchieveIt.Factions.HORDE },	-- Warbringer of the Horde
	{ id = 7860, faction = AchieveIt.Factions.ALLIANCE },	-- We're Going to Need More Saddles
	{ id = 7862, faction = AchieveIt.Factions.HORDE },	-- We're Going to Need More Saddles
	2144,	-- What a Long, Strange Trip It's Been
	13517, -- Two Sides to Every Tale

	12989, -- Battle for Azeroth Pathfinder, Part One
	13994, -- Through the Depths of Visions
	11190, -- Broken Isles Pathfinder, Part One
	13931, -- Memories of Fel, Frost and Fire
	14145, -- Battle for Azeroth Keystone Master: Season Four
	13687, -- Glory of the Eternal Raider
	14146, -- Glory of the Ny'alotha Raider
	13315, -- Glory of the Dazar'alor Raider
	9550, -- Boldly, You Sought the Power of Ragnaros
	9496, -- Warlord's Deathwheel
	12069, -- Explore Argus
	8398, -- Ahead of the Curve: Garrosh Hellscream (10 player)
	8399, -- Ahead of the Curve: Garrosh Hellscream (25 player)
	13250, -- Battle for Azeroth Pathfinder, Part Two
	11446, -- Broken Isles Pathfinder, Part Two
	13541, -- Mecha-Done
	{ id = 13928, faction = AchieveIt.Factions.ALLIANCE}, -- Alterac Valley of Olde
	{ id = 13930, faction = AchieveIt.Factions.HORDE}, -- Alterac Valley of Olde
	{ id = 11005, faction = AchieveIt.Factions.HORDE}, -- Cruel Combatant
	{ id = 11008, faction = AchieveIt.Factions.ALLIANCE}, -- Cruel Combatant
	14532, -- Shadowlands Keystone Master: Season One
	14570, -- Twisting Corridors: Layer 8
	14322, -- Glory of the Shadowlands Hero
	14355, -- Glory of the Nathria Raider
	14689, -- Gladiator: Shadowlands Season 1

};

local petAchievements	= {
	9069,	-- An Awfully Big Adventure
	12930,	-- Battle Safari
	9805,	-- Big Rocketeer: Gold
	11233,	-- Broken Isles Safari
	8300,	-- Brutal Pet Brawler
	9685,	-- Draenor Safari
	9696,	-- Family Familiar
	12100,	-- Family Fighter
	7500,	-- Going to Need More Leashes
	1956,	-- Higher Learning
	12900,	-- Honor Level 20
	12916,	-- Honor Level 400
	12893,	-- Honor Level 5
	12723,	-- How to Keep a Mummy
	13062,	-- Lets Bee Friends
	2516,	-- Lil' Game Hunter
	6402,	-- Ling-Ting's Herbal Journey
	5875,	-- Littlest Pet Shop
	4478,	-- Looking For Multitudes
	12958,	-- Master of Minions
	5877,	-- Menagerie
	11856,	-- Pet Battle Challenge: Deadmines
	11765,	-- Pet Battle Challenge: Wailing Caverns
	12992,	-- Pet Emporium
	5876,	-- Petting Zoo
	3478, -- Pilgrim
	10412,	-- Poor Unfortunate Souls
	12431,	-- Post Haste
	6582,	-- Pro Pet Mob
	7934,	-- Raiding with Leashes
	8293,	-- Raiding with Leashes II: Attunement Edition
	9824,	-- Raiding with Leashes III: Drinkin' From the Sunwell
	12079,	-- Raiding with Leashes V: Cutaclysm
	5449,	-- Rock Lover
	1250,	-- Shop Smart, Shop Pet...Smart
	9643,	-- So. Many. Pets.
	7501,	-- That's a Lot of Pet Food
	9983,	-- That's Whack!
	5860,	-- The 'Unbeatable?' Pterodactyl: BEATEN.
	7521,	-- Time to Open a Pet Store
	12996,	-- Toybox Tycoon

	14143, -- Reeking of Visions
	8820, -- WoW's 10th Anniversary
	13279, -- Family Battler
	13766, -- Malowned
	13269, -- Pet Battle Challenge: Gnomeregan
	13627, -- Pet Battle Challenge: Stratholme
	13469, -- Raiding with Leashes VI: Pets of Pandaria
	13695, -- Team Aquashock

};

local tabardAchievements = {
	876,	-- Brutally Dedicated
	12863,	-- Dueling Master
	12290,	-- Family Brawler
	{ id = 3857, faction = AchieveIt.Factions.ALLIANCE },	-- Master of Isle of Conquest
	{ id = 3957, faction = AchieveIt.Factions.HORDE },	-- Master of Isle of Conquest
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
	{ id = 9630, faction = AchieveIt.Factions.ALLIANCE },	-- Defender of Draenor
	{ id = 9248, faction = AchieveIt.Factions.HORDE },	-- Defender of Draenor
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
	{ id = 12243, faction = AchieveIt.Factions.ALLIANCE}, -- Allied Races: Lightforged Draenei
	{ id = 12518, faction = AchieveIt.Factions.HORDE}, -- Allied Races: Mag'har Orc
	{ id = 12244, faction = AchieveIt.Factions.HORDE}, -- Allied Races: Nightborne
	{ id = 12242, faction = AchieveIt.Factions.ALLIANCE}, -- Allied Races: Void Elf
	14013, -- Allied Races: Mechagnome
	13206, -- Allied Races: Vulpera
	13163, -- Allied Races: Kul Tiran
	13161, -- Allied Races: Zandalari Troll

}

local itemAchievements = {
	9885,	-- Ace Tonk Commander
	{ id = 9914, faction = AchieveIt.Factions.HORDE },	-- Azeroth's Top Twenty Tunes
	{ id = 9912, faction = AchieveIt.Factions.ALLIANCE },	-- Azeroth's Top Twenty Tunes
	10876,	-- Battle on the Broken Isles
	12936,	-- Battle on Zandalar and Kul Tiras
	9817,	-- Big Powermonger: Gold
	9799,	-- Big Race Roadhog
	9811,	-- Big Wanderluster: Gold
	{ id = 10256, faction = AchieveIt.Factions.ALLIANCE },	-- Charting a Course
	{ id = 10258, faction = AchieveIt.Factions.HORDE },	-- Charting a Course
	12078,	-- Commander of Argus
	9761,	-- Darkmoon Racer Roadhog
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
	13504, -- Heritage of the Kul Tirans
	13503, -- Heritage of the Zandalari


	11175,	-- Higher Dimensional Learning
	1956,	-- Higher Learning
	12894,	-- Honor Level 10
	12912,	-- Honor Level 175
	12902,	-- Honor Level 30
	12905,	-- Honor Level 60
	12908,	-- Honor Level 90
	7908,	-- I Choose You
	6566,	-- Just a Pup
	5859,	-- Legacy of Leyara
	7433,	-- Newbie
	11427,	-- No Shellfish Endeavor
	{ id = 10255, faction = AchieveIt.Factions.HORDE },	-- Petty Officer
	{ id = 10172, faction = AchieveIt.Factions.ALLIANCE },	-- Petty Officer
	9785,	-- Powermonger: Gold
	6581,	-- Pro Pet Crew
	7385,	-- Pub Crawl
	9764,	-- Rocketeer: Gold
	10170,	-- Seaman
	7499,	-- Taming the World
	2096,	-- The Coin Master
	8348,	-- The Longest Day
	9673,	-- The Toymaster
	9394,	-- They Really Love Me
	9894,	-- Triumphant Turtle Tossing
	9792,	-- Wanderluster: Gold
	9838,	-- What A Strange, Interdimensional Trip It's Been
	{ id = 13285, faction = AchieveIt.Factions.ALLIANCE },	-- Upright Citizens
	14020, -- Pet Battle Challenge: Blackrock Depths
	14021, -- The Shadows Revealed

	13513, -- Available in Eight Colors
	11210, -- Fight for the Alliance
	11211, -- Fight for the Horde
	13502, -- Secret Fish and Where to Find Them
	13489, -- Secret Fish of Mechagon
	{ id =  8845, faction = AchieveIt.Factions.ALLIANCE}, -- As I Walk Through the Valley of the Shadow of Moon
	{ id =  8920, faction = AchieveIt.Factions.ALLIANCE}, -- Don't Let the Tala-door Hit You on the Way Out
	{ id =  8919, faction = AchieveIt.Factions.HORDE}, -- Don't Let the Tala-door Hit You on the Way Out
	{ id =  8927, faction = AchieveIt.Factions.ALLIANCE}, -- Nagrandeur
	{ id =  8928, faction = AchieveIt.Factions.HORDE}, -- Nagrandeur
	{ id =  8923, faction = AchieveIt.Factions.ALLIANCE}, -- Putting the Gore in Gorgrond
	{ id =  8924, faction = AchieveIt.Factions.HORDE}, -- Putting the Gore in Gorgrond
	{ id =  8671, faction = AchieveIt.Factions.HORDE}, -- You'll Get Caught Up In The... Frostfire!
	{ id = 13189, faction = AchieveIt.Factions.ALLIANCE}, -- The Second Rule of Brawler's Guild
	{ id = 13190, faction = AchieveIt.Factions.HORDE}, -- The Second Rule of Brawler's Guild
	14625, -- Battle in Shadowlands
	14721, -- It's In The Mix
	14766, -- Parasoling Toy Reward: Weathered Purple Parasol

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