local L = LibStub("AceLocale-3.0"):NewLocale("AchieveIt", "ruRU");
if not L then return end

-- Category labels
--L["Allied Races"] = ""
L["Bank Vouchers"] = "Сертификаты банковского хранилища"
L["Battle Standards"] = "Боевые знамена"
--L["Blueprints"] = ""
--L["Champions"] = ""
--L["Characters"] = ""
L["Cloaks"] = "Плащи"
--L["Glory"] = ""
L["Heirlooms"] = "Наследуемые предметы"
--L["Levelling"] = ""
--L["Lore"] = ""
--L["Map"] = ""
--L["Order Hall Campaign"] = ""
--L["Pathfinder"] = ""
--L["Progress"] = ""
--L["Riding"] = ""
L["Shirts"] = "Рубашки"
L["Tabards"] = "Накидки"
--L["Teleports"] = ""
--L["Treasure"] = ""
L["World Bosses"] = "Мировые боссы"

-- Expansion Features
--L["Barn"] = ""
--L["Gladiator's Sanctum"] = ""
--L["Lumber Mill"] = ""

-- Text output
L["Locate Category"] = "Выберите категорию"
L["No category found"] = "Категория не найдена"

-- Zones and Sub-zones
--L["Adamant Vaults"] = ""
--L["Runecarver"] = ""
--L["The Fracture Chambers"] = ""
--L["The Upper Reaches"] = ""
--L["Valley of the Four Winds"] = ""

-- Scenarios
L["Arena of Annihilation"] = "Арена Истребления"
L["Blood in the Snow"] = "Кровь на снегу"
L["Dark Heart of Pandaria"] = "Темное сердце Пандарии"
L["Domination Point"] = "Крепость Покорителей"
L["Greenstone Village"] = "Деревня Зеленой Скалы"
L["Lion's Landing"] = "Львиный лагерь"
L["Theramore's Fall"] = "Падение Терамора"

-- Dungeons
--L["Return to Karazhan"] = ""

-- World Events
--L["Day of the Dead"] = ""

-- Manually Localised NPC names for locate category by target funtionality
-- A
--L["Acidmaw"] = "Acidmaw"
--L["Admiral Gar'an"] = "Admiral Gar'an"
--L["Admiral Svirax"] = "Admiral Svirax"
--L["Aknor Steelbringer"] = "Aknor Steelbringer"
--L["Akunda's Aspect"] = "Akunda's Aspect"
--L["Alyssia Moonstalker"] = "Alyssia Moonstalker" 
--L["Amalgam of Corruption"] = "Amalgam of Corruption"
--L["Amethyst Guardian"] = "Amethyst Guardian"
--L["Anathos Firecaller"] = "Anathos Firecaller"
--L["Anshal"] = "Anshal"
--L["Anthar Forgemender"] = "Anthar Forgemender" 
--L["Arcane Head"] = "Arcane Head"
--L["Arcanist Tel'arn"] = "Arcanist Tel'arn"
--L["Arcanotron"] = "Arcanotron"
--L["Arion"] = "Arion"
--L["Asara, Mother of Night"] = "Asara, Mother of Night"
--L["Atrigan"] = "Atrigan"
--L["Augh"] = "Augh"
-- B
--L["Baelnor Lightbearer"] = "Baelnor Lightbearer" 
--L["Bargast"] = "Bargast"
--L["Baron Rivendare"] = "Baron Rivendare"
--L["Baroness Frieda"] = "Baroness Frieda"
--L["Belac"] = "Belac"
--L["Blademaster Jubei'thos"] = "Blademaster Jubei'thos"
--L["Bloodclaw"] = "Bloodclaw"
--L["Brienna Nightfell"] = "Brienna Nightfell" 
--L["Brother Joseph"] = "Brother Joseph"
--L["Bonefang"] = "Bonefang"
-- C
--L["Castellan Niklaus"] = "Castellan Niklaus"
--L["Chief Engineer Ishkar"] = "Chief Engineer Ishkar"
--L["Cobalt Guardian"] = "Cobalt Guardian"
--L["Commander Ri'mok"] = "Commander Ri'mok"
--L["Commander Sivara"] = "Commander Sivara"
--L["Commander Springvale"] = "Commander Springvale"
--L["Contracted Engineer"] = "Contracted Engineer"
--L["Cruelfang"] = "Cruelfang"
-- D
--L["Dam'ren"] = "Dam'ren"
--L["Dazar, the First King"] = "Dazar, the First King"
--L["Darkfang"] = "Darkfang"
--L["Dessia the Decapitator"] = "Dessia the Decapitator"
--L["Devos"] = "Devos"
--L["Dia Darkwhisper"] = "Dia Darkwhisper"
--L["Diima, Mother of Gloom"] = "Diima, Mother of Gloom"
--L["Dreadwing"] = "Dreadwing"
--L["Dreadfang"] = "Dreadfang"
--L["Dreadscale"] = "Dreadscale"
--L["Droman Oulfarran"] = "Droman Oulfarran"
--L["Durumu"] = "Durumu"
--L["Duskwing"] = "Duskwing"
-- E
--L["Earthbreaker Haromm"] = "Earthbreaker Haromm"
--L["Eck the Ferocious"] = "Eck the Ferocious"
--L["Elder Asani"] = "Elder Asani"
--L["Elder Regail"] = "Elder Regail"
--L["Electron"] = "Electron"
--L["Elementium Monstrosity"] = "Elementium Monstrosity"
--L["Elisande"] = "Elisande"
--L["Emeriss"] = "Emeriss"
--L["Enforcer Sorka"] = "Enforcer Sorka"
--L["Engine of Souls"] = "Engine of Souls"
--L["Essence of Eonar"] = "Essence of Eonar"
--L["Eydis"] = "Eydis"
--L["Eye of Il'gynoth"] = "Eye of Il'gynoth"
-- F
--L["F'harg"] = "F'harg"
--L["Fa'thuul the Feared"] = "Fa'thuul the Feared"
--L["Faultline"] = "Faultline"
--L["Feludius"] = "Feludius"
--L["Fjola"] = "Fjola"
--L["Flaming Head"] = "Flaming Head"
--L["Flying Snow"] = "Flying Snow"
--L["Fragrant Lotus"] = "Fragrant Lotus"
--L["Franzok"] = "Franzok"
--L["Frida Ironbellows"] = "Frida Ironbellows"
--L["Frost King Malakk"] = "Frost King Malakk"
--L["Frozen Head"] = "Frozen Head"
--L["Fury of N'Zoth"] = "Fury of N'Zoth"
-- G
--L["Gal'darah"] = "Gal'darah"
--L["General Erodus"] = "General Erodus"
--L["General Grashaal"] = "General Grashaal"
--L["Gnomercy 4.U."] = "Gnomercy 4.U."
--L["Gonk's Aspect"] = "Gonk's Aspect"
--L["Gorebound Felcaster"] = "Gorebound Felcaster"
--L["Gormok the Impaler"] = "Gormok the Impaler"
--L["Gruul"] = "Gruul"
--L["Gurtogg Bloodboil"] = "Gurtogg Bloodboil"
-- H
--L["Hans'gar"] = "Hans'gar"
--L["Haiyan the Unstoppable"] = "Haiyan the Unstoppable"
--L["Halkias"] = "Halkias"
--L["He Softfoot"] = "He Softfoot"
--L["Head Machinist Sparkflux"] = "Head Machinist Sparkflux"
--L["Heart of the Mountain"] = "Heart of the Mountain"
--L["Hecutis"] = "Hecutis"
--L["High Priestess Mar'li"] = "High Priestess Mar'li"
--L["Hisek the Swarmkeeper"] = "Hisek the Swarmkeeper"
--L["Huntress Kasparian"] = "Huntress Kasparian"
--L["Hymdall"] = "Hymdall"
--L["Hyrja"] = "Hyrja"
-- I
--L["Icehowl"] = "Icehowl"
--L["Ignacious"] = "Ignacious"
--L["Il'gynoth"] = "Il'gynoth"
--L["Imperator Mar'gok"] = "Imperator Mar'gok"
--L["Infinite Corruptor"] = "Infinite Corruptor"
--L["Irieth Shadowstep"] = "Irieth Shadowstep" 
--L["Ironcrusher"] = "Ironcrusher"
--L["Iron Dragoon"] = "Iron Dragoon"
--L["Iyyokuk the Lucid"] = "Iyyokuk the Lucid"
-- J
--L["Jade Guardian"] = "Jade Guardian"
--L["Jasper Guardian"] = "Jasper Guardian"
-- K
--L["Ka'roz the Locust"] = "Ka'roz the Locust"
--L["Ka'zir"] = "Ka'zir"
--L["Kael'thas Sunstrider"] = "Kael'thas Sunstrider"
--L["Kavina Grovesong"] = "Kavina Grovesong" 
--L["Kazra'jin"] = "Kazra'jin"
--L["Kaz'tik the Manipulator"] = "Kaz'tik the Manipulator"
--L["Khadgar"] = "Khadgar"
--L["Kil'ruk the Wind-Reaver"] = "Kil'ruk the Wind-Reaver"
--L["Kimbul's Aspect"] = "Kimbul's Aspect"
--L["Ko'ragh"] = "Ko'ragh"
--L["Korven the Prime"] = "Korven the Prime"
--L["Kuai the Brute"] = "Kuai the Brute"
--L["Kyra"] = "Kyra"
-- L
--L["Lady Blaumeux"] = "Lady Blaumeux"
--L["Laminaria"] = "Laminaria"
--L["Liu Flameheart"] = "Liu Flameheart"
--L["Lethon"] = "Lethon"
--L["Lord Stavros"] = "Lord Stavros"
--L["Lu'lin"] = "Lu'lin"
-- M
--L["Magmatron"] = "Magmatron"
--L["Mannoroth"] = "Mannoroth"
--L["Melador Valestrider"] = "Melador Valestrider" 
--L["Meng the Demented"] = "Meng the Demented"
--L["Ming the Cunning"] = "Ming the Cunning"
--L["Moorabi"] = "Moorabi"
--L["Marak the Bloodied"] = "Marak the Bloodied"
--L["Ma'ra Grimfang"] = "Ma'ra Grimfang"
--L["Mestrah"] = "Mestrah"
--L["Manceroy Flamefist"] = "Manceroy Flamefist"
--L["Margore"] = "Margore"
--L["Millhouse Manastorm"] = "Millhouse Manastorm"
-- N
--L["Nefarian"] = "Nefarian"
--L["Naturalist Tel'arn"] = "Naturalist Tel'arn"
--L["Nezir"] = "Nezir"
--L["Noozle Whizzlestick"] = "Noozle Whizzlestick" 
--L["Noura, Mother of Flames"] = "Noura, Mother of Flames"
-- O
-- P
--L["Pa'ku's Aspect"] = "Pa'ku's Aspect"
--L["Paceran the Virulent"] = "Paceran the Virulent"
--L["Pashmar the Fanatical"] = "Pashmar the Fanatical"
--L["Peroth'arn"] = "Peroth'arn"
--L["Phemos"] = "Phemos"
--L["P.O.S.T. Master"] = "P.O.S.T. Master"
--L["Pol"] = "Pol"
--L["Prince Keleseth"] = "Prince Keleseth"
--L["Prince Taldaram"] = "Prince Taldaram"
--L["Prince Valanar"] = "Prince Valanar"
--L["Prophet Skitra"] = "Prophet Skitra"
--L["Protector Kaolan"] = "Protector Kaolan"
-- Q
--L["Qiang the Merciless"] = "Qiang the Merciless"
--L["Quet'zal"] = "Quet'zal"
-- R
--L["Ra'wani Kanae"] = "Ra'wani Kanae"
--L["Railmaster Rocketspark"] = "Railmaster Rocketspark"
--L["Remornia"] = "Remornia"
--L["Rik'kal the Dissector"] = "Rik'kal the Dissector"
--L["Rohash"] = "Rohash"
--L["Ro'shak"] = "Ro'shak"
--L["Rook Stonetoe"] = "Rook Stonetoe"
--L["Runemaster Molgeim"] = "Runemaster Molgeim"
-- S
--L["Saamul"] = "Saamul" 
--L["Sathel the Accursed"] = "Sathel the Accursed"
--L["Serissa Grimdabbler"] = "Serissa Grimdabbler" 
--L["Shaabad"] = "Shaabad" 
--L["Shatug"] = "Shatug"
--L["Shocuul"] = "Shocuul" 
--L["Siegemaster Mar'tak"] = "Siegemaster Mar'tak"
--L["Signe"] = "Signe"
--L["Silivaz the Zealous"] = "Silivaz the Zealous"
--L["Sir Zeliek"] = "Sir Zeliek"
--L["Sister Katherine"] = "Sister Katherine"
--L["Skeer the Bloodseeker"] = "Skeer the Bloodseeker"
--L["Skyja"] = "Skyja"
--L["Slad'ran"] = "Slad'ran"
--L["Solarist Tel'arn"] = "Solarist Tel'arn"
--L["Soulbound Construct"] = "Soulbound Construct"
--L["Steelbreaker"] = "Steelbreaker"
--L["Stitchflesh's Creation"] = "Stitchflesh's Creation"
--L["Stormcaller Brundir"] = "Stormcaller Brundir"
--L["Subetai the Swift"] = "Subetai the Swift"
--L["Suen"] = "Suen"
--L["Sul the Sandcrawler"] = "Sul the Sandcrawler"
--L["Sun Tenderheart"] = "Sun Tenderheart"
-- T
--L["Taerar"] = "Taerar"
--L["Tekris"] = "Tekris"
--L["Terrastra"] = "Terrastra"
--L["Thane Korth'azz"] = "Thane Korth'azz"
--L["The Platinum Pummeler"] = "The Platinum Pummeler"
--L["Theralion"] = "Theralion"
--L["Thu'raya, Mother of the Cosmos"] = "Thu'raya, Mother of the Cosmos"
--L["Toxitron"] = "Toxitron"
--L["Tyrius Duskblade"] = "Tyrius Duskblade" 
-- U
--L["Uu'nat"] = "Uu'nat"
-- V
--L["Valiona"] = "Valiona"
--L["Velanaa"] = "Velanaa"
--L["Venomous Head"] = "Venomous Head"
--L["Viceroy Nezhar"] = "Viceroy Nezhar"
-- W
--L["Wavebinder Kardris"] = "Wavebinder Kardris"
--L["Wrathion"] = "Wrathion"
-- X
--L["Xaril the Poisoned Mind"] = "Xaril the Poisoned Mind"
-- Y
--L["Ysondre"] = "Ysondre"
-- Z
--L["Zaxasj the Speaker"] = "Zaxasj the Speaker"
--L["Zian of the Endless Shadow"] = "Zian of the Endless Shadow"
--L["Zo'phex"] = "Zo'phex"