local addonName, addon = ...;

local L = addon.L
addon.Achievements = addon.Achievements or {}

-- Add new entry for WotLk
addon.Achievements.HousingWotLk = {}

function InitializeHousingWotLk()

    local ACM_WotLk_SholoazarBasin = {
        HousingUtilitiesGetZoneNameByMapID(119),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            938
        }
    }

    local ACM_WotLk_Zones = {
        ZONE,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_WotLk_SholoazarBasin
    }

    local ACM_WotLk_Raids_OnyxiasLair_25Player = {
        RAID_DIFFICULTY2,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            4405
        }
    }

    local ACM_WotLk_Raids_OnyxiasLair = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(257),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_WotLk_Raids_OnyxiasLair_25Player
    }

    local ACM_WotLk_Raids = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15278),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_WotLk_Raids_OnyxiasLair
    }

    local ACMList = {
        EXPANSION_NAME2,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_WotLk_Zones,
        ACM_WotLk_Raids
    }

    addon.Achievements.HousingWotLk = ACMList
end