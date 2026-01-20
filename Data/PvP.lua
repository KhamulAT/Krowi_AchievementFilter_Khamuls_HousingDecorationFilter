local addonName, addon = ...;

local L = addon.L
addon.Achievements = addon.Achievements or {}

-- Add new entry for DF
addon.Achievements.HousingPvP = {}

function InitializeHousingPvP()

    local ACM_WarsongGulch = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(489),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            167,
            200
        }
    }

    local ACM_ArathiBasin = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(2107),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            158,
            1153
        }
    }

    local ACM_EyeOfTheStorm = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(566),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            212,
            213
        }
    }

    local ACM_AlteracValley = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(30),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            221,
            222
        }
    }

    local ACM_BattleForGilneas = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(761),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            5245
        }
    }

    local ACM_TwinPeaks = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(726),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            5223
        }
    }

    local ACM_TempleOfKotmogu = {
        HousingUtilitiesGetDungeonNameByLFGDungeonID(998),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            6981
        }
    }

    local ACM_DeephaulRavine = {
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15525),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        {
            40210,
            40612
        }
    }

    local ACMList = { 
        HousingUtilitiesGetAchievementCategoryNameNyCategoryID(15279),
        false,
        {
            IgnoreCollapsedChainFilter = true
        },
        ACM_WarsongGulch,
        ACM_ArathiBasin,
        ACM_EyeOfTheStorm,
        ACM_AlteracValley,
        ACM_BattleForGilneas,
        ACM_TwinPeaks,
        ACM_TempleOfKotmogu,
        ACM_DeephaulRavine,
        {
            61683,
            61684,
            61685,
            61686,
            61687,
            61688,
            229,
            231,
            1157
        }

    }

    addon.Achievements.HousingPvP = ACMList
end