local _ADDON_NAME, ADDON = ... -- Pulls back the Addon-Local Variables and store them locally.

ADDON.WHATSNEW_TEXT = "" ..
[[ 
- Fixed the list order of some achievements
		
- IMPORTANT NOTE FOR FOREIGN LOCALES: 
- Category localisation is pretty much done. A few sub-category translations are still needed for some locales. 
- Locate boss achievement functionality is only complete for enUS locale, other locales should work if the 
   boss name is the same as the encounter name.
- Boss names that are different than the encounter name still require translation.
- Any help with translations is greatly appreciated.
]] .. "|n"
