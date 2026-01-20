local addonName, addon = ...;

local L = addon.L
addon.Achievements = addon.Achievements or {}

-- Add new entry for Legion
addon.Achievements.HousingLegion= {}

function InitializeHousingLegion()

    local ACM_Legion_ValSharah_Exploration = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(97),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            11258
        }
    }

    local ACM_Legion_Valsharah_Quests = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(96),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            10698
        }
    }

    local ACM_Legion_Valsharah = {
        HousingUtilitiesGetZoneNameByMapID(641),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Legion_Valsharah_Quests,
        ACM_Legion_ValSharah_Exploration
    }

    local ACM_Legion_Highmountain_Quests = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(96),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            10398
        }
    }

    local ACM_Legion_Highmountain_Exploration = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(97),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            11257
        }
    }

    local ACM_Legion_Highmountain = {
        HousingUtilitiesGetZoneNameByMapID(650),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Legion_Highmountain_Quests,
        ACM_Legion_Highmountain_Exploration
    }

    local ACM_Legion_Suramar_Quests = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(96),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            11124,
            11340
        }
    }

    local ACM_Legion_Suramar = {
        HousingUtilitiesGetZoneNameByMapID(680),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Legion_Suramar_Quests
    }

    local ACM_Legion_Zones = {
        ZONE,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Legion_Valsharah,
        ACM_Legion_Highmountain,
        ACM_Legion_Suramar
    }

    local ACM_Legion_Dungeons_NeltharionsLair = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(1206),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            10996
        }
    }

    local ACM_Legion_Dungeons = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15272),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Legion_Dungeons_NeltharionsLair
    }

    local ACM_Legion_Raids_TombOfSargeras = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(1525),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            11699
        }
    }

    local ACM_Legion_Raids = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15278),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Legion_Raids_TombOfSargeras
    }

    local ACM_Legion_OrderHalls_ALegendaryCampaign = {
        HousingUtilitiesGetAchievementName(11137),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            42270,
            42271,
            42272,
            42273,
            42274,
            42275,
            42276,
            42277,
            42279,
            42280,
            42281,
            42282
        }
    }

    local ACM_Legion_OrderHalls_RaiseAnArmy = {
        HousingUtilitiesGetAchievementName(11212),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            60981,
            60982,
            60983,
            60984,
            60985,
            60986,
            60987,
            60988,
            60989,
            60990,
            60991,
            60992
        }
    }

    local ACM_Legion_OrderHalls_LegendaryResearch = {
        HousingUtilitiesGetAchievementName(11223),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            60962,
            60963,
            60964,
            60965,
            60966,
            60967,
            60968,
            60969,
            60970,
            60971,
            60972,
            60973
        }
    }

    local ACM_Legion_OrderHalls_HiddenPotential = {
        HousingUtilitiesGetAchievementName(10460),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            42287,
            42288,
            42289,
            42290,
            42291,
            42292,
            42293,
            42294,
            42295,
            42296,
            42297,
            42298
        }
    }

    local ACM_Legion_OrderHalls = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15304),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Legion_OrderHalls_ALegendaryCampaign,
        ACM_Legion_OrderHalls_RaiseAnArmy,
        ACM_Legion_OrderHalls_LegendaryResearch,
        ACM_Legion_OrderHalls_HiddenPotential
    }

    local ACMList = { 
        EXPANSION_NAME6,
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_Legion_Zones,
        ACM_Legion_Dungeons,
        ACM_Legion_Raids,
        ACM_Legion_OrderHalls
    }

    addon.Achievements.HousingLegion = ACMList
end