local addonName, addon = ...;

addon.Achievements = addon.Achievements or {}

if not KrowiAF then 
    print("Krowi's Achievement Filter Addon not loaded!")
    return -- Exit the script
end

local KhamulsHousingDecorEventListenerFrame = CreateFrame("Frame")
function KhamulsHousingDecorEventListenerFrame:Disable() 
    self:UnregisterAllEvents()
    self:SetScript("OnEvent", nil)
    self:SetScript("OnUpdate", nil)
    self:Hide()
end

StaticPopupDialogs["KHAMULS_HOUSING_DECOR_DEPRECATED"] = {
    text =
        "Important Information for \"Krowi's Achievement Filter: Khamuls Housing Decoration Achievement Filters\"\n\n" ..
        "This Addon will no longer be maintained.\n\n" ..
        "I've moved the housing decor collection to my other plugin for " ..
        "Krowi's Achievement Filter addon.\n\n" ..
        "Additionally to the decoration collection (including midnight decorations), you will find the " ..
        "meta-mount collection, the campsite collection and the pet collection " ..
        "and more will come in the future.\n\n" ..
        "If you haven't installed \"Krowi's Achievement Filter: " ..
        "Khamuls Collections Plugin\" you can find it on curseforge.com.",
    button1 = OKAY,
    timeout = 0,               -- 0 = stay until user clicks OK
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,        -- avoid taint conflicts with other addons
}

KhamulsHousingDecorEventListenerFrame:RegisterEvent("PLAYER_LOGIN")
KhamulsHousingDecorEventListenerFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        StaticPopup_Show("KHAMULS_HOUSING_DECOR_DEPRECATED")
        InitializeAllAchievementsForKhamulsHouseDecorList()
        KhamulsHousingDecorEventListenerFrame:Disable()
    end
end)

function InitializeAllAchievementsForKhamulsHouseDecorList() 
    -- add all housing achievements to 
    InitializeHousingTWW()
    InitializeHousingDF()
    InitializeHousingSL()
    InitializeHousingBfA()
    InitializeHousingLegion()
    InitializeHousingWoD()
    InitializeHousingMoP()
    InitializeHousingWotLk()
    InitializeHousingClassic()
    InitializeHousingPvP()

    local aggregatedAchievementsList = {
        971,
        {
            addon.L["Khamul's House Decor Achievement List"],
            addon.Achievements.HousingClassic,
            addon.Achievements.HousingWotLk,
            addon.Achievements.HousingMoP,
            addon.Achievements.HousingWoD,
            addon.Achievements.HousingLegion,
            addon.Achievements.HousingBfA,
            addon.Achievements.HousingSL,
            addon.Achievements.HousingDF,
            addon.Achievements.HousingTWW,
            addon.Achievements.HousingPvP
        }
    }

    KrowiAF.CategoryData.KhamulsHousingDecorAchievementLists = aggregatedAchievementsList
end