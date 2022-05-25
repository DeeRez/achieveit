

local CatID	= AchieveItConstants.CategoryIDs
local Zone = AchieveItConstants.zone

--	Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

------------------------
--	Quests
------------------------

function AchieveIt:LoadQuestCategories()

----------------------
-- Eastern Kingdoms --
----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,L["Progress"],{

	{ id = 12456,faction = AchieveIt.Factions.ALLIANCE}, -- Loch Modan & Wetlands Quests
	{ id = 12455,faction = AchieveIt.Factions.ALLIANCE}, -- Westfall & Duskwood Quests
	1676, -- Loremaster of Eastern Kingdoms

});

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Arathi_Highlands),{

4896, -- Arathi Highlands Quests		

}).locate =	function(p_current_map)

	return Zone.Arathi_Highlands == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Badlands),{

4900, -- Badlands Quests
5444, -- Ready, Set, Goat!

}).locate =	function(p_current_map)

	return Zone.Badlands == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Blasted_Lands),{

4909, -- Blasted Lands Quests

}).locate =	function(p_current_map)

	return Zone.Blasted_Lands == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Burning_Steppes),{

4901, -- Burning Steppes Quests

}).locate =	function(p_current_map)

	return Zone.Burning_Steppes == p_current_map;

end;


if UnitFactionGroup("player") == "Alliance" then 

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Duskwood),{

	{ id = 12430,faction = AchieveIt.Factions.ALLIANCE} -- Duskwood Quests

}).locate =	function(p_current_map)

	return Zone.Duskwood == p_current_map;

end;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Eastern_Plaguelands),{
4892, -- Eastern Plaguelands Quests
5442, -- Full Caravan

}).locate =	function(p_current_map)

	return Zone.Eastern_Plaguelands == p_current_map;

end;


if UnitFactionGroup("player") == "Horde" then 

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Ghostlands),{

	{ id = 4908,faction = AchieveIt.Factions.HORDE} -- Ghostlands Quests

}).locate =	function(p_current_map)

	return Zone.Ghostlands == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Hillsbrad_Foothills),{

	{ id = 4895,faction = AchieveIt.Factions.HORDE} -- Hillsbrad Foothills Quests

}).locate =	function(p_current_map)

	return Zone.Hillsbrad_Foothills == p_current_map;

end;

end;

if UnitFactionGroup("player") == "Alliance" then 

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Loch_Modan),{

	{ id = 4899,faction = AchieveIt.Factions.ALLIANCE}, -- Loch Modan Quests

}).locate =	function(p_current_map)

	return Zone.Loch_Modan == p_current_map;

end;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Northern_Stranglethorn),{

4906, -- Northern Stranglethorn Quests
940, -- The Green Hills of Stranglethorn

}).locate =	function(p_current_map)

	return Zone.Northern_Stranglethorn == p_current_map;

end;

if UnitFactionGroup("player") == "Alliance" then 

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Redridge_Mountains),{

	{ id = 4902,faction = AchieveIt.Factions.ALLIANCE}, -- Redridge Mountains Quests

}).locate =	function(p_current_map)

	return Zone.Redridge_Mountains == p_current_map;

end;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Searing_Gorge),{

4910, -- Searing Gorge Quests

}).locate =	function(p_current_map)

	return Zone.Searing_Gorge == p_current_map;

end;


if UnitFactionGroup("player") == "Horde" then 

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Silverpine_Forest),{

4894, -- Silverpine Forest Quests

}).locate =	function(p_current_map)

	return Zone.Silverpine_Forest == p_current_map;

end;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Swamp_of_Sorrows),{

	4904,-- Swamp of Sorrows Quests

}).locate =	function(p_current_map)

	return Zone.Swamp_of_Sorrows == p_current_map;

end;


AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.The_Cape_of_Stranglethorn),{

4905, -- Cape of Stranglethorn Quests

}).locate =	function(p_current_map)

	return Zone.The_Cape_of_Stranglethorn == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.The_Hinterlands),{

4897, -- Hinterlands Quests

}).locate =	function(p_current_map)

	return Zone.The_Hinterlands == p_current_map;

end;


AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Western_Plaguelands),{

	4893, -- Western Plaguelands Quests

}).locate =	function(p_current_map)

	return Zone.Western_Plaguelands == p_current_map;

end;

if UnitFactionGroup("player") == "Alliance" then 

AchieveIt.Categories:addCategory(CatID.Quests_Eastern_Kingdoms,AchieveIt.GetMapName(Zone.Wetlands),{

	12429, -- Wetlands Quests

}).locate =	function(p_current_map)

	return Zone.Wetlands == p_current_map;

end;

end;

--------------
-- Kalimdor --
--------------


AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,L["Progress"],{
	
	1678, -- Loremaster of Kalimdor

});

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Ashenvale), {

	{ id = 4976,faction = AchieveIt.Factions.HORDE}, -- Ashenvale Quests - H
	{ id = 4925,faction = AchieveIt.Factions.ALLIANCE}, -- Ashenvale Quests - A
	5453, -- Ghosts in the Dark

}).locate =	function(p_current_map)

	return Zone.Ashenvale == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Azshara), {

	{ id = 4927,faction = AchieveIt.Factions.HORDE}, -- Azshara Quests - H
	{ id = 5454,faction = AchieveIt.Factions.HORDE},  -- Joy Ride - H
	5448, -- Glutton for Fiery Punishment
	5546, -- Glutton for Icy Punishment	
	5547, -- Glutton for Shadowy Punishment

}).locate =	function(p_current_map)

	return Zone.Azshara == p_current_map;

end;

if UnitFactionGroup("player") == "Alliance" then

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Bloodmyst_Isle), {

	4926, -- Bloodmyst Isle Quests - A

}).locate =	function(p_current_map)

	return Zone.Bloodmyst_Isle == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Darkshore), {

	4928, -- Darkshore Quests - A

}).locate =	function(p_current_map)

	return Zone.Darkshore == p_current_map;

end;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Desolace), {

	4930, -- Desolace Quests

}).locate =	function(p_current_map)

	return Zone.Desolace == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Dustwallow_Marsh), {

	{ id = 4978,faction = AchieveIt.Factions.HORDE}, -- Dustwallow Marsh Quests - H
	{ id = 4929,faction = AchieveIt.Factions.ALLIANCE}, -- Dustwallow Marsh Quests - A

}).locate =	function(p_current_map)

	return Zone.Dustwallow_Marsh == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Felwood), {

	4931, -- Felwood Quests

}).locate =	function(p_current_map)

	return Zone.Felwood == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Feralas), {

	{ id = 4979,faction = AchieveIt.Factions.HORDE}, -- Feralas Quests - H
	{ id = 4932,faction = AchieveIt.Factions.ALLIANCE}, -- Feralas Quests - A

}).locate =	function(p_current_map)

	return Zone.Feralas == p_current_map;

end;

if UnitFactionGroup("player") == "Horde" then

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Northern_Barrens), {

	4933, -- Northern Barrens Quests - H

}).locate =	function(p_current_map)

	return Zone.Northern_Barrens == p_current_map;

end;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Silithus), {

	4934, -- Silithus Quests

}).locate =	function(p_current_map)

	return Zone.Silithus == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Southern_Barrens), {

	{ id = 4937,faction = AchieveIt.Factions.ALLIANCE}, -- Southern Barrens Quests - A
	{ id = 4981,faction = AchieveIt.Factions.HORDE}, -- Southern Barrens Quests - H

}).locate =	function(p_current_map)

	return Zone.Southern_Barrens == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Stonetalon_Mountains), {

	{ id = 4936,faction = AchieveIt.Factions.ALLIANCE}, -- Stonetalon Mountains Quests - A
	{ id = 4980,faction = AchieveIt.Factions.HORDE}, -- Stonetalon Mountains Quests - H

}).locate =	function(p_current_map)

	return Zone.Stonetalon_Mountains == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Tanaris), {

	4935, -- Tanaris Quests

}).locate =	function(p_current_map)

	return Zone.Tanaris == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Thousand_Needles), {

	4938, -- Thousand Needles Quests

}).locate =	function(p_current_map)

	return Zone.Thousand_Needles == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.UnGoro_Crater), {

	4939, -- Un'Goro Crater Quests

}).locate =	function(p_current_map)

	return Zone.UnGoro_Crater == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Kalimdor,AchieveIt.GetMapName(Zone.Winterspring), {

	4940, -- Winterspring Quests
	5443, -- E'ko Madness

}).locate =	function(p_current_map)

	return Zone.Winterspring == p_current_map;

end;

-------------
-- Outland --
-------------

AchieveIt.Categories:addCategory(CatID.Quests_Outland,L["Progress"], {

	1262, -- Loremaster of Outland
	
});
	
AchieveIt.Categories:addCategory(CatID.Quests_Outland,AchieveIt.GetMapName(Zone.Blades_Edge_Mountains), {

	1193, -- On the Blade's Edge
	1276, -- Blade's Edge Bomberman
	
}).locate =	function(p_current_map)

	return Zone.Blades_Edge_Mountains == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Outland,AchieveIt.GetMapName(Zone.Hellfire_Peninsula), {

	{ id = 1189,faction = AchieveIt.Factions.ALLIANCE}, -- To Hellfire and Back
	{ id = 1271,faction = AchieveIt.Factions.HORDE}, -- To Hellfire and Back
	
}).locate =	function(p_current_map)

	return Zone.Hellfire_Peninsula == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Outland,AchieveIt.GetMapName(Zone.Nagrand), {

	{ id = 1192,faction = AchieveIt.Factions.ALLIANCE}, -- Nagrand Slam
	{ id = 1273,faction = AchieveIt.Factions.HORDE}, -- Nagrand Slam
	939, -- Hills Like White Elekk
	
}).locate =	function(p_current_map)

	return Zone.Nagrand == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Outland,AchieveIt.GetMapName(Zone.Netherstorm), {

	1194, -- Into the Nether
	
}).locate =	function(p_current_map)

	return Zone.Netherstorm == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Outland,AchieveIt.GetMapName(Zone.Shadowmoon_Valley), {

	1195, -- Shadow of the Betrayer
	
}).locate =	function(p_current_map)

	return Zone.Shadowmoon_Valley == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Outland,AchieveIt.GetMapName(Zone.Terokkar_Forest), {

	{ id = 1191,faction = AchieveIt.Factions.ALLIANCE}, -- Terror of Terrokar
	{ id = 1272,faction = AchieveIt.Factions.HORDE}, -- Terror of Terrokar
	1275, -- Bombs Away
	
}).locate =	function(p_current_map)

	return Zone.Terokkar_Forest == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Outland,AchieveIt.GetMapName(Zone.Zangarmarsh), {

	1190, -- Myateries of the Marsh
	
}).locate =	function(p_current_map)

	return Zone.Zangarmarsh == p_current_map;

end;

---------------
-- Northrend --
---------------

 
AchieveIt.Categories:addCategory(CatID.Quests_Northrend,L["Progress"],{

41, -- Loremaster of Northrend

});



AchieveIt.Categories:addCategory(CatID.Quests_Northrend,AchieveIt.GetMapName(Zone.Borean_Tundra),{
 
	{ id = 33,faction = AchieveIt.Factions.ALLIANCE}, -- Nothing Boring About Borean - A
	{ id = 1358,faction = AchieveIt.Factions.HORDE}, -- Nothing Boring About Borean - H
561, -- D.E.H.T.A's Little P.I.T.A.

}).locate =	function(p_current_map)

	return Zone.Borean_Tundra == p_current_map;

end;


AchieveIt.Categories:addCategory(CatID.Quests_Northrend,AchieveIt.GetMapName(Zone.Dragonblight),{

	{ id = 35,faction = AchieveIt.Factions.ALLIANCE}, -- Might of Dragonblight - A
	{ id = 1359,faction = AchieveIt.Factions.HORDE}, -- Might of Dragonblight - H
	1277, -- Rapid Defense

}).locate =	function(p_current_map)

	return Zone.Dragonblight == p_current_map;

end;


AchieveIt.Categories:addCategory(CatID.Quests_Northrend,AchieveIt.GetMapName(Zone.Grizzly_Hills),{

	{ id = 1357,faction = AchieveIt.Factions.HORDE}, -- Fo' Grizzle My Shizzle - H
	{ id = 37,faction = AchieveIt.Factions.ALLIANCE}, -- Fo' Grizzle My Shizzle - A

}).locate =	function(p_current_map)

	return Zone.Grizzly_Hills == p_current_map;

end;


AchieveIt.Categories:addCategory(CatID.Quests_Northrend,AchieveIt.GetMapName(Zone.Howling_Fjord),{

	{ id = 34,faction = AchieveIt.Factions.ALLIANCE}, -- I've Toured the Fjord - A
	{ id = 1356,faction = AchieveIt.Factions.HORDE}, -- I've Toured the Fjord - H

}).locate =	function(p_current_map)

	return Zone.Howling_Fjord == p_current_map;

end;


AchieveIt.Categories:addCategory(CatID.Quests_Northrend,AchieveIt.GetMapName(Zone.Icecrown),{

	40, -- Icecrown: The Final Goal
	547, -- Veteran of the Wrathgate

}).locate =	function(p_current_map)

	return Zone.Icecrown == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Northrend,AchieveIt.GetMapName(Zone.Sholazar_Basin),{

	39, -- Into the Basin
	961, -- Honorary Frenzyheart
	962, -- Savior of the Oracles
	938, -- The Snows of Northrend

}).locate =	function(p_current_map)

	return Zone.Sholazar_Basin == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Northrend,AchieveIt.GetMapName(Zone.The_Storm_Peaks),{

	38, -- The Summit of Storm Peaks
	1428, -- Mine Sweeper

}).locate =	function(p_current_map)

	return Zone.The_Storm_Peaks == p_current_map;

end;

AchieveIt.Categories:addCategory(CatID.Quests_Northrend,AchieveIt.GetMapName(Zone.ZulDrak),{

	36, -- The Empire of Zul'Drak
	1596, -- Guru of Drakuru

}).locate =	function(p_current_map)

	return Zone.ZulDrak == p_current_map;

end;

----------------
--	Cataclysm --
-----------------

-----------------
-- Mount Hyjal --
-----------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,AchieveIt.GetMapName(Zone.Mount_Hyjal),{
	
	4959, -- Beware of the 'Unbeatable?' Pterodactyl
	5483, -- Bounce
	4870, -- Coming Down the Mountain
	5860, -- The 'Unbeatable?' Pterodactyl: BEATEN.
	
}).locate =	function(p_current_map)

	return Zone.Mount_Hyjal == p_current_map;

end;




--------------
-- Vashj'ir --
--------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,AchieveIt.GetMapName(Zone.Vashjir),{

	{id	= 5318,faction = AchieveIt.Factions.ALLIANCE},-- 20,000 Leagues	Under the Sea
	{id	= 5319,faction = AchieveIt.Factions.HORDE}, -- 20,000 Leagues Under the Sea
	{id	= 4869,faction = AchieveIt.Factions.ALLIANCE}, -- Sinking into Vashj'ir
	{id	= 4982,faction = AchieveIt.Factions.HORDE}, -- Sinking into Vashj'ir
	5452, -- Visions of Vashj'ir Past
	
}).locate =	function()

	return AchieveIt.CurrentMapCheck(Zone.Vashjir,Zone.Abyssal_Depths,Zone.Shimmering_Expanse,Zone.Kelpthar_Forest)
	
end;


--------------
-- Deepholm	--
--------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,AchieveIt.GetMapName(Zone.Deepholm),{

	4871, -- Deep into Deepholm
	5450, -- Fungal Frenzy
	5445, -- Fungalophobia
	5447, -- My	Very Own Broodmother
	5449, -- Rock Lover
	5446, -- The Glop Family Line
	
}).locate =	function(p_current_map)

	return Zone.Deepholm == p_current_map;

end;

------------
-- Uldum --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,AchieveIt.GetMapName(Zone.Uldum),{

	5317, -- Help the	Bombardier!	I'm the Bombardier!
	4961, -- In	a Thousand Years Even You Might be Worth Something
	4872, -- Unearthing Uldum
	
}).locate =	function(p_current_map)

	return Zone.Uldum == p_current_map;

end;



-------------------------
--	Twilight Highlands --
-------------------------

--TODO: Can't we pre-filter these??

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,AchieveIt.GetMapName(Zone.Twilight_Highlands), {
	
	5451, -- Consumed by Nightmare
	{ id = 5482, faction = AchieveIt.Factions.HORDE}, -- Dragonmaw Tour	of	Duty
	{ id = 4873, faction = AchieveIt.Factions.ALLIANCE}, -- Fading into Twilight
	{ id = 5501, faction = AchieveIt.Factions.HORDE}, -- Fading into Twilight
	{ id = 5320, faction = AchieveIt.Factions.ALLIANCE}, --	King of the	Mountain
	{ id = 5321, faction = AchieveIt.Factions.HORDE}, -- King of the	Mountain
	4960, -- Round Three. Fight!
	{ id = 5481, faction = AchieveIt.Factions.ALLIANCE},-- Wildhammer Tour of Duty
	
}).locate =	function(p_current_map)

	return Zone.Twilight_Highlands == p_current_map;

end;




---------------
-- Tol Barad --
---------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,AchieveIt.GetMapName(Zone.Tol_Barad),{

	4874, -- Breaking Out of Tol Barad
	
}).locate =	function(p_current_map)

	return Zone.Tol_Barad_Peninsula == p_current_map;

end;

------------------
-- Molten Front --
------------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,AchieveIt.GetMapName(Zone.Molten_Front),{

	5867, -- Flawless Victory
	5879, -- Veteran of the	Molten Front
	5868, -- And the Meek Shall Inherit	Kalimdor
	5874, -- Death From Above
	5870, -- Fireside Chat
	5864, -- Gang War
	5865, -- Have... Have We Met?
	5869, -- Infernal Ambassadors
	5872, -- King of the Spider-Hill
	5859, -- Legacy of Leyara
	5862, -- Ludicrous Speed
	5871, -- Master of the Molten Flow
	5873, -- Ready	for Raiding	II
	5861, -- The Fiery Lords of Sethria's Roost
	5866, -- The Molten Front Offensive
	
}).locate =	function(p_current_map)

	return Zone.Molten_Front == p_current_map;

end;


-------------
-- Draenor --
--------------


AchieveIt.Categories:addCategory(CatID.Quests_Draenor,L["Progress"],{
	
	{ id = 8921, faction = AchieveIt.Factions.ALLIANCE}, -- Welcome to Draenor
	{ id = 8845, faction = AchieveIt.Factions.ALLIANCE}, -- As I Walk Through the Valley of the Shadow of Moon
	{ id = 9602, faction = AchieveIt.Factions.ALLIANCE}, -- Shoot For the Moon
	{ id = 8923, faction = AchieveIt.Factions.ALLIANCE}, -- Putting the Gore in Gorgrond
	{ id = 8920, faction = AchieveIt.Factions.ALLIANCE}, -- Don't Let the Tala-door Hit You on the Way Out
	{ id = 8925, faction = AchieveIt.Factions.ALLIANCE}, -- Between Arak and a Hard Place
	{ id = 8927, faction = AchieveIt.Factions.ALLIANCE}, -- Nagrandeur
	{ id = 9491, faction = AchieveIt.Factions.ALLIANCE}, -- The Garrison Campaign
	{ id = 9564, faction = AchieveIt.Factions.ALLIANCE}, -- Securing Draenor
	{ id = 9528,  faction =	AchieveIt.Factions.ALLIANCE}, -- On the Shadow's Trail
	{ id = 10067, faction =	AchieveIt.Factions.ALLIANCE}, -- In	pursuit of Gul'dan
	{ id = 10068, faction =	AchieveIt.Factions.ALLIANCE}, -- Draenor's Last	Stand
	{ id = 10072, faction = AchieveIt.Factions.ALLIANCE}, -- Rumble In The Jungle
	{ id = 8922, faction = AchieveIt.Factions.HORDE}, --  Welcome to Draenor
	{ id = 8671, faction = AchieveIt.Factions.HORDE}, --  You'll Get Caught Up In The... Frostfire!
	{ id = 9606, faction = AchieveIt.Factions.HORDE}, -- Frostfire Fridge
	{ id = 8924, faction = AchieveIt.Factions.HORDE}, -- Putting the Gore in Gorgrond
	{ id = 8919, faction = AchieveIt.Factions.HORDE}, -- Don't	Let the Tala-door Hit You on the Way Out
	{ id = 8926, faction = AchieveIt.Factions.HORDE}, -- Between Arak and a Hard Place
	{ id = 8928, faction = AchieveIt.Factions.HORDE}, -- Nagrandeur
	{ id = 9492, faction = AchieveIt.Factions.HORDE}, -- The Garrison Campaign
	{ id = 9562, action = AchieveIt.Factions.HORDE}, -- Securing Draenor
	{ id = 9529, faction = AchieveIt.Factions.HORDE}, -- On the Shadow's Trail
	{ id = 10074, faction =	AchieveIt.Factions.HORDE}, -- In pursuit of Gul'dan
	{ id = 10075, faction =	AchieveIt.Factions.HORDE}, -- Draenor's Last Stand
	{ id = 10265, faction = AchieveIt.Factions.HORDE}, -- Rumble In The Jungle
	 9607, -- Make It a Bonus
	 9674, -- I	Want More Talador
	 9605, -- Arak Star
	 9615, -- With a Nagrand Cherry On Top

});



---------------------
-- Frostfire Ridge --
---------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor,AchieveIt.GetMapName(Zone.Frostfire_Ridge),{

	{ id = 8671, faction = AchieveIt.Factions.HORDE}, -- You'll Get Caught Up In The... Frostfire!
	{ id = 9606, faction = AchieveIt.Factions.HORDE}, -- Frostfire Fridge
	{ id = 9529, faction = AchieveIt.Factions.HORDE}, -- On the Shadow's Trail
	{ id = 9530, faction = AchieveIt.Factions.ALLIANCE}, -- Writing in	the Snow
	{ id = 9531, faction = AchieveIt.Factions.HORDE}, -- Writing in	the Snow
	9533, -- Breaker of	Chains
	9534, -- Delectable	Ogre Delicacies
	9537, -- By Fire  Be...	Merged?
	9536, -- Slagnarok
	9535, -- That Was Entirely Unnecessary
	9711, -- Planned to Fail
	9710  -- Poisoning the Well
	
}).locate =	function(p_current_map)

	return Zone.Frostfire_Ridge == p_current_map;

end;

-----------------------
-- Shadowmoon Valley --
-----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor,AchieveIt.GetMapName(Zone.Shadowmoon_Valley),{

	{ id = 8845, faction =	AchieveIt.Factions.ALLIANCE}, -- As I Walk Through the Valley of the Shadow of Moon
	{ id = 9602, faction =	AchieveIt.Factions.ALLIANCE}, -- Shoot For the	Moon
	{ id = 9528, faction =	AchieveIt.Factions.ALLIANCE}, -- On the Shadow's Trail
	9433, -- A-VOID-ance
	9434, -- One of Us! One of Us!
	9432, -- Would You Like a Pamphlet?
	9436, -- It's the Stones!
	9435, -- Take From Them Everything
	9437, -- A Demidos of Reality
	9483, -- I Was Framed!
	9479, -- You Can't Make a Giant Omelette...
	9481, -- You Have Been Rylakinated!

}).locate =	function(p_current_map)

	return Zone.Shadowmoon_Valley == p_current_map;

end;

--------------
-- Gorgrond --
--------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor,AchieveIt.GetMapName(Zone.Gorgrond),{

	9678, -- Ancient No More
	9667, -- Burn it to the Ground
	9655, -- Fight the Power
	9656, -- In Plain Sight
	9659, -- Iron Wings
	9607, -- Make It a Bonus
	9654, -- Mean and Green
	9663, -- Picky Palate
	9658, -- Pillars of Draenor
	{ id = 8923, faction = AchieveIt.Factions.ALLIANCE}, -- Putting	the Gore in	Gorgrond
	{ id = 8924, faction = AchieveIt.Factions.HORDE}, -- Putting the Gore in Gorgrond
	
}).locate =	function(p_current_map)

	return Zone.Gorgrond == p_current_map;

end;

-------------
-- Talador --
-------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor,AchieveIt.GetMapName(Zone.Talador),{

	{ id = 8920, faction = AchieveIt.Factions.ALLIANCE}, -- Don't Let the Tala-door Hit You on	the Way Out
	{ id = 8919, faction = AchieveIt.Factions.HORDE},  -- Don't Let the Tala-door Hit You on the Way Out
	9674  -- I	Want More Talador
	 
}).locate =	function(p_current_map)

	return Zone.Talador == p_current_map;

end;


--------------------
-- Spires of Arak --
--------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor,AchieveIt.GetMapName(Zone.Spires_of_Arak),{

	9605, -- Arak	Star
	{ id = 8925, faction =	AchieveIt.Factions.ALLIANCE}, -- Between Arak and a Hard Place
	{ id = 8926, faction =	AchieveIt.Factions.HORDE}, -- Between Arak and a Hard Place
	9612, -- Eggs in One Basket
	9613 -- Fish Gotta Swim, Birds Gotta Eat
	 
}).locate =	function(p_current_map)

	return Zone.Spires_of_Arak == p_current_map;

end;

-------------
-- Nagrand --
-------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor,AchieveIt.GetMapName(Zone.Nagrand_WoD),{

	{ id = 8927, faction =	AchieveIt.Factions.ALLIANCE}, -- Nagrandeur
	{ id = 8928, faction =	AchieveIt.Factions.HORDE}, -- Nagrandeur
	9615, -- With a Nagrand Cherry On Top
	9610, -- History of	Violence
	9571, -- Broke Back	Precipice
	9548, -- Buried Treasures
	9541, -- The Song of Silence
	9617 -- Making the Cut
}).locate =	function(p_current_map)

	return Zone.Nagrand_WoD == p_current_map;

end;


--------------------
-- Shattrath City --
--------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor,AchieveIt.GetMapName(Zone.Shattrath_City),{

	9635, -- Bobbing for Orcs
	9634, -- Charged Up
	9633, -- Cut off the Head
	9486, -- Goodness Gracious
	9638, -- Heralds of	the Legion
	9637, -- Poor Communication
	9632, -- The Power Is Yours
	9636 -- United We Stand
 
}).locate =	function()

	return 	
	   ("Arch of Sha'tar" == GetSubZoneText() or 
		"Beacon of Sha'tar" == GetSubZoneText() or
		"Sha'tar Way Station" == GetSubZoneText() or
		"Sha'tari Anchorage" == GetSubZoneText() or
		"Sha'tari Market District" == GetSubZoneText() or
		"Sha'tari Rest and Recovery" == GetSubZoneText() or
		"Sha'tari Skymesa" == GetSubZoneText() or
		"Shattrath City" == GetSubZoneText() or
		"Shattrath City Center" == GetSubZoneText() or
		"Shattrath Commons" == GetSubZoneText() or
		"Shattrath Overlook" == GetSubZoneText() or
		"Shattrath Port Authority" == GetSubZoneText() or
		"Shattrath Residential District" == GetSubZoneText() or
		"Shattrath Scrollhouse" == GetSubZoneText() or
		"Skymesa Great Hall" == GetZoneText() or
		"Skymesa Inn" == GetSubZoneText() or
		"Skymesa Overlook" == GetSubZoneText() or
		"Skymesa Palisade" == GetSubZoneText() or
		"Skymesa Ritual Chamber" == GetSubZoneText() or
		"Spire of Light" == GetSubZoneText());
	
end;  


-------------------
-- Tanaan Jungle --
-------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor,AchieveIt.GetMapName(Zone.Tanaan_Jungle),{

{ id = 10067, faction =	AchieveIt.Factions.ALLIANCE}, -- In	pursuit of Gul'dan
{ id = 10074, faction =	AchieveIt.Factions.HORDE}, -- In pursuit of Gul'dan
{ id = 10068, faction =	AchieveIt.Factions.ALLIANCE}, -- Draenor's Last	Stand
{ id = 10075, faction =	AchieveIt.Factions.HORDE}, -- Draenor's Last Stand

}).locate =	function(p_current_map)

	return Zone.Tanaan_Jungle == p_current_map;

end;

--------------
-- Pandaria	--
--------------

if (AchieveIt_Data.UsePandariaRepView) then

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["Progress"],{

	6541, -- Loremaster of Pandaria
	{ id = 6300, faction = AchieveIt.Factions.ALLIANCE}, --	Upjade Complete
	{ id = 6534, faction = AchieveIt.Factions.HORDE}, -- Upjade Complete
	6301,--	Rally the Valley
	{ id = 6535, faction = AchieveIt.Factions.ALLIANCE}, --	Mighty Roamin'	Krasaranger
	{ id = 6536, faction = AchieveIt.Factions.HORDE}, -- Mighty Roamin'	Krasaranger
	7502, -- Savior of Stoneplow
	{ id = 7929, faction = AchieveIt.Factions.HORDE}, -- Dominance Offensive Campaign
	{ id = 7928, faction = AchieveIt.Factions.ALLIANCE}, -- Operation: Shieldwall Campaign
	{ id = 6537, faction = AchieveIt.Factions.ALLIANCE}, -- Slum It in the Summit
	{ id = 6538, faction = AchieveIt.Factions.HORDE}, -- Slum It in the	Summit
	6539, -- One Steppe Forward, Two Steppes Back
	6540, -- Dread Haste Makes Dread Waste
	7285 --	Every Day I'm Pand-a-ren
	
});


-----------------------
-- August Celestials --
-----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["The August Celestials"],{

	7287, -- Champion of Chi-Ji
	7286, -- Finish Them!
	7288, -- Yak Attack
	
});


------------------
-- Golden Lotus --
------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["Golden Lotus"],{

	7318, -- A Taste of History
	7323, -- Collateral Damage
	7320, -- Dog Pile
	7317, -- One Many Army
	7324, -- One Step at a Time
	7319, -- Ready for Raiding III
	7322, -- Roll Club
	7321, -- Spreading the Warmth
	
});


------------
-- Klaxxi --
------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["The Klaxxi"],{


	7312, -- Amber is the Color of My Energy
	7316, -- Over Their Heads
	7313, -- Stay Klaxxi
	7314, -- Test Drive
	
});


--------------------------------
-- Order of the	Cloud Serpent --
--------------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["Order of the Cloud Serpent"],{

	7290, -- How To Strain Your Dragon
	7291, -- In	a Trail of Smoke
	7289, -- Shadow Hopper
	
});

---------------
-- Shado-Pan --
---------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["Shado-Pan"],{

	7310, -- Defender of Gods
	7298, -- Getting Around	with the Shado-Pan
	7299, -- Loner and a Rebel
	7297, -- Proven Strength
	7307, -- Silent Assassin
	7309, -- Fire in the Yaung-hole!
	7308, -- Know Your Role
	
});

-------------
-- Tillers --
-------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["The Tillers"],{

	7292, -- Green Acres
	7294, -- A Taste of Things to Come
	7293, -- Till the Break of Dawn
	7295, -- Listen to the Drunk Fish
	7296, -- Ain't Lost No More
	
});

else

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria,L["Progress"],{

	6541, --	Loremaster of Pandaria
	{ id = 6300, faction = AchieveIt.Factions.ALLIANCE}, --	Upjade Complete
	{ id = 6534, faction = AchieveIt.Factions.HORDE}, -- Upjade Complete
	6301,--	Rally the Valley
	{ id = 6535, faction = AchieveIt.Factions.ALLIANCE}, --	Mighty Roamin' Krasaranger
	{ id = 6536, faction = AchieveIt.Factions.HORDE}, -- Mighty Roamin'	Krasaranger
	7502, -- Savior of Stoneplow
	{ id = 7929, faction = AchieveIt.Factions.HORDE}, -- Dominance Offensive Campaign
	{ id = 7928, faction = AchieveIt.Factions.ALLIANCE}, -- Operation: Shieldwall Campaign
	{ id = 6537, faction = AchieveIt.Factions.ALLIANCE}, -- Slum It in the Summit
	{ id = 6538, faction = AchieveIt.Factions.HORDE}, -- Slum It in the	Summit
	6539, -- One Steppe Forward, Two Steppes Back
	6540, -- Dread Haste Makes Dread Waste
	7285 --	Every Day I'm Pand-a-ren
	
});


-----------------
-- Jade Forest --
-----------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria,AchieveIt.GetMapName(Zone.The_Jade_Forest),{

	7290, -- How To Strain Your Dragon
	7291, -- In	a Trail of Smoke
	7289, -- Shadow Hopper
	{ id = 6300, faction = AchieveIt.Factions.ALLIANCE}, --	Upjade Complete
	{ id = 6534, faction = AchieveIt.Factions.HORDE}, -- Upjade Complete
	
}).locate =	function(p_current_map)

	return Zone.The_Jade_Forest == p_current_map;

end;

------------------------------
-- Valley of the Four Winds --
------------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria,L["Valley of the Four Winds"],{ -- AchieveIt.GetMapName(Valley_of_the_Four_Winds), {

	7294, -- A Taste of Things to Come
	7296, -- Ain't Lost No More
	7292, -- Green Acres
	7295, -- Listen to the Drunk Fish
	6301, -- Rally the Valley
	7502, -- Savior of Stoneplow
	7293, -- Till the Break of Dawn
	
}).locate =	function(p_current_map)

	return 376 == p_current_map;
	-- return Zone.Valley_of_the_Four_Winds ==	p_current_map;

end;


---------------------
-- Krasarang Wilds --
---------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria,AchieveIt.GetMapName(Zone.Krasarang_Wilds),{

	7287, -- Champion	of	Chi-Ji
	{ id = 7929, faction = AchieveIt.Factions.HORDE}, --	Dominance Offensive Campaign
	{ id = 6535, faction = AchieveIt.Factions.ALLIANCE}, --	Mighty Roamin'	Krasaranger
	{ id = 6536, faction = AchieveIt.Factions.HORDE}, -- Mighty Roamin'	Krasaranger
	{ id = 7928, faction = AchieveIt.Factions.ALLIANCE}, -- Operation: Shieldwall Campaign
	
}).locate =	function(p_current_map)

	return Krasarang_Wilds == p_current_map;
	
end;	

--------------------
-- Kun-Lai Summit --
--------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria,AchieveIt.GetMapName(Zone.Kun_Lai_Summit),{

	7286, -- Finish Them!
	{ id = 6537, faction = AchieveIt.Factions.ALLIANCE}, -- Slum It in the Summit
	{ id = 6538, faction = AchieveIt.Factions.HORDE}, -- Slum It in the	Summit
	
}).locate =	function(p_current_map)

	return Zone.Kun_Lai_Summit == p_current_map;

end;

----------------------
-- Townlong Steppes -- 
----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria,AchieveIt.GetMapName(Zone.Townlong_Steppes),{

	7310, -- Defender of Gods
	7309, -- Fire in the Yaung-hole!
	7298, -- Getting Around	with the Shado-Pan
	7308, -- Know Your Role
	7299, -- Loner and a Rebel
	6539, -- One Steppe Forward, Two Steppes Back
	7297, -- Proven Strength
	7307, -- Silent Assassin
	
}).locate =	function(p_current_map)

	return Zone.Townlong_Steppes ==	p_current_map;

end;

------------------
-- Dread Wastes --
------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria,AchieveIt.GetMapName(Zone.Dread_Wastes),{

	7312, -- Amber is the Color of My Energy
	6540, -- Dread Haste Makes Dread Waste
	7316, -- Over Their Heads
	7313, -- Stay Klaxxi
	7314, -- Test Drive
	
}).locate =	function(p_current_map)

	return Zone.Dread_Wastes ==	p_current_map;

end;

------------------------------
-- Vale of Eternal Blossoms --
------------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria,AchieveIt.GetMapName(Zone.Vale_of_Eternal_Blossoms),{

	7318, -- A Taste of History
	7323, -- Collateral Damage
	7320, -- Dog Pile
	7317, -- One Many Army
	7324, -- One Step at a Time
	7319, -- Ready for Raiding	III
	7322, -- Roll Club
	7321, -- Spreading the Warmth
	
}).locate =	function(p_current_map)

	return Zone.Vale_of_Eternal_Blossoms ==	p_current_map;

end

end;

---------------------
-- Isle of Thunder --
---------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria,AchieveIt.GetMapName(Zone.Isle_of_Thunder),{

	8121,	-- Stormbreaker
	8099,	-- Isle of Thunder
	8104,	-- Thunder Plunder
	8108,	-- When in Ihgaluk, Do as the Skumblade Do
	8111,	-- This Isn't Even My Final Form
	8114,	-- Platform Hero
	8116,	-- You Made Me Bleed My Own Blood
	8118,	-- Boop
	8120,	-- Direhorn in a China Shop
	8100,	-- Pay to Slay
	8101,	-- It Was Worth Every Ritual Stone
	8105,	-- The Crumble Bundle
	8107,	-- Ready for RAAAAIIIIDDD?!?ing
	8109,	-- The Mogu Below-gu
	8110,	-- These Mogu Have Gotta Go-gu
	8112,	-- Blue Response
	8115,	-- Speed Metal
	8117,	-- For the Ward!
	8119,	-- Our Powers Combined
	8212,	-- Zandalari Library Card
	
}).locate =	function(p_current_map)

	return Zone.Isle_of_Thunder == p_current_map;

end;

------------
-- Legion --
------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion,L["Progress"],{

	11157,	-- Loremaster of Legion
	10059,	-- Ain't No mountain High Enough
	10763,	-- Azsuna Matata
	11124,	-- Good Suramarmaritan
	10698,	-- That's Val'sharah Folks!
	10790,	-- Vrykul Story, Bro
	11546,	-- Breaching the Tomb
	11846,	-- Champions of Legionfall
	11240,	-- Harbinger
	10877,	-- Pillars of Creation
	11186,	-- Tehd and Marius' Excellent Adventure
	12066,	-- You Are Now Prepared
	11340,	-- Insurrection
	
});


------------
-- Azsuna --
------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion,AchieveIt.GetMapName(Zone.Azsuna),{

	10763,	-- Azsuna Matata
	
}).locate =	function(p_current_map)

	return Zone.Azsuna == p_current_map;

end;

------------------
-- Highmountain --
------------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion,AchieveIt.GetMapName(Zone.Highmountain),{

	10059,	-- Ain't No mountain High Enough
	10398,	-- Drum Circle
	10774,	-- Hatchling of the Talon
	10626,	-- Zoom!
	
}).locate =	function(p_current_map)

	return Zone.Highmountain ==	p_current_map;

end;

---------------
-- Stormheim --
---------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion,AchieveIt.GetMapName(Zone.Stormheim),{

	10790,	-- Vrykul Story, Bro
	11232,	-- Lock, Stock and Two Smoking Goblins
	10793,	-- What A Ripoff!
	
}).locate =	function(p_current_map)

	return Zone.Stormheim == p_current_map;

end;

----------------
-- Val'sharah --
----------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion,AchieveIt.GetMapName(Zone.Valsharah),{

	10698,	-- That's Val'sharah Folks
	
}).locate =	function(p_current_map)

	return Zone.Valsharah == p_current_map;

end;

-------------
-- Suramar --
-------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion,AchieveIt.GetMapName(Zone.Suramar),{

	11124,	-- Good Suramarmaritan
	10756,	-- Leyland Bling
	10617,	-- Nightfallen But Not Forgotten
	11340,	-- Insurrection
	11125,	-- Now You're Thinking With Portals
	11133,	-- Why Can't I Hold All This Mana?
	
}).locate =	function(p_current_map)

	return Zone.Suramar ==	p_current_map;

end;



------------------
-- Broken Shore --
------------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion,AchieveIt.GetMapName(Zone.Broken_Shore),{

	11546,	-- Breaching the Tomb
	11731,	-- A Magic Contribution
	11732,	-- A Magnificent Contribution
	11737,	-- Disrupting the Nether
	11738,	-- It'll Nether Happen
	11735,	-- Take Command
	11736,	-- Assume Command
	11681,	-- Crate Expectations
	11607,	-- They See Me Rolling
	
}).locate =	function(p_current_map)

	return Zone.Broken_Shore ==	p_current_map;

end;

-----------
-- Argus --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_Legion,AchieveIt.GetMapName(Zone.Argus),{

	12073,	-- Locked and Loaded
	12066,	-- You Are Now Prepared
	
});

-------------------------
-- -Battle for Azeroth --
-------------------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, L["Progress"], {
	{ id = 12891, faction = AchieveIt.Factions.ALLIANCE}, -- A Nation United
	{ id = 12473, faction = AchieveIt.Factions.ALLIANCE}, -- A Sound Plan
	{ id = 13020, faction = AchieveIt.Factions.ALLIANCE}, -- Bow to Your Masters
	{ id = 12582, faction = AchieveIt.Factions.ALLIANCE}, -- Come Sail Away
	{ id = 12497, faction = AchieveIt.Factions.ALLIANCE}, -- Drust Do It
	13544, -- Essential Empowerment
	{ id = 13251, faction = AchieveIt.Factions.ALLIANCE}, -- In Teldrassil's Shadow
	{ id = 13060, faction = AchieveIt.Factions.ALLIANCE}, -- Kul Runnings
	{ id = 13384, faction = AchieveIt.Factions.ALLIANCE}, -- Kul Tirans Don't Look at Explosions
	{ id = 12614, faction = AchieveIt.Factions.HORDE}, -- Loa Expectations
	{ id = 12593, faction = AchieveIt.Factions.ALLIANCE}, -- Loremaster of Kul Tiras
	{ id = 13294, faction = AchieveIt.Factions.HORDE},	-- Loremaster of Zandalar
	13512, -- Master Calligrapher
	{ id = 12510, faction = AchieveIt.Factions.ALLIANCE}, -- Ready for War
	{ id = 12509, faction = AchieveIt.Factions.HORDE}, -- Ready for War
	{ id = 12478, faction = AchieveIt.Factions.HORDE}, -- Secrets in the Sands
	{ id = 12719, faction = AchieveIt.Factions.HORDE}, -- Spirits Be With You
	{ id = 12496, faction = AchieveIt.Factions.ALLIANCE}, -- Stormsong and Dance
	{ id = 13710, faction = AchieveIt.Factions.ALLIANCE}, -- Sunken Ambitions
	14157, -- The Corruptor's End
	{ id = 11868, faction = AchieveIt.Factions.HORDE}, -- The Dark Heart of Nazmir
	{ id = 13925, faction = AchieveIt.Factions.ALLIANCE}, -- The Fourth War
	{ id = 13924, faction = AchieveIt.Factions.HORDE}, -- The Fourth War
	{ id = 13553, faction = AchieveIt.Factions.ALLIANCE}, -- The Mechagonian Threat
	{ id = 13700, faction = AchieveIt.Factions.HORDE},	-- The Mechagonian Threat
	{ id = 12997, faction = AchieveIt.Factions.ALLIANCE}, -- The Pride of Kul Tiras
	{ id = 13263, faction = AchieveIt.Factions.HORDE}, -- The Shadow Hunter
	13509, -- The Speaker's Resolve
	{ id = 11861, faction = AchieveIt.Factions.HORDE}, -- The Throne of Zuldazar
	{ id = 13467, faction = AchieveIt.Factions.ALLIANCE}, -- Tides of Vengeance
	{ id = 13466, faction = AchieveIt.Factions.HORDE}, -- Tides of Vengeance
	13517, -- Two Sides to Every Tale
	{ id = 13709, faction = AchieveIt.Factions.HORDE}, -- Unfathomable
	{ id = 12555, faction = AchieveIt.Factions.HORDE}, -- Welcome to Zandalar
	13144, -- Wide World of Quests
	{ id = 12479, faction = AchieveIt.Factions.HORDE}, -- Zandalar Forever

});

--------------
-- Drustvar --
--------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth,AchieveIt.GetMapName(Zone.Drustvar),{

	{ id = 12497,	faction = AchieveIt.Factions.ALLIANCE},	-- Drust Do It
	{ id = 13435,	faction = AchieveIt.Factions.HORDE}, -- Doomsoul Surprise

}).locate =	function(p_current_map)

	return Zone.Drustvar ==	p_current_map;

end;

----------------------
-- Stormsong Valley --
----------------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth,AchieveIt.GetMapName(Zone.Stormsong_Valley),{

	13042,	-- About To Break
	13047,	-- Clever Use of Mechanical Explosives
	{ id = 13053,	faction = AchieveIt.Factions.ALLIANCE},	-- Deadliest Cache
	13045, 	-- Every Day I'm Truffling
	{ id = 13062,	faction = AchieveIt.Factions.ALLIANCE},	-- Let's Bee Friends
	13054,	-- Sabertron Assemble
	{ id = 12496,	faction = AchieveIt.Factions.ALLIANCE},	-- Stormsong and Dance
	13046,	-- These Hills Sing
	
}).locate =	function(p_current_map)

	return Zone.Stormsong_Valley ==	p_current_map;

end;

---------------------
-- Tiragarde Sound --
---------------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth,AchieveIt.GetMapName(Zone.Tiragarde_Sound),{

	{ id = 12473, faction = AchieveIt.Factions.ALLIANCE}, -- A Sound Plan
	{ id = 13059, faction = AchieveIt.Factions.ALLIANCE}, -- Drag Race
	{ id = 13049, faction = AchieveIt.Factions.ALLIANCE}, -- The Long Con
	{ id = 12087, faction = AchieveIt.Factions.ALLIANCE}, -- The Reining Champion
	13050,	-- Bless the Rains Down in Freehold
	
}).locate =	function(p_current_map)

	return Zone.Tiragarde_Sound == p_current_map;

end;

------------
-- Nazmir --
------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth,AchieveIt.GetMapName(Zone.Nazmir),{

	{ id = 13026, faction = AchieveIt.Factions.ALLIANCE},	-- 7th Legion Spycatcher
	{ id = 13426, faction = AchieveIt.Factions.ALLIANCE},	-- Come On and Slam
	13023,	-- It's Really Getting Out of Hand
	13048,	-- Life Finds a Way...To Die!
	{ id = 13021, faction = AchieveIt.Factions.HORDE},	-- A Most Efficient Apocalypse
	{ id = 13022, faction = AchieveIt.Factions.HORDE},	-- Revenge is Best Served Speedily
	{ id = 11868, faction = AchieveIt.Factions.HORDE},	-- The Dark Heart of Nazmir
	{ id = 13025, faction = AchieveIt.Factions.HORDE},	-- Zandalari Spycatcher
	
}).locate =	function(p_current_map)

	return Zone.Nazmir ==	p_current_map;

end;

------------
-- Voldun --
------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth,AchieveIt.GetMapName(Zone.Voldun),{

	13011,	-- Scourge of Zem'lan
	{ id = 13009,	faction = AchieveIt.Factions.HORDE},	-- Adept Sandfisher
	{ id = 13017,	faction = AchieveIt.Factions.HORDE},	-- Champion of the Vulpera
	{ id = 13041,	faction = AchieveIt.Factions.HORDE},	-- Hungry, Hungry Ranishu
	{ id = 12478,	faction = AchieveIt.Factions.HORDE},	-- Secrets in the Sands
	{ id = 13437,	faction = AchieveIt.Factions.HORDE},	-- Scavenge like a Vulpera
	{ id = 13014,	faction = AchieveIt.Factions.HORDE},	-- Vorrik's Champion

}).locate =	function(p_current_map)

	return Zone.Voldun ==	p_current_map;

end;

--------------
-- Zuldazar --
--------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth,AchieveIt.GetMapName(Zone.Zuldazar),{

	13035, 	-- By de Power of de Loa!
	13048,	-- Life Finds a Way...To Die!
	{ id = 12480,	faction = AchieveIt.Factions.HORDE},	-- A Bargain of Blood
	{ id = 13030,	faction = AchieveIt.Factions.HORDE},	-- How to Ptrain You Pterrordax
	{ id = 13573,	faction = AchieveIt.Factions.HORDE},	-- How to Ptrain You Pterrordax
	{ id = 13542,	faction = AchieveIt.Factions.HORDE},	-- How to Train Your Direhorn
	{ id = 13039,	faction = AchieveIt.Factions.HORDE},	-- Paku'ai
	{ id = 13038,	faction = AchieveIt.Factions.HORDE},	-- Raptari Rider
	{ id = 12481,	faction = AchieveIt.Factions.HORDE},	-- The Final Seal
	{ id = 11861,	faction = AchieveIt.Factions.HORDE},	-- The Throne of Zuldazar
	{ id = 13037,	faction = AchieveIt.Factions.HORDE},	-- Torcanata

}).locate =	function(p_current_map)

	return AchieveIt.CurrentMapCheck(Zone.Zuldazar,Zone.Dazaralor);

end;

--------------
-- Mechagon --
--------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth,AchieveIt.GetMapName(Zone.Mechagon),{
	13791, 	-- Making the Mount
	{	id = 13553, faction = AchieveIt.Factions.ALLIANCE},	-- The Mechagonian Threat
	{	id = 13700,	faction = AchieveIt.Factions.HORDE},	-- The Mechagonian Threat
	13790, -- Armed for Action


}).locate =	function(p_current_map)

	return Zone.Mechagon ==	p_current_map;

end;

--------------
-- Nazjatar --
--------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth,AchieveIt.GetMapName(Zone.Nazjatar),{

	{ id = 13710, faction = AchieveIt.Factions.ALLIANCE}, -- Sunken Ambitions
	{ id = 13709, faction = AchieveIt.Factions.HORDE}, -- Unfathomable


}).locate =	function(p_current_map)

	return Zone.Nazjatar ==	p_current_map;

end;

--------------
-- Assaults --
--------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth,L["Assaults"],{

	14161, -- All Consuming
	14154, -- Defend the Vale
	{ id = 13435, faction = AchieveIt.Factions.HORDE}, -- Doomsoul Surprise
	{ id = 13284, faction = AchieveIt.Factions.HORDE}, -- Frontline Warrior
	{ id = 13441, faction = AchieveIt.Factions.HORDE}, -- Pushing the Payload
	{ id = 13437, faction = AchieveIt.Factions.HORDE}, -- Scavenge like a Vulpera
	{ id = 13426, faction = AchieveIt.Factions.ALLIANCE}, -- Come On and Slam
	{ id = 13283, faction = AchieveIt.Factions.ALLIANCE}, -- Frontline Warrior
	{ id = 13440, faction = AchieveIt.Factions.ALLIANCE}, -- Pushing the Payload
	14153, -- Uldum Under Assault
	{ id = 13285,	faction = AchieveIt.Factions.ALLIANCE},	-- Upright Citizens

});

-----------------
-- Shadowlands --
-----------------

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands,L["Progress"],{

	14334, -- Into the Maw
	14164, -- Awaken, Ardenweald
	14800, -- Sojourner of Ardenweald
	14281, -- The Path to Ascension
	14801, -- Sojourner of Bastion
	14206, -- Blade of the Primus
	14799, -- Sojourner of Maldraxxus
	13878, -- The Master of Revendreth
	14798, -- Sojourner of Revendreth
	14280, -- Loremaster of Shadowlands
	14790, -- Covenant Campaign
	14758, -- The World Beyond
	15000, -- United Front
	15064, -- Breaking the Chains
	15035, -- On the Offensive
	15647, -- Dead Men Tell Some Tales

});

-------------
-- Bastion --
-------------

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands,AchieveIt.GetMapName(Zone.Bastion),{

	14741, -- Aerial Ace
	14762, -- Breaking the Stratus Fear
	14735, -- Flight School Graduate
	14281, -- The Path to Ascension
	14737, -- What Bastion Remembered
	
}).locate =	function(p_current_map)

	return Zone.Bastion == p_current_map; 

end;

----------------
-- Ardenweald --
----------------

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands,AchieveIt.GetMapName(Zone.Ardenweald),{

	14164, -- Awaken, Ardenweald
	14672, -- A Bit of This, A Bit of That
	14671, -- Something's Not Quite Right....
	
}).locate =	function(p_current_map)

	return Zone.Ardenweald == p_current_map;

end;

----------------
-- Maldraxxus --
----------------

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands,AchieveIt.GetMapName(Zone.Maldraxxus),{

	14206, -- Blade of the Primus
	14802, -- Bloodsport
	14626, -- Harvester of Sorrow
	14721, -- It's In The Mix
	
}).locate =	function(p_current_map)

	return Zone.Maldraxxus == p_current_map;

end;

----------------
-- Revendreth --
----------------

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands,AchieveIt.GetMapName(Zone.Revendreth),{

	14274, -- Absolution for All
	14272, -- Best Bud With Benefits
	14772, -- Caught in a Bat Romance
	14273, -- Crypt Kicker
	14276, -- It's Always Sinny in Revendreth
	14766, -- Parasoling
	14765, -- Ramparts Racer
	14233, -- Tea Tales
	14277, -- The Accuser's Avowed
	13878, -- The Master of Revendreth
	
}).locate =	function(p_current_map)

	return Zone.Revendreth == p_current_map;

end;

-------------
-- The Maw --
-------------

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands,AchieveIt.GetMapName(Zone.TheMaw),{

	15032, -- Breaking their Hold
	15043, -- Hoarder of Torghast
	15001, -- Jailer's Personal Stash
	15044, -- Krrprripripkraak's Heroes
	15036, -- Rooting Out the Evil
	15033, -- Taking the Tremaculum
	15042, -- Tea for the Troubled
	15041, -- The Zovaal Shuffle
	15037, -- This Army	
	15039, -- Up For Grabs
	15034, -- Wings Against the Flames
	
}).locate =	function(p_current_map)

	return Zone.TheMaw == p_current_map;

end;

-------------
-- Korthia --
-------------

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands,AchieveIt.GetMapName(Zone.Korthia),{

	15107, -- Conquering Korthia
	15056, -- Friend of Bloop
	15055, -- Friend of Ooz 
	15057, -- Friend of Plaguey
	15066, -- Reliquary Restoration
	
}).locate =	function(p_current_map)

	return Zone.Korthia == p_current_map;

end;	

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands,AchieveIt.GetMapName(Zone.ZerethMortis),{

	15518, -- A Means to an End
	15336, -- From A to Zeroth
	15515, -- Path to Enlightenment
	15259, -- Secrets of the First Ones
	15229, -- Traversing the Spheres

}).locate =	function(p_current_map)

	return Zone.ZerethMortis == p_current_map;

end;

end; --function AchieveIt:LoadQuestCategories()
