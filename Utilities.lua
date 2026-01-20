local addonName, addon = ...;

addon.Achievements = addon.Achievements or {}

-- Setup some vars
addon.L = LibStub("AceLocale-3.0"):GetLocale(addonName);

function HousingUtilitiesGetAchievementNameWithPrefix(achievementID, prefix) 
    --print(achievementID)
    if not prefix then
        prefix = ""
    end

    local name = GetAchievementName(achievementID)
    
    if name == addon.L["Unknown Achievement"] then
        -- try to get the achievementname from locale
        local achievementLocaleKey = "ACM_" .. achievementID

        if addon.L[achievementLocaleKey] then
            name = addon.L[achievementLocaleKey]
        else
            name = name .. ": (" .. achievementID .. ")"
        end
    end
    
    return prefix .. name
end

function HousingUtilitiesGetAchievementName(achievementID)
    local name = select(2, GetAchievementInfo(achievementID)) or addon.L["Unknown Achievement"]

    return name
end

function HousingUtilitiesReplacePlaceholderInText(template, values) 
    return template:gsub("{(%d+)}", function(index)
        return values[tonumber(index)] or "{" .. index .. "}"
    end)
end

function HousingUtilitiesGetZoneNameByMapID(mapID)
    return C_Map.GetMapInfo(mapID).name
end

function HousingUtilitiesGetDungeonNameByLFGDungeonID(dungeonID)
  local name, typeID, subtypeID = GetLFGDungeonInfo(dungeonID)

  if name then
    return name
  end
  return QUEUED_STATUS_UNKNOWN
end

function HousingUtilitiesGetAchievementCategoryNameNyCategoryID(categoryId)
  if type(categoryId) ~= "number" then
    return QUEUED_STATUS_UNKNOWN
  end

  local name = GetCategoryInfo(categoryId)
  return name
end

