
local _ADDON_NAME, ADDON = ...
local UITK = ADDON.UITK

function ADDON.AchieveItOpts_CancelOrLoad()


	ADDON.draggable_window_checkbox:SetChecked(AchieveIt_Data.DraggableAchievementWindow);
	ADDON.show_pvp_rewards:SetChecked(AchieveIt_Data.ShowPvPRewards);
	ADDON.show_bpet_rewards:SetChecked(AchieveIt_Data.ShowBPetRewards);
	ADDON.use_rep_view:SetChecked(AchieveIt_Data.UsePandariaRepView);
end

function ADDON.AchieveItOpts_Okay()
	AchieveIt_Data.DraggableAchievementWindow = ADDON.draggable_window_checkbox:GetChecked();
	AchieveIt_Data.ShowPvPRewards = ADDON.show_pvp_rewards:GetChecked();
	AchieveIt_Data.ShowBPetRewards = ADDON.show_bpet_rewards:GetChecked();
	AchieveIt_Data.UsePandariaRepView = ADDON.use_rep_view:GetChecked();
end


function ADDON.build_opts_frame()
	local opts_frame = CreateFrame("Frame", "AchieveItOptsFrame", UIParent)

	ADDON.options_text = UITK.create_fontstring(opts_frame)
	ADDON.options_text:SetText("Any changes will require a UI reload")
	ADDON.options_text:SetPoint("TOPLEFT", opts_frame, "TOPLEFT", 10, -10)
	
	--if (Overachiever == nil) then
		ADDON.draggable_window_checkbox = UITK.create_checkbox(opts_frame, nil, "Draggable Achievement Window")
		ADDON.draggable_window_checkbox:SetChecked(AchieveIt_Data.DraggableAchievementWindow);
		ADDON.draggable_window_checkbox:SetPoint("TOPLEFT", ADDON.options_text, "BOTTOMLEFT", 0, -10)
	--[[else
		ADDON.warning_text = UITK.create_fontstring(opts_frame)
		ADDON.warning_text:SetText("Overachiever Detected!: Using Overachiever drag settings instead")
		ADDON.warning_text:SetPoint("TOPLEFT", opts_frame, "TOPLEFT", 45, -30)
	end;	]]
	
	ADDON.use_rep_view = UITK.create_checkbox(opts_frame, nil, "Sort Pandaria quests by reputation")
	ADDON.use_rep_view:SetChecked(AchieveIt_Data.UsePandariaRepView);
	-- ADDON.use_rep_view:SetPoint("TOPLEFT", ADDON.draggable_window_checkbox, "BOTTOMLEFT", 0, -5)
	ADDON.use_rep_view:SetPoint("TOPLEFT", ADDON.options_text, "BOTTOMLEFT", 0, -35)	


	ADDON.rewards_filter_text = UITK.create_fontstring(opts_frame)
	ADDON.rewards_filter_text:SetText("Show Rewards By Type:")
	ADDON.rewards_filter_text:SetPoint("TOPLEFT", ADDON.use_rep_view, "BOTTOMLEFT", 0, -10)

	ADDON.show_pvp_rewards = UITK.create_checkbox(opts_frame, nil, _G["PVP"])
	ADDON.show_pvp_rewards:SetChecked(AchieveIt_Data.ShowPvPRewards);
	ADDON.show_pvp_rewards:SetPoint("TOPLEFT", ADDON.rewards_filter_text, "BOTTOMLEFT", 15, 0)

	ADDON.show_bpet_rewards = UITK.create_checkbox(opts_frame, nil, _G["BATTLE_PET_SOURCE_5"])
	ADDON.show_bpet_rewards:SetChecked(AchieveIt_Data.ShowBPetRewards);
	ADDON.show_bpet_rewards:SetPoint("TOPLEFT", ADDON.show_pvp_rewards, "BOTTOMLEFT", 0, 4)

	opts_frame:SetScript('OnLoad', ADDON.AchieveItOpts_CancelOrLoad)

	-- When the player clicks okay, set the Saved Variables to the current Check Box setting
	opts_frame.okay = ADDON.AchieveItOpts_Okay

	-- When the player clicks cancel, set the Check Box status to the Saved Variables.
	opts_frame.cancel = ADDON.AchieveItOpts_CancelOrLoad

	opts_frame.name = "AchieveIt"
	InterfaceOptions_AddCategory(opts_frame);

end



