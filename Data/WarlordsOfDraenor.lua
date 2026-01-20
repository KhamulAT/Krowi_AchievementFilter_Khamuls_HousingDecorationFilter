local addonName, addon = ...;

local L = addon.L
addon.Achievements = addon.Achievements or {}

-- Add new entry for WoD
addon.Achievements.HousingWoD = {}

function InitializeHousingWoD()

    local ACM_WoD_TradeSkills_Archaeology = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15071),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            9415
        }
    }

    local ACM_WoD_TradeSkills = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(169),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_WoD_TradeSkills_Archaeology
    }

    local ACMList = {
        EXPANSION_NAME5,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_WoD_TradeSkills
    }

    addon.Achievements.HousingWoD = ACMList
end