local addonName, addon = ...;

local L = addon.L
addon.Achievements = addon.Achievements or {}

-- Add new entry for DF
addon.Achievements.HousingDF = {}

function InitializeHousingDF()


    local ACM_DF_Zones_TheAzureSpan_Quests = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(96),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            17773
        }
    }

    local ACM_DF_Zones_TheAzureSpan = {
        HousingUtilitiesGetZoneNameByMapID(2024),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_DF_Zones_TheAzureSpan_Quests
    }

    local ACM_DF_Zones_Thaldraszus_Quests = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(96),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            19507
        }
    }

    local ACM_DF_Zones_Thaldraszus = {
        HousingUtilitiesGetZoneNameByMapID(2025),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_DF_Zones_Thaldraszus_Quests
    }

    local ACM_DF_Zones_TheForbiddenReach_Exploration = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(97),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            17529
        }
    }

    local ACM_DF_Zones_TheForbiddenReach = {
        HousingUtilitiesGetZoneNameByMapID(2151),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_DF_Zones_TheForbiddenReach_Exploration
    }

    local ACM_DF_Zones = {
        ZONE,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_DF_Zones_TheAzureSpan,
        ACM_DF_Zones_Thaldraszus,
        ACM_DF_Zones_TheForbiddenReach
    }

    local ACMList = { 
        EXPANSION_NAME9,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_DF_Zones,
        {
            19458
        }

    }

    addon.Achievements.HousingDF = ACMList
end