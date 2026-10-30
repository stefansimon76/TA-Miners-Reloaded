local minertier1 = "crust_extractor"
local minertier2 = "moho_extractor"
local minertier3 = "mantle_extractor"

function TaLoadTech(tiers)
    if tiers and tiers.minertier1 then
        TATechLoader(tiers.minertier1, minertier1)
    end
    if tiers and tiers.minertier2 then
        TATechLoader(tiers.minertier2, minertier2)
    end
    if tiers and tiers.minertier3 then
        TATechLoader(tiers.minertier3, minertier3)
    end
end

function TaLoadRecipe(tiers)
    if tiers and tiers.minertier1 then
        TARecipeLoader(tiers.minertier1, minertier1)
    end
    if tiers and tiers.minertier2 then
        TARecipeLoader(tiers.minertier2, minertier2)
    end
    if tiers and tiers.minertier3 then
        TARecipeLoader(tiers.minertier3, minertier3)
    end
end

function TATechLoader(technologies, tier)
    if not mods["space-exploration"] then
        if technologies and technologies then
            if technologies and technologies.prerequisites then
                for _, value in pairs(technologies.prerequisites) do
                    if not mods["CustomModules"] then
                        table.insert(data.raw["technology"][tier].prerequisites, value)
                    else
                        if value ~= "speed-module" and value ~= "speed-module-2" and value ~= "speed-module-3" then
                            table.insert(data.raw["technology"][tier].prerequisites, value)
                        end
                    end
                end
            end
            if technologies and technologies.count then
                data.raw["technology"][tier]["unit"].count = technologies.count
            end
            if technologies and technologies.time then
                data.raw["technology"][tier]["unit"].time = technologies.time
            end
            if technologies and technologies.ingredients then
                for _, value in pairs(technologies.ingredients) do
                    table.insert(data.raw["technology"][tier]["unit"].ingredients, value)
                end
            end
        end
    else
        if technologies and technologies then
            if technologies and technologies.prerequisites then
                for _, value in pairs(technologies.prerequisites) do
                    if not mods["CustomModules"] then
                        table.insert(data.raw["technology"][tier].prerequisites, value)
                    else
                        if value ~= "speed-module" and value ~= "speed-module-2" and value ~= "speed-module-3" then
                            table.insert(data.raw["technology"][tier].prerequisites, value)
                        end
                    end
                end
            end
            if technologies and technologies.count then
                data.raw["technology"][tier]["unit"].count = technologies.count
            end
            if technologies and technologies.time then
                data.raw["technology"][tier]["unit"].time = technologies.time
            end
            if technologies and technologies.ingredients then
                for _, value in pairs(technologies.ingredients) do
                    table.insert(data.raw["technology"][tier]["unit"].ingredients, value)
                end
            end
        end
    end
end

function TARecipeLoader(recipes, tier)
    if recipes and recipes.category then
        data.raw["recipe"][tier].category = recipes.category
    end
    if recipes then
        data.raw["recipe"][tier].energy_required = recipes.energy_required
        local r = Ta_Result(data.raw["recipe"][tier].ingredients, recipes.ingredients)
        local r2 = data.raw["recipe"][tier].ingredients
        Ta_Changer(r, r2)
    end
end

function Ta_Find(a, b)
    for _, new in pairs(b) do
        if new == a then
            return true
        end
    end
end

function Ta_Difference(old, new)
    local list = {}
    for _, new in pairs(new) do
        if not Ta_Find(new, old) then
            table.insert(list, new)
        end
    end
    return list
end

function Ta_Ugualiance(old, new)
    local list = {}
    for _, new in pairs(new) do
        if Ta_Find(new, old) then
            table.insert(list, new)
        end
    end
    return list
end

--[
function Ta_Take_Name(tables)
    local names = {}
    for _, tablet in pairs(tables) do
        if tablet and tablet.name then
            table.insert(names, tostring(tablet.name))
        end
    end
    return names
end

--]]
--[[
function Ta_Take_Name(tables)
    local names = {}
    --for _, tablet in pairs(tables) do
        if tables and tables.name then
            table.insert(names, tostring(tables.name))
        end
    --end
        return names
end
--]]
function Ta_Add_As_Table(table_with_data, names)
    local out = {}
    for _, value in pairs(names) do
        if tostring(table_with_data.name) == value then
            out = { type = tostring(table_with_data.type), name = value, amount = table_with_data.amount }
        end
    end
    return out
end

function Ta_Result(table_original, table_new, table_to_edit)
    if table_to_edit == nil then
        table_to_edit = table_original
    end
    local out = {}
    --TaDifference with value from new
    --[
    for _, value in pairs(table_new) do
        local try = Ta_Add_As_Table(value, Ta_Difference(Ta_Take_Name(table_original), Ta_Take_Name(table_new)))
        if try.name ~= nil then
            table.insert(out, try)
        end
    end
    --]]
    --value presend only in the old
    --[
    for _, value in pairs(table_original) do
        local try = Ta_Add_As_Table(value, Ta_Difference(Ta_Take_Name(table_new), Ta_Take_Name(table_original)))
        if try.name ~= nil then
            table.insert(out, try)
        end
    end
    --]]
    --[
    --value present in old and new
    for _, value in pairs(table_new) do
        local try = Ta_Add_As_Table(value, Ta_Ugualiance(Ta_Take_Name(table_original), Ta_Take_Name(table_new)))
        if try.name ~= nil then
            table.insert(out, try)
        end
    end
    --]]
    return out
end

function Ta_Clear_Table(data)
    if data == nil or data ~= {} then
        for k in ipairs(data) do
            data[k] = {}
        end
    end
end

function Ta_Insert_Table(tablet, data)
    for _, value in pairs(data) do
        table.insert(tablet, value)
    end
end

function Ta_Changer(new, old)
    Ta_Clear_Table(old)
    Ta_Insert_Table(old, new)
end
