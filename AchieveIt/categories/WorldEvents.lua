
local	CatID	= AchieveItConstants.CategoryIDs
local	Zone = AchieveItConstants.zone

--	Locale
local	L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");

------------------------
--	World Events
------------------------


AchieveIt.Categories:addCategory(CatID.WorldEvents, L["Day of the Dead"], {
	3456,	-- Dead Man's Party
	9426,	-- To The Afterlife
	9427,	-- Vientos! (20 contenders)
	9428,	-- Calavera (50 contenders)
}, 1);
