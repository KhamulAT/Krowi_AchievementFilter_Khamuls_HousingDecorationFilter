local addonName, addon = ...;

local L = addon.L
addon.Achievements = addon.Achievements or {}

-- Add new entry for WotLk
addon.Achievements.HousingMoP = {}

function InitializeHousingMoP()

    local ACM_MoP_Scenarios_BloodInTheSnow = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(646),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            8316
        }
    }

    local ACM_MoP_Scenarios = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15302),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_MoP_Scenarios_BloodInTheSnow
    }

    local ACMList = {
        EXPANSION_NAME4,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_MoP_Scenarios
    }

    addon.Achievements.HousingMoP = ACMList
end