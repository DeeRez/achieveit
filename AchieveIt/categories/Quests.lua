
local	CatID	= AchieveItConstants.CategoryIDs
local	Zone = AchieveItConstants.zone

--	Locale
local	L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

------------------------
--	Quests
------------------------



function	AchieveIt:LoadQuestCategories()
------------------------
--	Quests /	Cataclysm --
------------------------

--------------------------
--	Quests /	Cataclysm /	Mount	Hyjal	Category	--
--------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,	AchieveIt.GetMapName(Zone.Mount_Hyjal), {
	4870,		--	Coming Down	the Mountain
	4959,		--	Beware of the 'Unbeatable?' Pterodactyl
	5483,		--	Bounce
	5860,		--	The 'Unbeatable?'	Pterodactyl: BEATEN.
}).locate =	function(p_current_map)

	return Zone.Mount_Hyjal	==	 p_current_map;

end;




-----------------------
--	Quests /	Cataclysm /	Vashj'ir	Category	--
-----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,	AchieveIt.GetMapName(Zone.Vashjir),	{
	--	Sinking into Vashj'ir
	{
		id	= 4869,
		faction = AchieveIt.Factions.ALLIANCE
	},
	--	Sinking into Vashj'ir
	{
		id	= 4982,
		faction = AchieveIt.Factions.HORDE
	},
	--	20,000 Leagues	Under	the Sea
	{
		id	= 5318,
		faction = AchieveIt.Factions.ALLIANCE
	},
	--	20,000 Leagues	Under	the Sea
	{
		id	= 5319,
		faction = AchieveIt.Factions.HORDE
	},

	5452,		--	Visions of Vashj'ir Past
}).locate =	function()
	return AchieveIt.CurrentMapCheck(Zone.Vashjir, Zone.Abyssal_Depths, Zone.Shimmering_Expanse,	Zone.Kelpthar_Forest)
end;


-----------------------
--	Quests /	Cataclysm /	Deepholm	Category	--
-----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,	AchieveIt.GetMapName(Zone.Deepholm), {
	4871,	--	Deep into Deepholm
	5450,	--	Fungal Frenzy
	5445,	--	Fungalophobia
	5447,	--	My	Very Own	Broodmother
	5449,	--	Rock Lover
	5446,	--	The Glop	Family Line
}).locate =	function(p_current_map)

	return Zone.Deepholm	==	 p_current_map;

end;

--------------------
--	Quests /	Cataclysm /	Uldum	Category	--
--------------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,	AchieveIt.GetMapName(Zone.Uldum), {
	4872,	--	Unearthing Uldum
	5317,	--	Help the	Bombardier!	I'm the Bombardier!
	4961,	--	In	a Thousand Years Even You Might be Worth Something
}).locate =	function(p_current_map)

	return Zone.Uldum	==	p_current_map;

end;



---------------------------------
--	Quests /	Cataclysm /	Twilight	Highlands Category --
---------------------------------

--TODO: Can't we pre-filter these??

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,	AchieveIt.GetMapName(Zone.Twilight_Highlands), {
	--	Fading into	Twilight
	{
		id	= 4873,
		faction = AchieveIt.Factions.ALLIANCE
	},
	--	Fading into	Twilight
	{
		id	= 5501,
		faction = AchieveIt.Factions.HORDE
	},
	--	King of the	Mountain
	{
		id	= 5320,
		faction = AchieveIt.Factions.ALLIANCE
	},
	--	King of the	Mountain
	{
		id	= 5321,
		faction = AchieveIt.Factions.HORDE
	},

	4960,	--	Round	Three. Fight!

	5451,	--	Consumed	by	Nightmare
	--	Wildhammer Tour of Duty
	{
		id	= 5481,
		faction = AchieveIt.Factions.ALLIANCE
	},
	--	Dragonmaw Tour	of	Duty
	{
		id	= 5482,
		faction = AchieveIt.Factions.HORDE
	}
}).locate =	function(p_current_map)

	return Zone.Twilight_Highlands ==  p_current_map;

end;




------------------------
--	Quests /	Cataclysm /	Tol Barad Category --
------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,	AchieveIt.GetMapName(Zone.Tol_Barad), {
	4874,	--	Breaking	Out of Tol Barad
}).locate =	function(p_current_map)

	return Zone.Tol_Barad_Peninsula ==	p_current_map;

end;

---------------------------
--	Quests /	Cataclysm /	Molten Front Category --
---------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Cataclysm,	AchieveIt.GetMapName(Zone.Molten_Front), {
	5867,	--Flawless Victory
	5879,	--	Veteran of the	Molten Front
	5868,	--	And the Meek Shall Inherit	Kalimdor
	5874,	--	Death	From Above
	5870,	--	Fireside	Chat
	5864,	--	Gang War
	5865,	--	Have... Have We Met?
	5869,	--	Infernal	Ambassadors
	5872,	--	King of the	Spider-Hill
	5859,	--	Legacy of Leyara
	5862,	--	Ludicrous Speed
	5871,	--	Master of the Molten	Flow
	5873,	--	Ready	for Raiding	II
	5861,	--	The Fiery Lords of Sethria's Roost
	5866,	--	The Molten Front Offensive
}).locate =	function(p_current_map)

	return Zone.Molten_Front ==  p_current_map;

end;


------------------------
--	Quests /	Draenor --
------------------------


AchieveIt.Categories:addCategory(CatID.Quests_Draenor, L["Progress"], {

	 -- Welcome	to	Draenor
	 {
		  id = 8921,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- As I	Walk Through the Valley	of	the Shadow of Moon
	 {
		  id = 8845,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Shoot For the	Moon
	 {
		  id = 9602,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Putting	the Gore	in	Gorgrond
	 {
		  id = 8923,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Don't Let the	Tala-door Hit You	on	the Way Out
	 {
		  id = 8920,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Between	Arak and	a Hard Place
	 {
		  id = 8925,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Nagrandeur
	 {
		  id = 8927,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- The Garrison Campaign
	 {
		  id = 9491,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Securing Draenor
	 {
		  id = 9564,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- On the Shadow's Trail
	 {
		  id = 9528,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	--	In	pursuit of Gul'dan
	{
		  id = 10067,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	--	Draenor's Last	Stand
	{
		  id = 10068,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	--	Rumble In The Jungle
	{
		id	= 10072,
		faction = AchieveIt.Factions.ALLIANCE
	},
	  -- Welcome to Draenor
	 {
		  id = 8922,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- You'll Get	Caught Up In The... Frostfire!
	 {
		  id = 8671,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- Frostfire Fridge
	 {
		  id = 9606,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- Putting	the Gore	in	Gorgrond
	 {
		  id = 8924,
		  faction =	AchieveIt.Factions.HORDE
	 },
	--	Don't	Let the Tala-door	Hit You on the	Way Out
	 {
		  id = 8919,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- Between	Arak and	a Hard Place
	 {
		  id = 8926,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- Nagrandeur
	 {
		  id = 8928,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- The Garrison Campaign
	 {
		  id = 9492,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- Securing Draenor
	 {
		  id = 9562,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- On the Shadow's Trail
	 {
		  id = 9529,
		  faction =	AchieveIt.Factions.HORDE
	 },
	--	In	pursuit of Gul'dan
	{
		  id = 10074,
		  faction =	AchieveIt.Factions.HORDE
	 },
	--	Draenor's Last	Stand
	{
		  id = 10075,
		  faction =	AchieveIt.Factions.HORDE
	 },
	--	Rumble In The Jungle
	{
		id	= 10265,
		faction = AchieveIt.Factions.HORDE
	},
	 -- Make	It	a Bonus
	 9607,
	 -- I	Want More Talador
	 9674,
	 -- Arak	Star
	 9605,
	 -- With	a Nagrand Cherry On Top
	 9615,
});



------------------------------
--	Quests /	Draenor / Frostfire Ridge Category --
------------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor, AchieveIt.GetMapName(Zone.Frostfire_Ridge),	{
	 -- You'll Get	Caught Up In The... Frostfire!
	 {
		  id = 8671,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- Frostfire Fridge
	 {
		  id = 9606,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- On the Shadow's Trail
	 {
		  id = 9529,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- Writing	in	the Snow
	 {
		  id = 9530,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Writing	in	the Snow
	 {
		  id = 9531,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- Breaker	of	Chains
	 9533,
	 -- Delectable	Ogre Delicacies
	 9534,
	 -- By Fire	Be...	Merged?
	 9537,
	 -- Slagnarok
	 9536,
	 -- That	Was Entirely Unnecessary
	 9535,
	 -- Planned	to	Fail
	 9711,
	 -- Poisoning the	Well
	 9710
}).locate =	function(p_current_map)

	return Zone.Frostfire_Ridge ==  p_current_map;

end;

--------------------------------
--	Quests /	Draenor / Shadowmoon	Valley Category --
--------------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor, AchieveIt.GetMapName(Zone.Shadowmoon_Valley), {
	 -- As I	Walk Through the Valley	of	the Shadow of Moon
	 {
		  id = 8845,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Shoot For the	Moon
	 {
		  id = 9602,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- On the Shadow's Trail
	 {
		  id = 9528,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 9433,	--	A-VOID-ance
	 9434,	--	One of Us! One	of	Us!
	 9432,	--	Would	You Like	a Pamphlet?
	 9436,	--	It's the	Stones!
	 9435,	--	Take From Them	Everything
	 9437,	--	A Demidos of Reality
	 9483,	--	I Was	Framed!
	 9479,	--	You Can't Make	a Giant Omelette...
	 9481,	--	You Have	Been Rylakinated!
}).locate =	function(p_current_map)

	return Zone.Shadowmoon_Valley	==	 p_current_map;

end;

-----------------------
--	Quests /	Draenor / Gorgrond Category --
-----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor, AchieveIt.GetMapName(Zone.Gorgrond), {
	 -- Putting	the Gore	in	Gorgrond
	 {
		  id = 8923,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Putting	the Gore	in	Gorgrond
	 {
		  id = 8924,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 9607,	--	Make It a Bonus
	 9655,	--	Fight	the Power
	 9656,	--	In	Plain	Sight
	 9659,	--	Iron Wings
	 9678,	--	Ancient No More
	 9667,	--	Burn it to the	Ground
	 9654,	--	Mean and	Green
	 9658,	--	Pillars of Draenor
	 9663,	--	Picky	Palate
}).locate =	function(p_current_map)

	return Zone.Gorgrond	==	 p_current_map;

end;

----------------------
--	Quests /	Draenor / Talador	Category	--
----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor, AchieveIt.GetMapName(Zone.Talador), {
	 -- Don't Let the	Tala-door Hit You	on	the Way Out
	 {
		  id = 8920,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Don't Let the	Tala-door Hit You	on	the Way Out
	 {
		  id = 8919,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- I	Want More Talador
	 9674
}).locate =	function(p_current_map)

	return Zone.Talador ==	p_current_map;

end;


-----------------------------
--	Quests /	Draenor / Spires of Arak Category --
-----------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor, AchieveIt.GetMapName(Zone.Spires_of_Arak), {
	 -- Between	Arak and	a Hard Place
	 {
		  id = 8925,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Between	Arak and	a Hard Place
	 {
		  id = 8926,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- Arak	Star
	 9605,
	 -- Eggs	in	One Basket
	 9612,
	 -- Fish	Gotta	Swim,	Birds	Gotta	Eat
	 9613
}).locate =	function(p_current_map)

	return Zone.Spires_of_Arak	==	 p_current_map;

end;

----------------------
--	Quests /	Draenor / Nagrand	Category	--
----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor, AchieveIt.GetMapName(Zone.Nagrand_WoD), {
	 -- Nagrandeur
	 {
		  id = 8927,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	 -- Nagrandeur
	 {
		  id = 8928,
		  faction =	AchieveIt.Factions.HORDE
	 },
	 -- With	a Nagrand Cherry On Top
	 9615,
	 -- History	of	Violence
	 9610,
	 -- Broke Back	Precipice
	 9571,
	 -- Buried Treasures
	 9548,
	 -- The Song of Silence
	 9541,
	 -- Making the	Cut
	 9617
}).locate =	function(p_current_map)

	return Zone.Nagrand_WoD	==	 p_current_map;

end;


-----------------------------
--	Quests /	Draenor / Shattrath City Category --
-----------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor, AchieveIt.GetMapName(Zone.Shattrath_City), {
	 -- Cut off	the Head
	 9633,
	 -- Heralds	of	the Legion
	 9638,
	 -- Bobbing	for Orcs
	 9635,
	 -- Charged	Up
	 9634,
	 -- United We Stand
	 9636,
	 -- The Power Is Yours
	 9632,
	 -- Poor	Communication
	 9637,
	 -- Goodness Gracious
	 9486
});		--NOTE: I don't know	how to get a map id that identifies	sub-regions, so we can't auto-locate this	set of Achievements.


----------------------------
--	Quests /	Draenor / Tanaan Jungle	Catagory	--
----------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Draenor, AchieveIt.GetMapName(Zone.Tanaan_Jungle), {
	--	In	pursuit of Gul'dan
	{
		  id = 10067,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	--	In	pursuit of Gul'dan
	{
		  id = 10074,
		  faction =	AchieveIt.Factions.HORDE
	 },
	--	Draenor's Last	Stand
	{
		  id = 10068,
		  faction =	AchieveIt.Factions.ALLIANCE
	 },
	--	Draenor's Last	Stand
	{
		  id = 10075,
		  faction =	AchieveIt.Factions.HORDE
	 },
}).locate =	function(p_current_map)

	return Zone.Tanaan_Jungle ==	p_current_map;

end;

------------------------
--	Quests /	Pandaria	--
------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["Progress"], {
	--	Loremaster of Pandaria
	6541,
	--	Upjade Complete
	{
		id	= 6300,
		faction = AchieveIt.Factions.ALLIANCE
	},
	--	Upjade Complete
	{
		id	= 6534,
		faction = AchieveIt.Factions.HORDE
	},
	--	Rally	the Valley
	6301,
	--	Mighty Roamin'	Krasaranger
	{
		id	= 6535,
		faction = AchieveIt.Factions.ALLIANCE
	},
	--	Mighty Roamin'	Krasaranger
	{
		id	= 6536,
		faction = AchieveIt.Factions.HORDE
	},
	--	Savior of Stoneplow
	7502,
	--	Dominance Offensive Campaign
	{
		id	= 7929,
		faction = AchieveIt.Factions.HORDE
	},
	--	Operation: Shieldwall Campaign
	{
		id	= 7928,
		faction = AchieveIt.Factions.ALLIANCE
	},
	--	Slum It in the	Summit
	{
		id	= 6537,
		faction = AchieveIt.Factions.ALLIANCE
	},
	--	Slum It in the	Summit
	{
		id	= 6538,
		faction = AchieveIt.Factions.HORDE
	},
	--	One Steppe Forward, Two	Steppes Back
	6539,
	--	Dread	Haste	Makes	Dread	Waste
	6540,
	--	Every	Day I'm Pand-a-ren
	7285
});


--------------------------------
--	--	Quests /	Pandaria	/ August	Celestials Category --
--------------------------------

local	category	= AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["The August Celestials"], {
	7287,	--	Champion	of	Chi-Ji
	7286,	--	Finish Them!
	7288,	--	Yak Attack
});


---------------------------
--	Quests /	Pandaria	/ Golden	Lotus	Category	--
---------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["Golden Lotus"],	{
	7318,	--	A Taste of History
	7323,	--	Collateral Damage
	7320,	--	Dog Pile
	7317,	--	One Many	Army
	7324,	--	One Step	at	a Time
	7319,	--	Ready	for Raiding	III
	7322,	--	Roll Club
	7321,	--	Spreading the Warmth
});


---------------------
--	Quests /	Pandaria	/ Klaxxi	Category	--
---------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["The Klaxxi"], {
	--	Amber	is	the Color of My Energy
	7312,
	--	Over Their Heads
	7316,
	--	Stay Klaxxi
	7313,
	--	Test Drive
	7314,
});


-----------------------------------------
--	Quests /	Pandaria	/ Order of the	Cloud	Serpent Category --
-----------------------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["Order of the Cloud Serpent"], {
	7290,	--	How To Strain Your Dragon
	7291,	--	In	a Trail of Smoke
	7289,	--	Shadow Hopper
});

------------------------
--	Quests /	Pandaria	/ Shado-Pan	Category	--
------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["Shado-Pan"],	{
	7310,	--	Defender	of	Gods
	7298,	--	Getting Around	with the	Shado-Pan
	7299,	--	Loner	and a	Rebel
	7297,	--	Proven Strength
	7307,	--	Silent Assassin
	7309,	--	Fire in the	Yaung-hole!
	7308,	--	Know Your Role
});

----------------------
--	Quests /	Pandaria	/ Tillers Category --
----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, L["The Tillers"], {
	7292,	--	Green	Acres
	7294,	--	A Taste of Things	to	Come
	7293,	--	Till the	Break	of	Dawn
	7295,	--	Listen to the Drunk Fish
	7296,	--	Ain't	Lost No More
});



------------------------------
--	Quests /	Pandaria	/ Isle of Thunder Category --
------------------------------

AchieveIt.Categories:addCategory(CatID.Quests_Pandaria, AchieveIt.GetMapName(Zone.Isle_of_Thunder), {
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

	return Zone.Isle_of_Thunder ==	p_current_map;

end;

----------------------
-- Quests / Legion --
----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion, L["Progress"], {
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
-- Quests / Legion / Azsuna --
------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion, AchieveIt.GetMapName(Zone.Azsuna), {
	10763,	-- Azsuna Matata
}).locate =	function(p_current_map)

	return Zone.Azsuna ==	p_current_map;

end;

------------------
-- Quests / Legion / Highmountain --
------------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion, AchieveIt.GetMapName(Zone.Highmountain), {
	10059,	-- Ain't No mountain High Enough
	10398,	-- Drum Circle
	10774,	-- Hatchling of the Talon
	10626,	-- Zoom!
}).locate =	function(p_current_map)

	return Zone.Highmountain ==	p_current_map;

end;

---------------
-- Quests / Legion / Stormheim --
---------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion, AchieveIt.GetMapName(Zone.Stormheim), {
	10790,	-- Vrykul Story, Bro
	11232,	-- Lock, Stock and Two Smoking Goblins
	10793,	-- What A Ripoff!
}).locate =	function(p_current_map)

	return Zone.Stormheim ==	p_current_map;

end;

----------------
-- Quests / Legion / Val'sharah --
----------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion, AchieveIt.GetMapName(Zone.Valsharah), {
	10698,	-- That's Val'sharah Folks
}).locate =	function(p_current_map)

	return Zone.Valsharah ==	p_current_map;

end;

-------------
-- Quests / Legion / Suramar --
-------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion, AchieveIt.GetMapName(Zone.Suramar), {
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
-- Quests / Legion / Broken Shore --
------------------

AchieveIt.Categories:addCategory(CatID.Quests_Legion, AchieveIt.GetMapName(Zone.Broken_Shore), {
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
-- Quests / Legion / Argus --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_Legion, AchieveIt.GetMapName(Zone.Argus), {
	12073,	-- Locked and Loaded
	12066,	-- You Are Now Prepared
});

----------------------
-- Quests / BfA --
----------------------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, L["Progress"], {
	{ id = 12891, faction = AchieveIt.Factions.ALLIANCE}, -- A Nation United
	{ id = 12473, faction = AchieveIt.Factions.ALLIANCE},	-- A Sound Plan
	{ id = 13020, faction = AchieveIt.Factions.ALLIANCE}, -- Bow to Your Masters
	{ id = 12582, faction = AchieveIt.Factions.ALLIANCE},	-- Come Sail Away
	{ id = 12497, faction = AchieveIt.Factions.ALLIANCE},	-- Drust Do It
	13544, -- Essential Empowerment
	{ id = 13251, faction = AchieveIt.Factions.ALLIANCE},	-- In Teldrassil's Shadow
	{ id = 13060, faction = AchieveIt.Factions.ALLIANCE}, -- Kul Runnings
	{ id = 13384, faction = AchieveIt.Factions.ALLIANCE}, -- Kul Tirans Don't Look at Explosions
	{ id = 12614, faction = AchieveIt.Factions.HORDE}, -- Loa Expectations
	{ id = 12593, faction = AchieveIt.Factions.ALLIANCE}, -- Loremaster of Kul Tiras
	{ id = 13294, faction = AchieveIt.Factions.HORDE},	-- Loremaster of Zandalar
	13512, -- Master Calligrapher
	{ id = 12510, faction = AchieveIt.Factions.ALLIANCE},	-- Ready for War
	{ id = 12509, faction = AchieveIt.Factions.HORDE},	-- Ready for War
	{ id = 12478, faction = AchieveIt.Factions.HORDE},	-- Secrets in the Sands
	{ id = 12719, faction = AchieveIt.Factions.HORDE},	-- Spirits Be With You
	{ id = 12496, faction = AchieveIt.Factions.ALLIANCE},	-- Stormsong and Dance
	{ id = 13710, faction = AchieveIt.Factions.ALLIANCE},	-- Sunken Ambitions
	14157, -- The Corruptor's End
	{ id = 11868, faction = AchieveIt.Factions.HORDE},	-- The Dark Heart of Nazmir
	{ id = 13925, faction = AchieveIt.Factions.ALLIANCE},	-- The Fourth War
	{ id = 13924, faction = AchieveIt.Factions.HORDE},	-- The Fourth War
	{ id = 13553, faction = AchieveIt.Factions.ALLIANCE},	-- The Mechagonian Threat
	{ id = 13700, faction = AchieveIt.Factions.HORDE},	-- The Mechagonian Threat
	{ id = 12997, faction = AchieveIt.Factions.ALLIANCE},	-- The Pride of Kul Tiras
	{ id = 13263, faction = AchieveIt.Factions.HORDE},	-- The Shadow Hunter
	13509, -- The Speaker's Resolve
	{ id = 11861, faction = AchieveIt.Factions.HORDE},	-- The Throne of Zuldazar
	{ id = 13467, faction = AchieveIt.Factions.ALLIANCE},	-- Tides of Vengeance
	{ id = 13466, faction = AchieveIt.Factions.HORDE},	-- Tides of Vengeance
	13517, -- Two Sides to Every Tale
	{ id = 13709, faction = AchieveIt.Factions.HORDE},	-- Unfathomable
	{ id = 12555, faction = AchieveIt.Factions.HORDE},	-- Welcome to Zandalar
	13144, -- Wide World of Quests
	{ id = 12479, faction = AchieveIt.Factions.HORDE},	-- Zandalar Forever




});
-----------
-- Quests / Battle for Azeroth / Drustvar --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, AchieveIt.GetMapName(Zone.Drustvar), {
	{	id	= 12497,	faction = AchieveIt.Factions.ALLIANCE},	-- Drust Do It
	{	id	= 13435,	faction = AchieveIt.Factions.HORDE},	-- Doomsoul Surprise

}).locate =	function() -- p_current_map)

	-- return Zone.Drustvar ==	p_current_map;
	return 896 == C_Map.GetBestMapForUnit("player") 

end;

-----------
-- Quests / Battle for Azeroth / Stormsong_Valley --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, AchieveIt.GetMapName(Zone.Stormsong_Valley), {
	13042,	-- About To Break
	13047,	-- Clever Use of Mechanical Explosives
	{	id	= 13053,	faction = AchieveIt.Factions.ALLIANCE},	-- Deadliest Cache
	13045, 	-- Every Day I'm Truffling
	{	id	= 13062,	faction = AchieveIt.Factions.ALLIANCE},	-- Let's Bee Friends
	13054,	-- Sabertron Assemble
	{	id	= 12496,	faction = AchieveIt.Factions.ALLIANCE},	-- Stormsong and Dance
	13046,	-- These Hills Sing
}).locate =	function() -- p_current_map)

	-- return Zone.Stormsong_Valley ==	p_current_map;
	return 942 == C_Map.GetBestMapForUnit("player") 

end;
-----------
-- Quests / Battle for Azeroth / Tiragarde_Sound --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, AchieveIt.GetMapName(Zone.Tiragarde_Sound), {
	{	id	= 12473,	faction = AchieveIt.Factions.ALLIANCE},	-- A Sound Plan
	{	id	= 13059,	faction = AchieveIt.Factions.ALLIANCE},	-- Drag Race
	{	id	= 13049,	faction = AchieveIt.Factions.ALLIANCE},	-- The Long Con
	{	id	= 12087,	faction = AchieveIt.Factions.ALLIANCE},	-- The Reining Champion
	13050,	-- Bless the Rains Down in Freehold
}).locate =	function(p_current_map)

	-- return Zone.Tiragarde_Sound ==	p_current_map;
	return 895 == C_Map.GetBestMapForUnit("player") 

end;
-----------
-- Quests / Battle for Azeroth / Nazmir --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, AchieveIt.GetMapName(Zone.Nazmir), {
	{	id	= 13026,	faction = AchieveIt.Factions.ALLIANCE},	-- 7th Legion Spycatcher
	{	id	= 13426,	faction = AchieveIt.Factions.ALLIANCE},	-- Come On and Slam


	13023,	-- It's Really Getting Out of Hand
	13048,	-- Life Finds a Way...To Die!
	{	id	= 13021,	faction = AchieveIt.Factions.HORDE},	-- A Most Efficient Apocalypse
	{	id	= 13022,	faction = AchieveIt.Factions.HORDE},	-- Revenge is Best Served Speedily
	{	id	= 11868,	faction = AchieveIt.Factions.HORDE},	-- The Dark Heart of Nazmir
	{	id	= 13025,	faction = AchieveIt.Factions.HORDE},	-- Zandalari Spycatcher
}).locate =	function() -- p_current_map)

	-- return Zone.Nazmir ==	p_current_map;
	return 863 == C_Map.GetBestMapForUnit("player") 

end;
-----------
-- Quests / Battle for Azeroth / Voldun --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, AchieveIt.GetMapName(Zone.Voldun), {
	13011,	-- Scourge of Zem'lan
	{	id	= 13009,	faction = AchieveIt.Factions.HORDE},	-- Adept Sandfisher
	{	id	= 13017,	faction = AchieveIt.Factions.HORDE},	-- Champion of the Vulpera
	{	id	= 13041,	faction = AchieveIt.Factions.HORDE},	-- Hungry, Hungry Ranishu
	{	id	= 12478,	faction = AchieveIt.Factions.HORDE},	-- Secrets in the Sands
	{	id	= 13437,	faction = AchieveIt.Factions.HORDE},	-- Scavenge like a Vulpera
	{	id	= 13014,	faction = AchieveIt.Factions.HORDE},	-- Vorrik's Champion

}).locate =	function() -- p_current_map)

	-- return Zone.Voldun ==	p_current_map;
	return 864 == C_Map.GetBestMapForUnit("player") 

end;
-----------
-- Quests / Battle for Azeroth / Zuldazar --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, AchieveIt.GetMapName(Zone.Zuldazar), {
	13035, 	-- By de Power of de Loa!
	13048,	-- Life Finds a Way...To Die!
	{	id	= 12480,	faction = AchieveIt.Factions.HORDE},	-- A Bargain of Blood
	{	id	= 13030,	faction = AchieveIt.Factions.HORDE},	-- How to Ptrain You Pterrordax
	{	id	= 13573,	faction = AchieveIt.Factions.HORDE},	-- How to Ptrain You Pterrordax
	{	id	= 13542,	faction = AchieveIt.Factions.HORDE},	-- How to Train Your Direhorn
	{	id	= 13039,	faction = AchieveIt.Factions.HORDE},	-- Paku'ai
	{	id	= 13038,	faction = AchieveIt.Factions.HORDE},	-- Raptari Rider
	{	id	= 12481,	faction = AchieveIt.Factions.HORDE},	-- The Final Seal
	{	id	= 11861,	faction = AchieveIt.Factions.HORDE},	-- The Throne of Zuldazar
	{	id	= 13037,	faction = AchieveIt.Factions.HORDE},	-- Torcanata

}).locate =	function() --p_current_map)

	-- return Zone.Zuldazar ==	p_current_map;
	return 862 == C_Map.GetBestMapForUnit("player") 

end;

-----------
-- Quests / Battle for Azeroth / Mechagon --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, AchieveIt.GetMapName(Zone.Mechagon), {
	13791, 	-- Making the Mount
	{	id = 13553, faction = AchieveIt.Factions.ALLIANCE},	-- The Mechagonian Threat
	{	id = 13700,	faction = AchieveIt.Factions.HORDE},	-- The Mechagonian Threat
	13790, -- Armed for Action


});

-----------
-- Quests / Battle for Azeroth / Nazjatar --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, AchieveIt.GetMapName(Zone.Nazjatar), {
	{	id = 13710, faction = AchieveIt.Factions.ALLIANCE},	-- Sunken Ambitions


});

-----------
-- Quests / Battle for Azeroth / Assaults --
-----------

AchieveIt.Categories:addCategory(CatID.Quests_BFAzeroth, L["Assaults"], {
	14161, -- All Consuming
	14154, -- Defend the Vale
	{	id	= 13435,	faction = AchieveIt.Factions.HORDE},	-- Doomsoul Surprise
	{	id	= 13284,	faction = AchieveIt.Factions.HORDE},	-- Frontline Warrior
	{	id	= 13441,	faction = AchieveIt.Factions.HORDE},	-- Pushing the Payload
	{	id	= 13437,	faction = AchieveIt.Factions.HORDE},	-- Scavenge like a Vulpera
	{	id	= 13426,	faction = AchieveIt.Factions.ALLIANCE},	-- Come On and Slam
	{	id	= 13283,	faction = AchieveIt.Factions.ALLIANCE},	-- Frontline Warrior
	{	id	= 13440,	faction = AchieveIt.Factions.ALLIANCE},	-- Pushing the Payload
	14153, -- Uldum Under Assault
	{	id	= 13285,	faction = AchieveIt.Factions.ALLIANCE},	-- Upright Citizens

});

----------------------
-- Quests / Shadowlands --
----------------------

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands, L["Progress"], {
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

});

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands, AchieveIt.GetMapName(Zone.Ardenweald), {
	14164, -- Awaken, Ardenweald
	14672, -- A Bit of This, A Bit of That
	14671, -- Something's Not Quite Right....
});

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands, AchieveIt.GetMapName(Zone.Bastion), {
	14741, -- Aerial Ace
	14762, -- Breaking the Stratus Fear
	14735, -- Flight School Graduate
	14281, -- The Path to Ascension
	14737, -- What Bastion Remembered
});

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands, AchieveIt.GetMapName(Zone.Korthia), {
	15107, -- Conquering Korthia
	15056, -- Friend of Bloop
	15055, -- Friend of Ooz 
	15057, -- Friend of Plaguey
	15066, -- Reliquary Restoration
}).locate =	function()

	return 1961 == C_Map.GetBestMapForUnit("player") 

end;	

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands, AchieveIt.GetMapName(Zone.Maldraxxus), {
	14206, -- Blade of the Primus
	14802, -- Bloodsport
	14626, -- Harvester of Sorrow
	14721, -- It's In The Mix
});

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands, AchieveIt.GetMapName(Zone.Revendreth), {
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
});

AchieveIt.Categories:addCategory(CatID.Quests_Shadowlands, AchieveIt.GetMapName(Zone.TheMaw), {
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
});

end; --function AchieveIt:LoadQuestCategories()
