local addonName, addon = ...;

local L = addon.L
addon.Achievements = addon.Achievements or {}

-- Add new entry for TWW
addon.Achievements.HousingTWW = {}

function InitializeHousingTWW()

    local ACM_TWW_Zones_IsleOfDorn_Quests = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(96),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            20595
        }
    }

    local ACM_TWW_Zones_IsleOfDorn_Exploration = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(97),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            40859
        }
    }


    local ACM_TWW_Zones_IsleOfDorn = {
        HousingUtilitiesGetZoneNameByMapID(2248),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_TWW_Zones_IsleOfDorn_Quests,
        ACM_TWW_Zones_IsleOfDorn_Exploration,
        {
            41186
        }
    }

    local ACM_TWW_Zones_TheRingingDeeps_Exploration = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(97),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            40504
        }
    }

    local ACM_TWW_Zones_TheRingingDeeps = {
        HousingUtilitiesGetZoneNameByMapID(2214),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_TWW_Zones_TheRingingDeeps_Exploration
    }

    local ACM_TWW_Zones_AzjKahet_Exploration = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(97),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            40542
        }
    }

    local ACM_TWW_Zones_AzjKahet = {
        HousingUtilitiesGetZoneNameByMapID(2255),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_TWW_Zones_AzjKahet_Exploration
    }

    local ACM_TWW_Zones_Undermine_Quests = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(96),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            40894
        }
    }

    local ACM_TWW_Zones_Undermine = {
        HousingUtilitiesGetZoneNameByMapID(2346),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_TWW_Zones_Undermine_Quests
    }

    local ACM_TWW_Zones = {
        ZONE,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_TWW_Zones_IsleOfDorn,
        ACM_TWW_Zones_TheRingingDeeps,
        ACM_TWW_Zones_AzjKahet,
        ACM_TWW_Zones_Undermine
    }

    local ACM_TWW_Raids_LiberationOfUndermine = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(2779),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            41119
        }
    }

    local ACM_TWW_Raids = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15278),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_TWW_Raids_LiberationOfUndermine
    }

    local ACM_TWW_TradeSkills = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(169),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            19408
        }
    }

    local ACM_TWW_Lorewalking = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15552),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            42187,
            42188,
            42189,
            61467
        }
    }

    local ACMList = { 
        "The War Within",
        false,
        {
            IgnoreCollapsedChainFilter = true,
            Tooltip = HousingUtilitiesReplacePlaceholderInText(L["Tt_UseMetaAchievementPlugin"], {HousingUtilitiesGetAchievementName(61451)})
        },
        ACM_TWW_Zones,
        ACM_TWW_Raids,
        ACM_TWW_TradeSkills,
        ACM_TWW_Lorewalking,
        {
            61451
        }


    }

    addon.Achievements.HousingTWW = ACMList
end