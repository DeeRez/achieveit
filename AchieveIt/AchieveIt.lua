local ADDON_NAME, ADDON = ... -- Pulls back the Addon-Local Variables and store them locally.


AchieveIt = LibStub("AceAddon-3.0"):NewAddon("AchieveIt", "AceHook-3.0");

-- Locale
local L = LibStub("AceLocale-3.0"):GetLocale("AchieveIt");


---------------
-- CONSTANTS --
---------------


-- The current TOC version
-- Used for making sure new features are valid between US and EU patches
AchieveIt.TOC_VERSION = select(4, GetBuildInfo());

-- Player Faction
AchieveIt.FACTION = UnitFactionGroup("player");

-- Factions
AchieveIt.Factions = {
	HORDE		= "Horde",
	ALLIANCE	= "Alliance",
	NEUTRAL	= "Neutral"
};


-- Addon initialised
function AchieveIt:OnInitialize()


end

