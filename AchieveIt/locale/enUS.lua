local debug = false;
--[===[@debug@
debug = true;
--@end-debug@]===]

local L = LibStub("AceLocale-3.0"):NewLocale("AchieveIt", "enUS", true, debug);

-- Category labels
L["Allied Races"] = "Allied Races"
L["Bank Vouchers"] = "Bank Vouchers"
L["Battle Standards"] = "Battle Standards"
L["Blueprints"] = "Blueprints"
L["Champions"] = "Champions"
L["Characters"] = "Characters"
L["Cloaks"] = "Cloaks"
L["Glory"] = "Glory"
L["Heirlooms"] = "Heirlooms"
L["Levelling"] = "Levelling"
L["Lore"] = "Lore"
L["Map"] = "Map"
L["Order Hall Campaign"] = "Order Hall Campaign"
L["Pathfinder"] = "Pathfinder"
L["Progress"] = "Progress"
L["Riding"] = "Riding"
L["Shirts"] = "Shirts"
L["Tabards"] = "Tabards"
L["Teleports"] = "Teleports"
L["Treasure"] = "Treasure"
L["World Bosses"] = "World Bosses"

-- Expansion Features
L["Barn"] = "Barn"
L["Gladiator's Sanctum"] = "Gladiator's Sanctum"
L["Lumber Mill"] = "Lumber Mill"

-- Text output
L["Locate Category"] = "Locate Category"
L["No category found."] = "No category found."

-- Zones and Sub-zones
L["The Adamant Vaults"] = "The Adamant Vaults"
L["Coldheart Interstitia"] = C_ScenarioInfo.GetJailersTowerTypeString(4) -- "Coldheart Interstitia"
L["Mort'regar"] = C_ScenarioInfo.GetJailersTowerTypeString(5) -- "Mort'regar"
L["Lion's Landing"] = "Lion's Landing"
L["Runecarver"] = "Runecarver"
L["Skoldus Hall"] = C_ScenarioInfo.GetJailersTowerTypeString(1) -- "Skoldus Hall"
L["The Fracture Chambers"] = "The Fracture Chambers"
L["The Jailer's Gauntlet"] = "The Jailer's Gauntlet"
L["The Soulforges"] = C_ScenarioInfo.GetJailersTowerTypeString(3) -- "The Soulforges"
L["The Upper Reaches"] = "The Upper Reaches"
L["Twisting Corridors"] = C_ScenarioInfo.GetJailersTowerTypeString(0) -- "Twisting Corridors"
L["Valley of the Four Winds"] = "Valley of the Four Winds"

-- Scenarios
L["Arena of Annihilation"] = "Arena of Annihilation"
L["Blood in the Snow"] = "Blood in the Snow"
L["Dark Heart of Pandaria"] = "Dark Heart of Pandaria"
L["Domination Point"] = "Domination Point"
L["Greenstone Village"] = "Greenstone Village"
L["Theramore's Fall"] = "Theramore's Fall"

-- Dungeons
L["Return to Karazhan"] = "Return to Karazhan"

-- World Events
L["Day of the Dead"] = "Day of the Dead"

-- Factions


-- Manually Localised NPC names for locate category by target funtionality
-- A
L["Acidmaw"] = "Acidmaw"
L["Admiral Gar'an"] = "Admiral Gar'an"
L["Admiral Svirax"] = "Admiral Svirax"
L["Aknor Steelbringer"] = "Aknor Steelbringer"
L["Akunda's Aspect"] = "Akunda's Aspect"
L["Alyssia Moonstalker"] = "Alyssia Moonstalker" 
L["Amalgam of Corruption"] = "Amalgam of Corruption"
L["Amethyst Guardian"] = "Amethyst Guardian"
L["Anathos Firecaller"] = "Anathos Firecaller"
L["Anshal"] = "Anshal"
L["Anthar Forgemender"] = "Anthar Forgemender" 
L["Arcane Head"] = "Arcane Head"
L["Arcanist Tel'arn"] = "Arcanist Tel'arn"
L["Arcanotron"] = "Arcanotron"
L["Arion"] = "Arion"
L["Asaad"] = "Asaad"
L["Asara, Mother of Night"] = "Asara, Mother of Night"
L["Atrigan"] = "Atrigan"
L["Augh"] = "Augh"
-- B
L["Baelnor Lightbearer"] = "Baelnor Lightbearer" 
L["Bargast"] = "Bargast"
L["Baron Rivendare"] = "Baron Rivendare"
L["Baroness Frieda"] = "Baroness Frieda"
L["Belac"] = "Belac"
L["Blademaster Jubei'thos"] = "Blademaster Jubei'thos"
L["Bloodclaw"] = "Bloodclaw"
L["Borka the Brute"] = "Borka the Brute"
L["Brienna Nightfell"] = "Brienna Nightfell" 
L["Brother Joseph"] = "Brother Joseph"
L["Bonefang"] = "Bonefang"
-- C
L["Castellan Niklaus"] = "Castellan Niklaus"
L["Chief Engineer Ishkar"] = "Chief Engineer Ishkar"
L["Cobalt Guardian"] = "Cobalt Guardian"
L["Commander Ri'mok"] = "Commander Ri'mok"
L["Commander Sivara"] = "Commander Sivara"
L["Commander Springvale"] = "Commander Springvale"
L["Contracted Engineer"] = "Contracted Engineer"
L["Cruelfang"] = "Cruelfang"
-- D
L["Dam'ren"] = "Dam'ren"
L["Dazar, the First King"] = "Dazar, the First King"
L["Darkfang"] = "Darkfang"
L["Dausegne"] = "Dausegne"
L["Dessia the Decapitator"] = "Dessia the Decapitator"
L["Devos"] = "Devos"
L["Dia Darkwhisper"] = "Dia Darkwhisper"
L["Diima, Mother of Gloom"] = "Diima, Mother of Gloom"
L["Dreadwing"] = "Dreadwing"
L["Dreadfang"] = "Dreadfang"
L["Dreadscale"] = "Dreadscale"
L["Droman Oulfarran"] = "Droman Oulfarran"
L["Durumu"] = "Durumu"
L["Duskwing"] = "Duskwing"
-- E
L["Earthbreaker Haromm"] = "Earthbreaker Haromm"
L["Eck the Ferocious"] = "Eck the Ferocious"
L["Elder Asani"] = "Elder Asani"
L["Elder Regail"] = "Elder Regail"
L["Electron"] = "Electron"
L["Elementium Monstrosity"] = "Elementium Monstrosity"
L["Elisande"] = "Elisande"
L["Emeriss"] = "Emeriss"
L["Enforcer Sorka"] = "Enforcer Sorka"
L["Engine of Souls"] = "Engine of Souls"
L["Essence of Eonar"] = "Essence of Eonar"
L["Eydis"] = "Eydis"
L["Eye of Il'gynoth"] = "Eye of Il'gynoth"
-- F
L["F'harg"] = "F'harg"
L["Fa'thuul the Feared"] = "Fa'thuul the Feared"
L["Faultline"] = "Faultline"
L["Feludius"] = "Feludius"
L["Fjola"] = "Fjola"
L["Flaming Head"] = "Flaming Head"
L["Flying Snow"] = "Flying Snow"
L["Fragrant Lotus"] = "Fragrant Lotus"
L["Franzok"] = "Franzok"
L["Frida Ironbellows"] = "Frida Ironbellows"
L["Frost King Malakk"] = "Frost King Malakk"
L["Frozen Head"] = "Frozen Head"
L["Fury of N'Zoth"] = "Fury of N'Zoth"
-- G
L["Gal'darah"] = "Gal'darah"
L["General Erodus"] = "General Erodus"
L["General Grashaal"] = "General Grashaal"
L["Gnomercy 4.U."] = "Gnomercy 4.U."
L["Gonk's Aspect"] = "Gonk's Aspect"
L["Gorebound Felcaster"] = "Gorebound Felcaster"
L["Gormok the Impaler"] = "Gormok the Impaler"
L["Grong"] = "Grong"
L["Gruul"] = "Gruul"
L["Gurtogg Bloodboil"] = "Gurtogg Bloodboil"
-- H
L["Halondrus"] = "Halondrus"
L["Hans'gar"] = "Hans'gar"
L["Haiyan the Unstoppable"] = "Haiyan the Unstoppable"
L["Halkias"] = "Halkias"
L["He Softfoot"] = "He Softfoot"
L["Head Machinist Sparkflux"] = "Head Machinist Sparkflux"
L["Heart of the Mountain"] = "Heart of the Mountain"
L["Hecutis"] = "Hecutis"
L["High Priestess Mar'li"] = "High Priestess Mar'li"
L["Hisek the Swarmkeeper"] = "Hisek the Swarmkeeper"
L["Huntress Kasparian"] = "Huntress Kasparian"
L["Hymdall"] = "Hymdall"
L["Hyrja"] = "Hyrja"
-- I
L["Icehowl"] = "Icehowl"
L["Ignacious"] = "Ignacious"
L["Il'gynoth"] = "Il'gynoth"
L["Imperator Mar'gok"] = "Imperator Mar'gok"
L["Infinite Corruptor"] = "Infinite Corruptor"
L["Irieth Shadowstep"] = "Irieth Shadowstep" 
L["Ironcrusher"] = "Ironcrusher"
L["Iron Dragoon"] = "Iron Dragoon"
L["Iyyokuk the Lucid"] = "Iyyokuk the Lucid"
-- J
L["Jade Guardian"] = "Jade Guardian"
L["Jasper Guardian"] = "Jasper Guardian"
-- K
L["Ka'roz the Locust"] = "Ka'roz the Locust"
L["Ka'zir"] = "Ka'zir"
L["Kael'thas Sunstrider"] = "Kael'thas Sunstrider"
L["Kavina Grovesong"] = "Kavina Grovesong" 
L["Kazra'jin"] = "Kazra'jin"
L["Kaz'tik the Manipulator"] = "Kaz'tik the Manipulator"
L["Khadgar"] = "Khadgar"
L["Kil'ruk the Wind-Reaver"] = "Kil'ruk the Wind-Reaver"
L["Kimbul's Aspect"] = "Kimbul's Aspect"
L["King Dazar"] = "King Dazar"
L["Kin'tessa"] = "Kin'tessa"
L["Ko'ragh"] = "Ko'ragh"
L["Koramar"] = "Koramar"
L["Korven the Prime"] = "Korven the Prime"
L["Kuai the Brute"] = "Kuai the Brute"
L["Kyra"] = "Kyra"
-- L
L["Lady Blaumeux"] = "Lady Blaumeux"
L["Laminaria"] = "Laminaria"
L["Lihuvim"] = "Lihuvim"
L["Liu Flameheart"] = "Liu Flameheart"
L["Lethon"] = "Lethon"
L["Lord Stavros"] = "Lord Stavros"
L["Lu'lin"] = "Lu'lin"
-- M
L["Magmatron"] = "Magmatron"
L["Mal'Ganis"] = "Mal'Ganis"
L["Mannoroth"] = "Mannoroth"
L["Melador Valestrider"] = "Melador Valestrider" 
L["Meng the Demented"] = "Meng the Demented"
L["Ming the Cunning"] = "Ming the Cunning"
L["Moorabi"] = "Moorabi"
L["Marak the Bloodied"] = "Marak the Bloodied"
L["Ma'ra Grimfang"] = "Ma'ra Grimfang"
L["Mestrah"] = "Mestrah"
L["Manceroy Flamefist"] = "Manceroy Flamefist"
L["Margore"] = "Margore"
L["Millhouse Manastorm"] = "Millhouse Manastorm"
L["Mordretha"] = "Mordretha"
-- N
L["Nefarian"] = "Nefarian"
L["Naturalist Tel'arn"] = "Naturalist Tel'arn"
L["Nezir"] = "Nezir"
L["Noozle Whizzlestick"] = "Noozle Whizzlestick" 
L["Noura, Mother of Flames"] = "Noura, Mother of Flames"
-- O
-- P
L["Pa'ku's Aspect"] = "Pa'ku's Aspect"
L["Paceran the Virulent"] = "Paceran the Virulent"
L["Pashmar the Fanatical"] = "Pashmar the Fanatical"
L["Peroth'arn"] = "Peroth'arn"
L["Phemos"] = "Phemos"
L["P.O.S.T. Master"] = "P.O.S.T. Master"
L["Pol"] = "Pol"
L["Prince Keleseth"] = "Prince Keleseth"
L["Prince Taldaram"] = "Prince Taldaram"
L["Prince Valanar"] = "Prince Valanar"
L["Prophet Skitra"] = "Prophet Skitra"
L["Protector Kaolan"] = "Protector Kaolan"
L["Prototype of Absolution"] = "Prototype of Absolution"
L["Prototype of Duty"] = "Prototype of Duty"
L["Prototype of Renewal"] = "Prototype of Renewal"
L["Prototype of War"] = "Prototype of War"
-- Q
L["Qiang the Merciless"] = "Qiang the Merciless"
L["Quet'zal"] = "Quet'zal"
-- R
L["Ra'wani Kanae"] = "Ra'wani Kanae"
L["Railmaster Rocketspark"] = "Railmaster Rocketspark"
L["Rajh"] = "Rajh"
L["Remornia"] = "Remornia"
L["Rik'kal the Dissector"] = "Rik'kal the Dissector"
L["Rohash"] = "Rohash"
L["Ro'shak"] = "Ro'shak"
L["Rook Stonetoe"] = "Rook Stonetoe"
L["Runemaster Molgeim"] = "Runemaster Molgeim"
-- S
L["Saamul"] = "Saamul" 
L["Sathel the Accursed"] = "Sathel the Accursed"
L["Serissa Grimdabbler"] = "Serissa Grimdabbler" 
L["Shaabad"] = "Shaabad" 
L["Shatug"] = "Shatug"
L["Shocuul"] = "Shocuul" 
L["Siegemaster Mar'tak"] = "Siegemaster Mar'tak"
L["Signe"] = "Signe"
L["Silivaz the Zealous"] = "Silivaz the Zealous"
L["Sir Zeliek"] = "Sir Zeliek"
L["Sister Katherine"] = "Sister Katherine"
L["Skeer the Bloodseeker"] = "Skeer the Bloodseeker"
L["Skolex"] = "Skolex"
L["Skyja"] = "Skyja"
L["Slad'ran"] = "Slad'ran"
L["Solarist Tel'arn"] = "Solarist Tel'arn"
L["Soulbound Construct"] = "Soulbound Construct"
L["Steelbreaker"] = "Steelbreaker"
L["Stitchflesh's Creation"] = "Stitchflesh's Creation"
L["Stormcaller Brundir"] = "Stormcaller Brundir"
L["Subetai the Swift"] = "Subetai the Swift"
L["Suen"] = "Suen"
L["Sul the Sandcrawler"] = "Sul the Sandcrawler"
L["Sun Tenderheart"] = "Sun Tenderheart"
-- T
L["Taerar"] = "Taerar"
L["Tekris"] = "Tekris"
L["Terrastra"] = "Terrastra"
L["Thane Korth'azz"] = "Thane Korth'azz"
L["The Platinum Pummeler"] = "The Platinum Pummeler"
L["Theralion"] = "Theralion"
L["Thu'raya, Mother of the Cosmos"] = "Thu'raya, Mother of the Cosmos"
L["Toxitron"] = "Toxitron"
L["Tyrius Duskblade"] = "Tyrius Duskblade" 
-- U
L["Uu'nat"] = "Uu'nat"
-- V
L["Valiona"] = "Valiona"
L["Varo'then"] = "Varo'then"
L["Velanaa"] = "Velanaa"
L["Venomous Head"] = "Venomous Head"
L["Viceroy Nezhar"] = "Viceroy Nezhar"
-- W
L["Wavebinder Kardris"] = "Wavebinder Kardris"
L["Wrathion"] = "Wrathion"
-- X
L["Xaril the Poisoned Mind"] = "Xaril the Poisoned Mind"
-- Y
L["Ysondre"] = "Ysondre"
-- Z
L["Za'qul"] = "Za'qul"
L["Zaxasj the Speaker"] = "Zaxasj the Speaker"
L["Zek'voz"] = "Zek'voz"
L["Zian of the Endless Shadow"] = "Zian of the Endless Shadow"
L["Zoggosh"] = "Zoggosh"
L["Zo'phex"] = "Zo'phex"
L["Zovaal"] = "Zovaal"
L["Zul"] = "Zul"



-- Wrath of the Lich King Dungeons 

L["Elder Nadox"] = EJ_GetEncounterInfo(580) -- "Elder Nadox"
L["Jedoga Shadowseeker"] = EJ_GetEncounterInfo(582) -- "Jedoga Shadowseeker"
L["Herald Volazj"] = EJ_GetEncounterInfo(584) -- "Herald Volazj"

L["Krik'thir the Gatewatcher"] = EJ_GetEncounterInfo(585) -- "Krik'thir the Gatewatcher"
L["Hadronox"] = EJ_GetEncounterInfo(586) -- "Hadronox"
L["Anub'arak"] = EJ_GetEncounterInfo(587) -- "Anub'arak"

L["Trollgore"] = EJ_GetEncounterInfo(588) -- "Trollgore"
L["Novos the Summoner"] = EJ_GetEncounterInfo(589) -- "Novos the Summoner"
L["King Dred"] = EJ_GetEncounterInfo(590) -- "King Dred"

L["General Bjarngrim"] = EJ_GetEncounterInfo(597) -- "General Bjarngrim"
L["Volkhan"] = EJ_GetEncounterInfo(598) -- "Volkhan"
L["Loken"] = EJ_GetEncounterInfo(600) -- "Loken"

L["Maiden of Grief"] = EJ_GetEncounterInfo(605) -- "Maiden of Grief"
L["The Tribunal of Ages"] = EJ_GetEncounterInfo(606) -- "The Tribunal of Ages"
L["Sjonnir The Ironshaper"] = EJ_GetEncounterInfo(607) -- "Sjonnir The Ironshaper"

L["Forgemaster Garfrost"] = EJ_GetEncounterInfo(608) -- "Forgemaster Garfrost"
L["Scourgelord Tyrannus"] = EJ_GetEncounterInfo(610) -- "Scourgelord Tyrannus"


L["Bronjahm"] = EJ_GetEncounterInfo(615) -- "Bronjahm"
L["Devourer of Souls"] = EJ_GetEncounterInfo(616) -- "Devourer of Souls"

L["Grand Magus Telestra"] = EJ_GetEncounterInfo(618) -- "Grand Magus Telestra"
L["Anomalus"] = EJ_GetEncounterInfo(619) -- "Anomalus"
L["Keristrasza"] = EJ_GetEncounterInfo(621) -- "Keristrasza"

L["Ley-Guardian Eregos"] = EJ_GetEncounterInfo(625) -- "Ley-Guardian Eregos"

L["Ichoron"] = EJ_GetEncounterInfo(628) -- "Ichoron"
L["Zuramat the Obliterator"] = EJ_GetEncounterInfo(631) -- "Zuramat the Obliterator"
L["Cyanigosa"] = EJ_GetEncounterInfo(632) -- "Cyanigosa"

L["Eadric the Pure"] = EJ_GetEncounterInfo(635) -- "Eadric the Pure"
L["Argent Confessor Paletress"] = EJ_GetEncounterInfo(636) -- "Argent Confessor Paletress"
L["The Black Knight"] = EJ_GetEncounterInfo(637) -- "The Black Knight"

L["Prince Keleseth"] = EJ_GetEncounterInfo(638) -- "Prince Keleseth"

L["Svala Sorrowgrave"] = EJ_GetEncounterInfo(641) -- "Svala Sorrowgrave"
L["Skadi the Ruthless"] = EJ_GetEncounterInfo(643) -- "Skadi the Ruthless"
L["King Ymiron"] = EJ_GetEncounterInfo(644) -- "King Ymiron"

-- Wrath of the Lich King Raids

L["Anub'Rekhan"] = EJ_GetEncounterInfo(1601) -- "Anub'Rekhan"
L["Grand Widow Faerlina"] = EJ_GetEncounterInfo(1602) -- "Grand Widow Faerlina"
L["Maexxna"] = EJ_GetEncounterInfo(1603) -- "Maexxna"
L["Heigan the Unclean"] = EJ_GetEncounterInfo(1604) -- "Heigan the Unclean"
L["Loatheb"] = EJ_GetEncounterInfo(1606) -- "Loatheb"
L["The Four Horsemen"] = EJ_GetEncounterInfo(1609) -- "The Four Horsemen"
L["Patchwerk"] = EJ_GetEncounterInfo(1610) -- "Patchwerk"
L["Thaddius"] = EJ_GetEncounterInfo(1613) -- "Thaddius"
L["Sapphiron"] = EJ_GetEncounterInfo(1614) -- "Sapphiron"
L["Kel'Thuzad"] = EJ_GetEncounterInfo(1615) -- "Kel'Thuzad"

L["Flame Leviathan"] = EJ_GetEncounterInfo(1637) -- "Flame Leviathan"
L["Ignis the Furnace Master"] = EJ_GetEncounterInfo(1635) -- "Ignis the Furnace Master"
L["Razorscale"] = EJ_GetEncounterInfo(1639) -- "Razorscale"
L["XT-002 Deconstructor"] = EJ_GetEncounterInfo(1640) -- "XT-002 Deconstructor"
L["Assembly of Iron"] = EJ_GetEncounterInfo(1641) -- "Assembly of Iron"
L["Kologarn"] = EJ_GetEncounterInfo(1642) -- "Kologarn"
L["Auriaya"] = EJ_GetEncounterInfo(1643) -- "Auriaya"
L["Hodir"] = EJ_GetEncounterInfo(1644) -- "Hodir"
L["Thorim"] = EJ_GetEncounterInfo(1645) -- "Thorim"
L["Freya"] = EJ_GetEncounterInfo(1646) -- "Freya"
L["Mimiron"] = EJ_GetEncounterInfo(1647) -- "Mimiron"
L["General Vezax"] = EJ_GetEncounterInfo(1648) -- "General Vezax"
L["Yogg-Saron"] = EJ_GetEncounterInfo(1649) -- "Yogg-Saron"
L["Algalon the Observer"] = EJ_GetEncounterInfo(1650) -- "Algalon the Observer"

L["The Northrend Beasts"] = EJ_GetEncounterInfo(1618) -- "The Northrend Beasts"
L["Lord Jaraxxus"] = EJ_GetEncounterInfo(1619) -- "Lord Jaraxxus"
L["Faction Champions_A"] = EJ_GetEncounterInfo(1620) -- "Faction Champions"
L["Faction Champions_H"] = EJ_GetEncounterInfo(1621) -- "Faction Champions"
L["The Twin Val'kyr"] = EJ_GetEncounterInfo(1622) -- "The Twin Val'kyr"

L["Onyxia"] = EJ_GetEncounterInfo(1651) -- "Onyxia"

L["Lord Marrowgar"] = EJ_GetEncounterInfo(1624) -- "Lord Marrowgar"
L["Lady Deathwhisper"] = EJ_GetEncounterInfo(1625) -- "Lady Deathwhisper"
L["Icecrown Gunship Battle"] = EJ_GetEncounterInfo(1627) -- "Icecrown Gunship Battle"
L["Deathbringer Saurfang"] = EJ_GetEncounterInfo(1628) -- "Deathbringer Saurfang"
L["Festergut"] = EJ_GetEncounterInfo(1629) -- "Festergut"
L["Rotface"] = EJ_GetEncounterInfo(1630) -- "Rotface"
L["Professor Putricide"] = EJ_GetEncounterInfo(1631) -- "Professor Putricide"
L["Blood Prince Council"] = EJ_GetEncounterInfo(1632) -- "Blood Prince Council"
L["Blood-Queen Lana'thel"] = EJ_GetEncounterInfo(1633) -- "Blood-Queen Lana'thel"
L["Valithria Dreamwalker"] = EJ_GetEncounterInfo(1634) -- "Valithria Dreamwalker"
L["Sindragosa"] = EJ_GetEncounterInfo(1635) -- "Sindragosa"
L["The Lich King"] = EJ_GetEncounterInfo(1636) -- "The Lich King"

-- Cataclysm Dungeons

L["Rom'ogg Bonecrusher"] = EJ_GetEncounterInfo(105) -- "Rom'ogg Bonecrusher"
L["Corla, Herald of Twilight"] = EJ_GetEncounterInfo(106) -- "Corla, Herald of Twilight"
L["Karsh Steelbender"] = EJ_GetEncounterInfo(107) -- "Karsh Steelbender"
L["Ascendant Lord Obsidius"] = EJ_GetEncounterInfo(109) -- "Ascendant Lord Obsidius"

L["Glubtok"] = EJ_GetEncounterInfo(89) -- "Glubtok"
L["Helix Gearbreaker"] = EJ_GetEncounterInfo(90) -- "Helix Gearbreaker"
L["Foe Reaper 5000"] = EJ_GetEncounterInfo(91) -- "Foe Reaper 5000"
L["Admiral Ripsnarl"] = EJ_GetEncounterInfo(92) -- "Admiral Ripsnarl"
L["Captain Cookie"] = EJ_GetEncounterInfo(93) -- "\"Captain\" Cookie"
L["Vanessa VanCleef"] = EJ_GetEncounterInfo(95) -- "Vanessa VanCleef"

L["Echo of Sylvanas"] = EJ_GetEncounterInfo(323) -- "Echo of Sylvanas"
L["Echo of Tyrande"] = EJ_GetEncounterInfo(283) -- "Echo of Tyrande"

L["General Umbriss"] = EJ_GetEncounterInfo(131) -- "General Umbriss"
L["Erudax, the Duke of Below"] = EJ_GetEncounterInfo(134) -- "Erudax"

L["Temple Guardian Anhuur"] = EJ_GetEncounterInfo(124) -- "Temple Guardian Anhuur"
L["Earthrager Ptah"] = EJ_GetEncounterInfo(125) -- "Earthrager Ptah"
L["Rajh, Construct of the Sun"] = EJ_GetEncounterInfo(130) -- "Rajh"

L["Archbishop Benedictus"] = EJ_GetEncounterInfo(341) -- "Archbishop Benedictus"

L["High Prophet Barim"] = EJ_GetEncounterInfo(119) -- "High Prophet Barim"
L["Lockmaw"] = EJ_GetEncounterInfo(118) -- "Lockmaw"
L["Siamat"] = EJ_GetEncounterInfo(122) -- "Siamat, Lord of South Wind"

L["Baron Ashbury"] = EJ_GetEncounterInfo(96) -- "Baron Ashbury"
L["Lord Godfrey"] = EJ_GetEncounterInfo(100) -- "Lord Godfrey"

L["High Priestess Azil"] = EJ_GetEncounterInfo(113) -- "High Priestess Azil"

L["Asaad, Caliph of Zephyrs"] = EJ_GetEncounterInfo(116) -- "Asaad"

L["Lady Naz'jar"] = EJ_GetEncounterInfo(101) -- "Lady Naz'jar"
L["Ozumat"] = EJ_GetEncounterInfo(104) -- "Ozumat"

L["Peroth'arn"] = EJ_GetEncounterInfo(290) -- "Peroth'arn"
L["Mannoroth and Varo'then"] = EJ_GetEncounterInfo(292) -- "Mannoroth"

L["Halazzi"] = EJ_GetEncounterInfo(189) -- "Halazzi"
L["Daakara"] = EJ_GetEncounterInfo(191) -- "Daakara"


L["High Priest Venoxis"] = EJ_GetEncounterInfo(175) -- "High Priest Venoxis"
L["Bloodlord Mandokir"] = EJ_GetEncounterInfo(176) -- "Bloodlord Mandokir"
L["High Priestess Kilnara"] = EJ_GetEncounterInfo(181) -- "High Priestess Kilnara"
L["Jin'do the Godbreaker"] = EJ_GetEncounterInfo(185) -- "Jin'do the Godbreaker"

-- Cataclysm Raids

L["The Conclave of Wind"] = EJ_GetEncounterInfo(154) -- "Conclave of Wind"
L["Al'Akir"] = EJ_GetEncounterInfo(155) -- "Al'Akir"

L["Magmaw"] = EJ_GetEncounterInfo(170) -- "Magmaw"
L["Omnotron Defense System"] = EJ_GetEncounterInfo(169) -- "Omnotron Defense System"
L["Maloriak"] = EJ_GetEncounterInfo(173) -- "Maloriak"
L["Atramedes"] = EJ_GetEncounterInfo(171) -- "Atramedes"
L["Chimaeron"] = EJ_GetEncounterInfo(172) -- "Chimaeron"
L["Nefarian_BwD"] = EJ_GetEncounterInfo(174) -- "Nefarian_BwD"

L["Halfus Wyrmbreaker"] = EJ_GetEncounterInfo(156) -- "Halfus Wyrmbreaker"
L["Theralion and Valiona"] = EJ_GetEncounterInfo(157) -- "Valiona and Theralion"
L["Ascendant Council"] = EJ_GetEncounterInfo(158) -- "Ascendant Council"
L["Cho'gall"] = EJ_GetEncounterInfo(167) -- "Cho'gall"
L["Sinestra"] = EJ_GetEncounterInfo(168) --L["Sinestra"] = EJ_GetEncounterInfo(168)-- EJ_GetEncounterInfo(315,5) -- "Sinestra"

L["Shannox"] = EJ_GetEncounterInfo(195) -- "Shannox"
L["Lord Rhyolith"] = EJ_GetEncounterInfo(193) -- "Lord Rhyolith"
L["Beth'tilac"] = EJ_GetEncounterInfo(192) -- "Beth'tilac"
L["Alysrazor"] = EJ_GetEncounterInfo(194) -- "Alysrazor"
L["Baleroc"] = EJ_GetEncounterInfo(196) -- "Baleroc"
L["Majordomo Staghelm"] = EJ_GetEncounterInfo(197) -- "Majordomo Staghelm"
L["Ragnaros_Fl"] = EJ_GetEncounterInfo(198) -- "Ragnaros"

L["Morchok"] = EJ_GetEncounterInfo(311) -- "Morchok"
L["Warlord Zon'ozz"] = EJ_GetEncounterInfo(324) -- "Warlord Zon'ozz"
L["Yor'sahj the Unsleeping"] = EJ_GetEncounterInfo(325) -- "Yor'sahj the Unsleeping"
L["Hagara the Stormbinder"] = EJ_GetEncounterInfo(317) -- "Hagara the Stormbinder"
L["Ultraxion"] = EJ_GetEncounterInfo(331) -- "Ultraxion"
L["Warmaster Blackhorn"] = EJ_GetEncounterInfo(332) -- "Warmaster Blackhorn"
L["Spine of Deathwing"] = EJ_GetEncounterInfo(318) -- "Spine of Deathwing"
L["Madness of Deathwing"] = EJ_GetEncounterInfo(333) -- "Madness of Deathwing"

-- Pandaria Dungeons

L["Saboteur Kip'tilak"] = EJ_GetEncounterInfo(655) -- "Saboteur Kip'tilak"
L["Raigonn"] = EJ_GetEncounterInfo(649) -- "Raigonn"

L["Trial of the King"] = EJ_GetEncounterInfo(708) -- "Trial of the King"
L["Gekkan"] = EJ_GetEncounterInfo(690) -- "Gekkan"
L["Xin the Weaponmaster"] = EJ_GetEncounterInfo(698) -- "Xin the Weaponmaster"

L["Houndmaster Braun"] = EJ_GetEncounterInfo(660) -- "Houndmaster Braun"
L["Armsmaster Harlan"] = EJ_GetEncounterInfo(654) -- "Armsmaster Harlan"

L["Thalnos the Soulrender"] = EJ_GetEncounterInfo(688) -- "Thalnos the Soulrender"
L["Brother Korloff"] = EJ_GetEncounterInfo(670) -- "Brother Korloff"
L["High Inquisitor Whitemane"] = EJ_GetEncounterInfo(674) -- "High Inquisitor Whitemane"

L["Jandice Barov"] = EJ_GetEncounterInfo(663) -- "Jandice Barov"
L["Rattlegore"] = EJ_GetEncounterInfo(665) -- "Rattlegore"
L["Darkmaster Gandling"] = EJ_GetEncounterInfo(684) -- "Darkmaster Gandling"

L["Gu Cloudstrike"] = EJ_GetEncounterInfo(673) -- "Gu Cloudstrike"
L["Master Snowdrift"] = EJ_GetEncounterInfo(657) -- "Master Snowdrift"
L["Sha of Violence"] = EJ_GetEncounterInfo(685) -- "Sha of Violence"
L["Taran Zhu"] = EJ_GetEncounterInfo(686) -- "Taran Zhu"

L["Vizier Jin'bak"] = EJ_GetEncounterInfo(745) -- "Vizier Jin'bak"
L["Commander Vo'jak"] = EJ_GetEncounterInfo(738) -- "Commander Vo'jak"
L["General Pa'valak"] = EJ_GetEncounterInfo(692) -- "General Pa'valak"
L["Wing Leader Ner'onok"] = EJ_GetEncounterInfo(727) -- "Wing Leader Ner'onok"

L["Ook-Ook"] = EJ_GetEncounterInfo(668) -- "Ook-Ook"
L["Hoptallus"] = EJ_GetEncounterInfo(669) -- "Hoptallus"
L["Yan-Zhu the Uncasked"] = EJ_GetEncounterInfo(670) -- "Yan-Zhu the Uncasked"

L["Wise Mari"] = EJ_GetEncounterInfo(672) -- "Wise Mari"
L["Liu Flameheart"] = EJ_GetEncounterInfo(658)
L["Sha of Doubt"] = EJ_GetEncounterInfo(335) -- "Sha of Doubt"

-- Pandaria Raids

L["The Stone Guard"] = EJ_GetEncounterInfo(679) -- "The Stone Guard"
L["Feng the Accursed"] = EJ_GetEncounterInfo(689) -- "Feng the Accursed"
L["Gara'jal the Spiritbinder"] = EJ_GetEncounterInfo(682) -- "Gara'jal the Spiritbinder"
L["The Spirit Kings"] = EJ_GetEncounterInfo(687) -- "The Spirit Kings"
L["Elegon"] = EJ_GetEncounterInfo(726) -- "Elegon"
L["Will of the Emperor"] = EJ_GetEncounterInfo(677) -- "Will of the Emperor"

L["Imperial Vizier Zor'lok"] = EJ_GetEncounterInfo(745) -- "Imperial Vizier Zor'lok"
L["Blade Lord Ta'yak"] = EJ_GetEncounterInfo(744) -- "Blade Lord Ta'yak"
L["Garalon"] = EJ_GetEncounterInfo(713) -- "Garalon"
L["Wind Lord Mel'jarak"] = EJ_GetEncounterInfo(741) -- "Wind Lord Mel'jarak"
L["Amber-Shaper Un'sok"] = EJ_GetEncounterInfo(737) -- "Amber-Shaper Un'sok"
L["Grand Empress Shek'zeer"] = EJ_GetEncounterInfo(743) -- "Grand Empress Shek'zeer"

L["Protectors of the Endless"] = EJ_GetEncounterInfo(683) -- "Protectors of the Endless"
L["Tsulong"] = EJ_GetEncounterInfo(742) -- "Tsulong"
L["Lei Shi"] = EJ_GetEncounterInfo(729) -- "Lei Shi"
L["Sha of Fear"] = EJ_GetEncounterInfo(709) -- "Sha of Fear"

L["Jin'rokh the Breaker"] = EJ_GetEncounterInfo(827) -- "Jin'rokh the Breaker"
L["Horridon"] = EJ_GetEncounterInfo(819) -- "Horridon"
L["Council of Elders"] = EJ_GetEncounterInfo(816) -- "Council of Elders"
L["Tortos"] = EJ_GetEncounterInfo(825) -- "Tortos"
L["Megaera"] = EJ_GetEncounterInfo(821) -- "Megaera"
L["Ji-kun"] = EJ_GetEncounterInfo(828) -- "Ji-kun"
L["Durumu the Forgotten"] = EJ_GetEncounterInfo(818) -- "Durumu the Forgotten"
L["Primordius"] = EJ_GetEncounterInfo(820) -- "Primordius"
L["Dark Animus"] = EJ_GetEncounterInfo(824) -- "Dark Animus"
L["Iron Qon"] = EJ_GetEncounterInfo(817) -- "Iron Qon"
L["Twin Consorts"] = EJ_GetEncounterInfo(829) -- "Twin Consorts"
L["Lei Shen"] = EJ_GetEncounterInfo(832) -- "Lei Shen"
L["Ra-den"] = EJ_GetEncounterInfo(831)

L["Immerseus"] = EJ_GetEncounterInfo(852) -- "Immerseus"
L["The Fallen Protectors"] = EJ_GetEncounterInfo(849) -- "The Fallen Protectors"
L["Norushen"] = EJ_GetEncounterInfo(866) -- "Norushen"
L["Sha of Pride"] = EJ_GetEncounterInfo(867) -- "Sha of Pride"
L["Galakras"] = EJ_GetEncounterInfo(881) -- also EJ_GetEncounterInfo(881) for some reason -- "Galakras"
L["Iron Juggernaut"] = EJ_GetEncounterInfo(864) -- "Iron Juggernaut"
L["Kor'kron Dark Shaman"] = EJ_GetEncounterInfo(856) -- "Kor'kron Dark Shaman"
L["General Nazgrim"] = EJ_GetEncounterInfo(850) -- "General Nazgrim"
L["Malkorok"] = EJ_GetEncounterInfo(846) -- "Malkorok"
L["Spoils of Pandaria"] = EJ_GetEncounterInfo(870) -- "Spoils of Pandaria"
L["Thok the Bloodthirsty"] = EJ_GetEncounterInfo(851) -- "Thok the Bloodthirsty"
L["Siegecrafter Blackfuse"] = EJ_GetEncounterInfo(865) -- "Siegecrafter Blackfuse"
L["Paragons of the Klaxxi"] = EJ_GetEncounterInfo(853) -- "Paragons of the Klaxxi"
L["Garrosh Hellscream"] = EJ_GetEncounterInfo(869) -- "Garrosh Hellscream"

-- Warlords of Draenor Dungeons

L["Soulbinder Nyami"] = EJ_GetEncounterInfo(1186) -- "Soulbinder Nyami"
L["Azzakel"] = EJ_GetEncounterInfo(1216) -- "Azzakel"
L["Teron'gor"] = EJ_GetEncounterInfo(1225) -- "Teron'gor"

L["Magmolatus"] = EJ_GetEncounterInfo(893) -- "Magmolatus"
L["Gug'rokk"] = EJ_GetEncounterInfo(889) -- "Gug'rokk"

L["Rocketspark and Borka"] = EJ_GetEncounterInfo(1138) -- "Railmaster Rocketspark"
L["Nitrogg Thundertower"] =  EJ_GetEncounterInfo(1163) -- "Nitrogg Thundertower"

L["Fleshrender Nok'gar"] = EJ_GetEncounterInfo(1235) -- "Fleshrender Nok'gar"
L["Skulloc"] = EJ_GetEncounterInfo(1238) -- "Skulloc"

L["Sadana Bloodfury"] = EJ_GetEncounterInfo(1139) -- "Sadana Bloodfury"
L["Bonemaw"] = EJ_GetEncounterInfo(1140) -- "Bonemaw"
L["Ner'zhul"] = EJ_GetEncounterInfo(1160) -- "Ner'zhul"

L["Ranjit"] = EJ_GetEncounterInfo(965) --"Ranjit"
L["Rukhran"] = EJ_GetEncounterInfo(967) --"Rukhran"
L["High Sage Viryx"] = EJ_GetEncounterInfo(968) --"High Sage Viryx"

L["Witherbark"] = EJ_GetEncounterInfo(1214) --"Witherbark"
L["Archmage Sol"] = EJ_GetEncounterInfo(1208) --"Archmage Sol"
L["Yalnu"] = EJ_GetEncounterInfo(1210) -- "Yalnu"

L["Orebender Gor'ashan"] = EJ_GetEncounterInfo(1226) -- "Orebender Gor'ashan"
L["Ragewing the Untamed"] = EJ_GetEncounterInfo(1229) -- "Ragewing the Untamed"
L["Warlord Zaela"] = EJ_GetEncounterInfo(1234) -- "Warlord Zaela"

-- Warlords of Draenor Raids

L["Kargath Bladefist"] = EJ_GetEncounterInfo(1128) -- "Kargath Bladefist"
L["The Butcher"] = EJ_GetEncounterInfo(971) -- "The Butcher"
L["Tectus"] = EJ_GetEncounterInfo(1195) -- "Tectus"
L["Brackenspore"] = EJ_GetEncounterInfo(1196) -- "Brackenspore"
L["Twin Ogron"] = EJ_GetEncounterInfo(1148) -- "Twin Ogron"
L["Ko'ragh"] = EJ_GetEncounterInfo(1153) -- "Ko'ragh"
L["Imperator Mar'gok"] = EJ_GetEncounterInfo(1197) -- "Imperator Mar'gok"

L["Oregorger"] = EJ_GetEncounterInfo(1202) -- "Oregorger"
L["Hans'gar and Franzok"] = EJ_GetEncounterInfo(1155) -- "Hans'gar and Franzok"
L["Beastlord Darmac"] = EJ_GetEncounterInfo(1122) -- "Beastlord Darmac"
L["Gruul_BrF"] = EJ_GetEncounterInfo(1161) -- "Gruul_BrF"
L["Flamebender Ka'graz"] = EJ_GetEncounterInfo(1123) -- "Flamebender Ka'graz"
L["Operator Thogar"] = EJ_GetEncounterInfo(1147) -- "Operator Thogar"
L["The Blast Furnace"] = EJ_GetEncounterInfo(1154) -- "The Blast Furnace"
L["Kromog"] = EJ_GetEncounterInfo(1162) -- "Kromog"
L["Iron Maidens"] = EJ_GetEncounterInfo(1203) -- "Iron Maidens"
L["Blackhand"] = EJ_GetEncounterInfo(959) -- "Blackhand"

L["Hellfire Assault"] = EJ_GetEncounterInfo(1426) -- "Hellfire Assault"
L["Iron Reaver"] = EJ_GetEncounterInfo(1425) -- "Iron Reaver"
L["Kormrok"] = EJ_GetEncounterInfo(1392) -- "Kormrok"
L["Hellfire Council"] = EJ_GetEncounterInfo(1432) -- "Hellfire Council"
L["Kilrogg Deadeye"] = EJ_GetEncounterInfo(1396) -- "Kilrogg Deadeye"
L["Gorefiend"] = EJ_GetEncounterInfo(1372) -- "Gorefiend"
L["Shadow-Lord Iskar"] = EJ_GetEncounterInfo(1433) -- "Shadow-Lord Iskar"
L["Socrethar the Eternal"] = EJ_GetEncounterInfo(1427) -- "Socrethar the Eternal"
L["Fel Lord Zakuun"] = EJ_GetEncounterInfo(1391) -- "Fel Lord Zakuun"
L["Xhul'horac"] = EJ_GetEncounterInfo(1447) -- "Xhul'horac"
L["Tyrant Velhari"] = EJ_GetEncounterInfo(1394) -- "Tyrant Velhari"
L["Mannoroth_HFC"] = EJ_GetEncounterInfo(1395) -- "W"
L["Archimonde_HFC"] = EJ_GetEncounterInfo(1438) -- "Archimonde_HFC"

-- Legion Dungeons

L["Festerface"] = EJ_GetEncounterInfo(1693)-- "Festerface"
L["Millificent Manastorm"] = EJ_GetEncounterInfo(1688)-- "Millificent Manastorm"

L["Amalgam of Souls"] = EJ_GetEncounterInfo(1518)-- "Amalgam of Souls"
L["Illysanna Ravencrest"] = EJ_GetEncounterInfo(1653)-- "Illysanna Ravencrest"

L["Agronox"] = EJ_GetEncounterInfo(1905)-- "Agronox"
L["Mephistroth"] = EJ_GetEncounterInfo(1878)-- "Mephistroth"
L["Thrashbite the Scornful"] = EJ_GetEncounterInfo(1906)-- "Thrashbite the Scornful"

L["Patrol Captain Gerdo"] = EJ_GetEncounterInfo(1718)-- "Patrol Captain Gerdo"
L["Advisor Melandrus"] = EJ_GetEncounterInfo(1720)-- "Advisor Melandrus"

L["Dresaron"] = EJ_GetEncounterInfo(1656)-- "Dresaron"
L["Shade of Xavius"] = EJ_GetEncounterInfo(1657)-- "Shade of Xavius"

L["Warlord Parjesh"] = EJ_GetEncounterInfo(1480)-- "Warlord Parjesh"
L["Lady Hatecoil"] = EJ_GetEncounterInfo(1490)-- "Lady Hatecoil"
L["Wrath of Azshara"] = EJ_GetEncounterInfo(1492)-- "Wrath of Azshara"

L["Odyn_HoV"] = EJ_GetEncounterInfo(1489)-- "Odyn"

L["Opera Hall"] = EJ_GetEncounterInfo(1556)-- "Opera Event"
L["Moroes"] = EJ_GetEncounterInfo(1837)-- "Moroes"
L["Shade of Medivh"] = EJ_GetEncounterInfo(1817)-- "Shade of Medivh"
L["Mana Devourerl"] = EJ_GetEncounterInfo(1818)

L["Ymiron, the Fallen King"] = EJ_GetEncounterInfo(1502)-- "Ymiron, the Fallen King"
L["Helya_MoS"] = EJ_GetEncounterInfo(1663)-- "Helya_MoS"

L["Naraxas"] = EJ_GetEncounterInfo(1673)-- "Naraxas"

L["Zuraal the Ascended"] = EJ_GetEncounterInfo(1979)-- "Zuraal the Ascended"
L["Saprish"] = EJ_GetEncounterInfo(1980)-- "Saprish"
L["L'ura"] = EJ_GetEncounterInfo(1982)-- "L'ura"

L["Ivanyr"] = EJ_GetEncounterInfo(1497)-- "Ivanyr"
L["Corstilax"] = EJ_GetEncounterInfo(1498)-- "Corstilax"
L["Advisor Vandros"] = EJ_GetEncounterInfo(1501)-- "Advisor Vandros"

L["Ash'Golm"] = EJ_GetEncounterInfo(1468)-- "Ash'Golm"
L["Cordana Felsong"] = EJ_GetEncounterInfo(1470)-- "Cordana Felsong"

-- Legion Raids

L["Nythendra"] = EJ_GetEncounterInfo(1703) -- "Nythendra"
L["Il'gynoth, Heart of Corruption"] = EJ_GetEncounterInfo(1738) -- "Il'gynoth"
L["Elerethe Renferal"] = EJ_GetEncounterInfo(1744) -- "Elerethe Renferal"
L["Ursoc"] = EJ_GetEncounterInfo(1667) -- "Ursoc"
L["Dragons of Nightmare"] = EJ_GetEncounterInfo(1704) -- "Dragons of Nightmare"
L["Cenarius"] = EJ_GetEncounterInfo(1750) -- "Cenarius"
L["Xavius"] = EJ_GetEncounterInfo(1726) -- "Xavius"

L["Odyn_ToV"] = EJ_GetEncounterInfo(1819) -- "Odyn" 
L["Guarm"] = EJ_GetEncounterInfo(1830) -- "Guarm"
L["Helya_ToV"] = EJ_GetEncounterInfo(1829) -- "Helya"

L["Skorpyron"] = EJ_GetEncounterInfo(1706) --"Skorpyron"
L["Chronomatic Anomaly"] = EJ_GetEncounterInfo(1725) --"Chronomatic Anomaly"
L["Trilliax"] = EJ_GetEncounterInfo(1731) --"Trilliax"
L["Spellblade Aluriel"] = EJ_GetEncounterInfo(1751) --"Spellblade Aluriel"
L["Tichondrius"] = EJ_GetEncounterInfo(1762) --"Tichondrius"
L["Krosus"] = EJ_GetEncounterInfo(1713) --"Krosus"
L["High Botanist Tel'arn"] = EJ_GetEncounterInfo(1761) --"High Botanist Tel'arn"
L["Star Augur Etraeus"] = EJ_GetEncounterInfo(1732) --"Star Augur Etraeus"
L["Grand Magistrix Elisande"] = EJ_GetEncounterInfo(1743) --"Grand Magistrix Elisande"
L["Gul'dan"] = EJ_GetEncounterInfo(1737) -- Gul'dan

L["Goroth"] = EJ_GetEncounterInfo(1862) -- "Goroth"
L["Demonic Inquisition"] = EJ_GetEncounterInfo(1867) -- "Demonic Inquisition"
L["Harjatan"] = EJ_GetEncounterInfo(1856) -- "Harjatan"
L["Sisters of the Moon"] = EJ_GetEncounterInfo(1903) -- "Sisters of the Moon"
L["Mistress Sassz'ine"] = EJ_GetEncounterInfo(1861) -- "Mistress Sassz'ine"
L["The Desolate Host"] = EJ_GetEncounterInfo(1896) -- "The Desolate Host"
L["Maiden of Vigilance"] = EJ_GetEncounterInfo(1897) -- "Maiden of Vigilance"
L["Fallen Avatar"] = EJ_GetEncounterInfo(1873) -- "Fallen Avatar"
L["Kil'jaeden_ToS"] = EJ_GetEncounterInfo(1898) -- "Kil'jaeden_ToS"

L["Garothi Worldbreaker"] = EJ_GetEncounterInfo(1992) -- "Garothi Worldbreaker"
L["Felhounds of Sargeras"] = EJ_GetEncounterInfo(1987) -- "Felhounds of Sargeras"
L["Antoran High Command"] = EJ_GetEncounterInfo(1997) -- "Antoran High Command"
L["Portalkeeper Hasabel"] = EJ_GetEncounterInfo(1985) -- "Portalkeeper Hasabel"
L["Eonar the Life-Binder"] = EJ_GetEncounterInfo(2025) -- "Eonar the Life-Binder"
L["Imonar the Soulhunter"] = EJ_GetEncounterInfo(2009) -- "Imonar the Soulhunter"
L["Kin'garoth"] = EJ_GetEncounterInfo(2004) -- "Kin'garoth"
L["Varimathras"] = EJ_GetEncounterInfo(1983) -- "Varimathras"
L["The Coven of Shivarra"] = EJ_GetEncounterInfo(1986) -- "The Coven of Shivarra"
L["Aggramar"] = EJ_GetEncounterInfo(1984) -- "Aggramar"
L["Argus the Unmaker"] = EJ_GetEncounterInfo(2031) -- "Argus the Unmaker"

-- Battle for Azeroth Dungeons

L["Priestess Alun'za"] = EJ_GetEncounterInfo(2082) -- "Priestess Alun'za"
L["Yazma"] = EJ_GetEncounterInfo(2030) -- "Yazma"

L["Skycap'n Kragg"] = EJ_GetEncounterInfo(2102) -- "Skycap'n Kragg"
L["Harlan Sweete"] = EJ_GetEncounterInfo(2095) -- "Harlan Sweete"

L["Mchimba the Embalmer"] = EJ_GetEncounterInfo(2171) -- "Mchimba the Embalmer"
L["Dazar, The First King"] = EJ_GetEncounterInfo(2172)

L["King Gobbamak"] = EJ_GetEncounterInfo(2357) -- "King Gobbamak"
L["Gunker"] = EJ_GetEncounterInfo(2358) -- "Gunker"
L["Tussle Tonks"] = EJ_GetEncounterInfo(2336) -- "Tussle Tonks"
L["Machinist's Garden"] = EJ_GetEncounterInfo(2348) -- Machinist's Garden

L["Lord Stormsong"] = EJ_GetEncounterInfo(2155) -- "Lord Stormsong"
L["Vol'zith the Whisperer"] = EJ_GetEncounterInfo(2156) -- "Vol'zith the Whisperer"

L["Dread Captain Lockwood"] = EJ_GetEncounterInfo(2173) -- "Dread Captain Lockwood"
L["Viq'Goth"] = EJ_GetEncounterInfo(2140) -- "Viq'Goth"

L["Merektha"] = EJ_GetEncounterInfo(2143) -- "Merektha"
L["Avatar of Sethraliss"] = EJ_GetEncounterInfo(2145) -- "Avatar of Sethraliss"

L["Coin-Operated Crowd Pummeler"] = EJ_GetEncounterInfo(2109) -- "Coin-Operated Crowd Pummeler"
L["Mogul Razdunk"] = EJ_GetEncounterInfo(2116) -- "Mogul Razdunk"

L["Elder Leaxa"] = EJ_GetEncounterInfo(2157) -- "Elder Leaxa"
L["Sporecaller Zancha"] = EJ_GetEncounterInfo(2130) -- "Sporecaller Zanchu"
L["Unbound Abomination"] = EJ_GetEncounterInfo(2158) -- "Unbound Abomination"

L["Knight Captain Valyri"] = EJ_GetEncounterInfo(2099) -- "Knight Captain Valyri"
L["Overseer Korgus"] = EJ_GetEncounterInfo(2096) -- "Overseer Korgus"

L["Soulbound Goliath"] = EJ_GetEncounterInfo(2126) -- "Soulbound Goliath"
L["Gorak Tul"] = EJ_GetEncounterInfo(2129) -- "Gorak Tul"

-- Battle for Azeroth Raids

L["Taloc"] = EJ_GetEncounterInfo(2168) -- "Taloc"
L["MOTHER"] = EJ_GetEncounterInfo(2167) -- "MOTHER"
L["Zek'voz, Herald of N'Zoth"] = EJ_GetEncounterInfo(2169) -- "Zek'voz"
L["Fetid Devourer"] = EJ_GetEncounterInfo(2146) -- "Fetid Devourer"
L["Vectis"] = EJ_GetEncounterInfo(2166) -- "Vectis"
L["Zul, Reborn"] = EJ_GetEncounterInfo(2195) -- "Zul"
L["Mythrax the Unraveler"] = EJ_GetEncounterInfo(2194) -- "Mythrax the Unraveler"
L["G'huun"] = EJ_GetEncounterInfo(2147) -- "G'huun"


L["Champion of the Light"] = EJ_GetEncounterInfo(2333) -- "Champion of the Light"
L["Grong, the Jungle Lord"] = EJ_GetEncounterInfo(2325) -- "Grong"
L["Grong, the Revenant"] = EJ_GetEncounterInfo(2340) -- "Grong"
L["Jadefire Masters"] = EJ_GetEncounterInfo(2323) -- "Jadefire Masters"
L["Opulence"] = EJ_GetEncounterInfo(2342) -- "Opulence"
L["Conclave of the Chosen"] = EJ_GetEncounterInfo(2330) -- "Conclave of the Chosen"
L["King Rastakhan"] = EJ_GetEncounterInfo(2335) -- "King Rastakhan"
L["High Tinker Mechatorque"] = EJ_GetEncounterInfo(2334) -- "High Tinker Mechatorque"
L["Stormwall Blockade"] = EJ_GetEncounterInfo(2337) -- "Stormwall Blockade"
L["Lady Jaina Proudmoore"] = EJ_GetEncounterInfo(2343) -- "Lady Jaina Proudmoore"

L["The Restless Cabal"] = EJ_GetEncounterInfo(2328) -- "The Restless Cabal"
L["Uu'nat, Harbinger of the Void"] = EJ_GetEncounterInfo(2332) -- "Uu'nat, Harbinger of the Void"

L["Abyssal Commander Sivara"] = EJ_GetEncounterInfo(2352) -- "Abyssal Commander Sivara"
L["Blackwater Behemoth"] = EJ_GetEncounterInfo(2347) -- "Blackwater Behemoth"
L["Radiance of Azshara"] = EJ_GetEncounterInfo(2353) -- "Radiance of Azshara"
L["Lady Ashvane"] = EJ_GetEncounterInfo(2354) -- "Lady Ashvane"
L["Orgozoa"] = EJ_GetEncounterInfo(2351) -- "Orgozoa"
L["The Queen's Court"] = EJ_GetEncounterInfo(2359) -- "The Queen's Court"
L["Za'qul, Harbinger of Ny'alotha"] = EJ_GetEncounterInfo(2349) -- "Za'qul"
L["Queen Azshara"] = EJ_GetEncounterInfo(2361) -- "Queen Azshara"

L["Wrathion, the Black Emperor"] = EJ_GetEncounterInfo(2368) -- "Wrathion, the Black Emperor"
L["Maut"] = EJ_GetEncounterInfo(2365) -- "Maut"
L["The Prophet Skitra"] = EJ_GetEncounterInfo(2369) -- "The Prophet Skitra"
L["Dark Inquisitor Xanesh"] = EJ_GetEncounterInfo(2377) -- "Dark Inquisitor Xanesh"
L["The Hivemind"] = EJ_GetEncounterInfo(2372) -- "The Hivemind"
L["Shad'har the Insatiable"] = EJ_GetEncounterInfo(2367) -- "Shad'har the Insatiable"
L["Drest'agath"] = EJ_GetEncounterInfo(2373) -- "Drest'agath"
L["Il'gynoth, Corruption Reborn"] =  EJ_GetEncounterInfo(2374) -- "Il'gynoth, Corruption Reborn"
L["Vexiona"] = EJ_GetEncounterInfo(2370) -- "Vexiona"
L["Ra-den the Despoiled"] = EJ_GetEncounterInfo(2364) -- "Ra-den the Despoiled"
L["Carapace of N'Zoth"] = EJ_GetEncounterInfo(2366) -- "Carapace of N'Zoth"
L["N'Zoth the Corruptor"] = EJ_GetEncounterInfo(2375) -- "N'Zoth the Corruptor"

-- Shadowlands Dungeons

L["Hakkar the Soulflayer"] = EJ_GetEncounterInfo(2408) -- "Hakkar the Soulflayer"
L["The Manastorms"] = EJ_GetEncounterInfo(2409)-- "The Manastorms"
L["Dealer Xy'exa"] = EJ_GetEncounterInfo(2398)-- "Dealer Xy'exa"

L["Halkias, the Sin-Stained Goliath"] = EJ_GetEncounterInfo(2406) -- "Halkias, the Sin-Stained Goliath"
L["Echelon"] = EJ_GetEncounterInfo(2387) -- "Echelon"
L["Lord Chamberlain"] = EJ_GetEncounterInfo(2413) -- "Lord Chamberlain"

L["Ingra Maloch"] = EJ_GetEncounterInfo(2400) -- "Ingra Maloch"
L["Tred'ova"] = EJ_GetEncounterInfo(2405) -- "Tred'ova"

L["Doctor Ickus"] = EJ_GetEncounterInfo(2403) -- "Doctor Ickus"
L["Globgrog"] = EJ_GetEncounterInfo(2419) -- "Globgrog"

L["Executor Tarvold"] = EJ_GetEncounterInfo(2415) -- "Executor Tarvold"
L["General Kaal"] = EJ_GetEncounterInfo(2407) -- "General Kaal"

L["Devos, Paragon of Doubt"] = EJ_GetEncounterInfo(2412) -- "Devos, Paragon of Doubt"
L["Oryphrion"] = EJ_GetEncounterInfo(2414) -- "Oryphrion"

L["Amarth the Harvester"] = EJ_GetEncounterInfo(2391) -- "Amarth the Harvester"
L["Surgeon Stitchflesh"] = EJ_GetEncounterInfo(2392) --  Stitchflesh"
L["Nalthor the Rimebinder"] = EJ_GetEncounterInfo(2396) -- "Nalthor the Rimebinder"

L["Hylbrande"] = EJ_GetEncounterInfo(2448) -- "Hylbrande"
L["Mailroom Mayhem"] = EJ_GetEncounterInfo(2436) -- "Mailroom Mayhem"
L["Zo'phex the Sentinel"] = EJ_GetEncounterInfo(2437) -- "Zo'phex the Sentinel"

L["An Affront of Challengers"] = EJ_GetEncounterInfo(2397) -- "An Affront of Challengers"
L["Gorechop"] = EJ_GetEncounterInfo(2401) -- "Gorechop"
L["Mordretha, the Endless Empress"] = EJ_GetEncounterInfo(2417)

-- Shadowlands Raids

L["Artificer Xy'mox"] = EJ_GetEncounterInfo(2418) -- "Artificer Xy'mox"
L["Hungering Destroyer"] = EJ_GetEncounterInfo(2428) -- "Hungering Destroyer"
L["Huntsman Altimor"] = EJ_GetEncounterInfo(2429) -- "Huntsman Altimor"
L["Lady Inerva Darkvein"] = EJ_GetEncounterInfo(2420) -- "Lady Inerva Darkvein"
L["Shriekwing"] = EJ_GetEncounterInfo(2393) -- "Shriekwing"
L["Sire Denathrius"] = EJ_GetEncounterInfo(2424) -- "Sire Denathrius"
L["The Council of Blood"] = EJ_GetEncounterInfo(2426) -- "The Council of Blood"
L["Sludgefist"] = EJ_GetEncounterInfo(2394) -- "Sludgefist"
L["Stone Legion Generals"] = EJ_GetEncounterInfo(2425) -- "Stone Legion Generals"
L["Sun King's Salvation"] = EJ_GetEncounterInfo(2422) -- "Sun King's Salvation"

L["Fatescribe Roh-Kalo"] =  EJ_GetEncounterInfo(2447) --"Fatescribe Roh-Kalo"
L["Guardian of the First Ones"] = EJ_GetEncounterInfo(2446) -- "Guardian of the First Ones"
L["Kel'Thuzad_SoD"] = EJ_GetEncounterInfo(2440) -- 
L["Painsmith Raznal"] = EJ_GetEncounterInfo(2443) -- "Painsmith Raznal"
L["Remnant of Ner'zhul"] = EJ_GetEncounterInfo(2444) -- "Remnant of Ner'zhul"
L["Soulrender Dormazain"] = EJ_GetEncounterInfo(2445) -- "Soulrender Dormazain"
L["Sylvanas Windrunner_SoD"] = EJ_GetEncounterInfo(2441) -- "Sylvanas Windrunner"
L["The Eye of the Jailer"] = EJ_GetEncounterInfo(2442) -- "The Eye of the Jailer"
L["The Nine"] = EJ_GetEncounterInfo(2439) -- "The Nine"
L["The Tarragrue"] = EJ_GetEncounterInfo(2435) -- "The Tarragrue"

L["Vigilant Guardian"] = EJ_GetEncounterInfo(2458)
L["Dausegne, the Fallen Oracle"] = EJ_GetEncounterInfo(2459)
L["Prototype Pantheon"] = EJ_GetEncounterInfo(2460)
L["Lihuvim, Principal Architect"] = EJ_GetEncounterInfo(2461)
L["Skolex, the Insatiable Ravener"] = EJ_GetEncounterInfo(2465)
L["Halondrus the Reclaimer"] = EJ_GetEncounterInfo(2463)
L["Anduin Wrynn"] = EJ_GetEncounterInfo(2469)
L["Lords of Dread"] = EJ_GetEncounterInfo(2457)
L["Rygelon"] = EJ_GetEncounterInfo(2467)
L["The Jailer"] = EJ_GetEncounterInfo(2464)

--L[""] = ""

-- TODO: Replace more instance names with code like this:

--WotLK Dungeons
L["Utgarde Keep"] = GetLFGDungeonInfo(202)
L["Utgarde Pinnacle"] = GetLFGDungeonInfo(1020)
L["The Nexus"] = GetLFGDungeonInfo(225)
L["The Oculus"] = GetLFGDungeonInfo(206)
L["Azjol-Nerub"] = GetLFGDungeonInfo(204)
L["Ahn'kahet: The Old Kingdom"] = GetLFGDungeonInfo(218)
L["The Culling of Stratholme"] = GetLFGDungeonInfo(209)
L["Drak'Tharon Keep"] = GetLFGDungeonInfo(214)
L["Gundrak"] = GetLFGDungeonInfo(216)
L["The Violet Hold"] = GetLFGDungeonInfo(1172)
L["Halls of Stone"] = GetLFGDungeonInfo(208)
L["Halls of Lightning"] = GetLFGDungeonInfo(207)
L["Trial of the Champion"] = GetLFGDungeonInfo(245)
L["The Forge of Souls"] = GetLFGDungeonInfo(251)
L["Pit of Saron"] = GetLFGDungeonInfo(253)
L["Halls of Reflection"] = GetLFGDungeonInfo(255)

--WotLK Raids
L["Onyxia's Lair"] = GetLFGDungeonInfo(46)
L["The Obsidian Sanctum"] = GetLFGDungeonInfo(224)
L["Ruby Sanctum"] = GetLFGDungeonInfo(293)
L["The Eye of Eternity"] = GetLFGDungeonInfo(223)
L["Vault of Archavon"] = GetLFGDungeonInfo(239)
L["Trial of the Crusader"] = GetLFGDungeonInfo(246)
L["Naxxramas"] = GetLFGDungeonInfo(159)
L["Icecrown Citadel"] = GetLFGDungeonInfo(279)
L["Ulduar"] = GetLFGDungeonInfo(243)

--Cataclysm Dungeons
L["Blackrock Caverns"] = GetLFGDungeonInfo(303)
L["Throne of the Tides"] = GetLFGDungeonInfo(302)
L["The Stonecore"] = GetLFGDungeonInfo(307)
L["The Vortex Pinnacle"] = GetLFGDungeonInfo(311)
L["Grim Batol"] = GetLFGDungeonInfo(304)
L["Halls of Origination"] = GetLFGDungeonInfo(305)
L["Lost City of the Tol'vir"] = GetLFGDungeonInfo(312)
L["Deadmines"] = GetLFGDungeonInfo(6)
L["Shadowfang Keep"] = GetLFGDungeonInfo(8)
L["End Time"] = GetLFGDungeonInfo(435)
L["Well of Eternity"] = GetLFGDungeonInfo(437)
L["Hour of Twilight"] = GetLFGDungeonInfo(439)
L["Zul'Aman"] = GetLFGDungeonInfo(340)
L["Zul'Gurub"] = GetLFGDungeonInfo(334)

--Cataclysm Raids
L["Blackwing Descent"] = GetLFGDungeonInfo(313)
L["The Bastion of Twilight"] = GetLFGDungeonInfo(315)
L["Throne of the Four Winds"] = GetLFGDungeonInfo(317)
L["Firelands"] = GetLFGDungeonInfo(361)
L["Dragon Soul"] = GetLFGDungeonInfo(447)

-- Pandaria Factions

L["Darkspear Uprising"] = "Darkspear Uprising"
L["Golden Lotus"] = GetFactionInfoByID(1269) -- "Golden Lotus"
L["Order of the Cloud Serpent"] = GetFactionInfoByID(1271) -- "Order of the Cloud Serpent"
L["Shado-Pan"] = GetFactionInfoByID(1270) -- "Shado-Pan"
L["The August Celestials"] = GetFactionInfoByID(1341) -- "The August Celestials"
L["The Black Prince"] = GetFactionInfoByID(1359) -- "The Black Prince"
L["The Klaxxi"] = GetFactionInfoByID(1337) -- "The Klaxxi"
L["The Tillers"] = GetFactionInfoByID(1272) -- "The Tillers"

-- Pandaria Dungeons
L["Stormstout Brewery"] = GetLFGDungeonInfo(465)
L["Temple of the Jade Serpent"] = GetLFGDungeonInfo(464)
L["Mogu'shan Palace"] = GetLFGDungeonInfo(467)
L["Shado-Pan Monastery"] = GetLFGDungeonInfo(466)
L["Gate of the Setting Sun"] = GetLFGDungeonInfo(471)
L["Siege of Niuzao Temple"] = GetLFGDungeonInfo(554)
L["Scarlet Halls"] = GetLFGDungeonInfo(163)
L["Scarlet Monastery"] = GetLFGDungeonInfo(164)
L["Scholomance"] = GetLFGDungeonInfo(2)

-- Pandaria Raids
L["Mogu'shan Vaults"] = GetLFGDungeonInfo(531)
L["Heart of Fear"] = GetLFGDungeonInfo(533)
L["Terrace of Endless Spring"] = GetLFGDungeonInfo(526)
L["Throne of Thunder"] = GetLFGDungeonInfo(633)
L["Siege of Orgrimmar"] = GetLFGDungeonInfo(714)

-- Draenor Dungeons
L["Bloodmaul Slag Mines"] = GetLFGDungeonInfo(787)
L["Iron Docks"] = GetLFGDungeonInfo(821)
L["Auchindoun"] = GetLFGDungeonInfo(820)
L["Skyreach"] = GetLFGDungeonInfo(779)
L["Upper Blackrock Spire"] = GetLFGDungeonInfo(330)
L["The Everbloom"] = GetLFGDungeonInfo(824)
L["Grimrail Depot"] = GetLFGDungeonInfo(822)
L["Shadowmoon Burial Grounds"] = GetLFGDungeonInfo(783)

-- Draenor Raids
L["Highmaul"] = GetLFGDungeonInfo(895)
L["Blackrock Foundry"] = GetLFGDungeonInfo(898)
L["Hellfire Citadel"] = GetLFGDungeonInfo(987)


--Legion Dungeons
L["Assault on Violet Hold"] = GetLFGDungeonInfo(1208)
L["Black Rook Hold"] = GetLFGDungeonInfo(1204)
L["Cathedral of Eternal Night"] = GetLFGDungeonInfo(1488)
L["Court of Stars"] = GetLFGDungeonInfo(1318)
L["Darkheart Thicket"] = GetLFGDungeonInfo(1201)
L["Eye of Azshara"] = GetLFGDungeonInfo(1174)
L["Halls Of Valor"] = GetLFGDungeonInfo(1193)
L["Maw of Souls"] = GetLFGDungeonInfo(1191)
L["Neltharion's Lair"] = GetLFGDungeonInfo(1206)
L["Seat of the Triumvirate"] = GetLFGDungeonInfo(1535)
L["The Arcway"] = GetLFGDungeonInfo(1189)
L["Vault of the Wardens"] = GetLFGDungeonInfo(1043)

--Legion Raids
L["The Emerald Nightmare"] = GetLFGDungeonInfo(1348)
L["Trial of Valor"] = GetLFGDungeonInfo(1411)
L["The Nighthold"] = GetLFGDungeonInfo(1351)
L["Tomb of Sargeras"] = GetLFGDungeonInfo(1525)
L["Antorus, The Burning Throne"] = GetLFGDungeonInfo(1640)

--BfA 

L["Battle for Stromgarde"] = GetLFGDungeonInfo(1760)
L["Crimson Descent"] = GetLFGDungeonInfo(1732)
L["Assaults"] = "Assaults"
L["Battle for Darkshore"] = GetLFGDungeonInfo(1901)

-- BfA Dungeons

L["Atal'Dazar"] = GetLFGDungeonInfo(1669)
L["Freehold"] = GetLFGDungeonInfo(1704)
L["Kings' Rest"] = GetLFGDungeonInfo(1785)
L["Operation Mechagon"] = GetLFGDungeonInfo(2006)
L["Shrine of the Storm"] = GetLFGDungeonInfo(1710)
L["Siege of Boralus"] = GetLFGDungeonInfo(1700)
L["Temple of Sethraliss"] = GetLFGDungeonInfo(1695)
L["The MOTHERLODE!!"] = GetLFGDungeonInfo(1708)
L["The Underrot"] = GetLFGDungeonInfo(1712)
L["Tol Dagor"] = GetLFGDungeonInfo(1714)
L["Waycrest Manor"] = GetLFGDungeonInfo(1706)

-- BfA Raids

--L["Halls of Containment"] = GetLFGDungeonInfo(1731)
--L["Heart of Corruption"] = GetLFGDungeonInfo(1733)
L["Uldir"] = GetLFGDungeonInfo(1887)
L["Battle of Dazar'alor"] = GetLFGDungeonInfo(1944)
L["Crucible of Storms"] = GetLFGDungeonInfo(1954)
L["The Eternal Palace"] = GetLFGDungeonInfo(2016)
L["Ny'alotha, the Waking City"] = GetLFGDungeonInfo(2035)

-- Shadowlands Dungeons

L["De Other Side"] = GetLFGDungeonInfo(2108)
L["Halls of Atonement"] = GetLFGDungeonInfo(2119)
L["Mists of Tirna Scithe"] = GetLFGDungeonInfo(2120)
L["Plaguefall"] = GetLFGDungeonInfo(2121)
L["Sanguine Depths"] = GetLFGDungeonInfo(2117)
L["Spires of Ascension"] = GetLFGDungeonInfo(2122)
L["Tazavesh, the Veiled Market"] = GetLFGDungeonInfo(2225)
L["The Necrotic Wake"] = GetLFGDungeonInfo(2123)
L["Theater of Pain"] = GetLFGDungeonInfo(2124)

L["Sepulcher of the First Ones"] = GetLFGDungeonInfo(2288)

-- Shadowlands Factions

L["Kyrian"] = "Kyrian"
L["Necrolords"] = "Necrolords"
L["Night Fae"] = "Night Fae"
L["Venthyr"] = "Venthyr"

-- Archaeology
L["Dwarf"] = GetArchaeologyRaceInfoByID(1)
L["Night Elf"] = GetArchaeologyRaceInfoByID(4)
L["Orc"] = GetArchaeologyRaceInfoByID(6)
L["Tol'vir"] = GetArchaeologyRaceInfoByID(7)
L["Mantid"] = GetArchaeologyRaceInfoByID(29)
L["Pandaren"] = GetArchaeologyRaceInfoByID(229)
L["Mogu"] = GetArchaeologyRaceInfoByID(231)
L["Arakkoa"] = GetArchaeologyRaceInfoByID(315)
L["Draenor Clans"] = GetArchaeologyRaceInfoByID(350)
L["Ogre"] = GetArchaeologyRaceInfoByID(382)


-- Unused Archaeology
--L["Draenei"] = GetArchaeologyRaceInfoByID(2)
--L["Fossil"] = GetArchaeologyRaceInfoByID(3)
--L["Nerubian"] = GetArchaeologyRaceInfoByID(5)
--L["Troll"] = GetArchaeologyRaceInfoByID(8)
--L["Vrykul"] = GetArchaeologyRaceInfoByID(27)
--L["Highborne"] = GetArchaeologyRaceInfoByID(404)
--L["Highmountain Tauren"] = GetArchaeologyRaceInfoByID(406)
--L["Demonic"] = GetArchaeologyRaceInfoByID(408)


