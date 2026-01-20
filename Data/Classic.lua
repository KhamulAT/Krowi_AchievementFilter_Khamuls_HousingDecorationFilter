local addonName, addon = ...;

local L = addon.L
addon.Achievements = addon.Achievements or {}

-- Add new entry for Classic & Cataclysm
addon.Achievements.HousingClassic= {}

function InitializeHousingClassic()

    local ACM_Classic_NorthernStranglethorn = {
        HousingUtilitiesGetZoneNameByMapID(50),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            940
        }
    }

    local ACM_Classic_EasternPlaguelands = {
        HousingUtilitiesGetZoneNameByMapID(23),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            5442
        }
    }

    local ACM_Classic_EasternKingdoms = {
        HousingUtilitiesGetZoneNameByMapID(13),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Classic_EasternPlaguelands,
        ACM_Classic_NorthernStranglethorn,
        {
            19719
        }
    }

    local ACM_Classic_Zones = {
        ZONE,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Classic_EasternKingdoms
    }

    local ACM_Classic_TradeSkills_Archaeology = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15071),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            4859
        }
    }

    local ACM_Classic_TradeSkills = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(169),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Classic_TradeSkills_Archaeology
    }

    local ACMList = { 
        EXPANSION_NAME0 .. " & " .. EXPANSION_NAME3,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Classic_Zones,
        ACM_Classic_TradeSkills
    }

    addon.Achievements.HousingClassic = ACMList
end