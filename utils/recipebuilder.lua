local ta_data_table = require("utils.ta-data-table")

--if not settings.startup["ta-only-modded-recipe"].value == true then
--[
    if settings.startup["ta-vanilla-recipes"].value == "easy" then
        TaLoadRecipe(ta_data_table.vanilla.recipe.difficultyeasy)
    elseif settings.startup["ta-vanilla-recipes"].value == "normal" then
        TaLoadRecipe(ta_data_table.vanilla.recipe.difficultynormal)
    elseif settings.startup["ta-vanilla-recipes"].value == "hard" then
        TaLoadRecipe(ta_data_table.vanilla.recipe.difficultyhard)
    elseif settings.startup["ta-vanilla-recipes"].value == "disabled" then

    end
--]]
--else
--[
    --if settings.startup["ta-modded-se"].value == true then
    --    TATechLoader(ta_data_table.modded.se.technology)
    --elseif settings.startup["ta-vanilla-recipes"].value == "easy" then
    if settings.startup["ta-vanilla-recipes"].value == "easy" then
        TaLoadTech(ta_data_table.vanilla.technology.difficultyeasy)
    elseif settings.startup["ta-vanilla-recipes"].value == "normal" or settings.startup["ta-vanilla-recipes"].value == "disabled"  then
        TaLoadTech(ta_data_table.vanilla.technology.difficultynormal)
    elseif settings.startup["ta-vanilla-recipes"].value == "hard" then
        TaLoadTech(ta_data_table.vanilla.technology.difficultyhard)
    elseif settings.startup["ta-modded-se"].value == true then

    end
--]]
--end

--[
if settings.startup["ta-modded-bob"].value == true then
    TaLoadRecipe(ta_data_table.modded.bob.recipe)
end
if settings.startup["ta-modded-py"].value == true then
    TaLoadRecipe(ta_data_table.modded.py.recipe)
end
if settings.startup["ta-modded-kr2"].value == true then
    TaLoadRecipe(ta_data_table.modded.kr2.recipe)
end
if settings.startup["ta-modded-ir2"].value == true then
    TaLoadRecipe(ta_data_table.modded.ir2.recipe)
end
if settings.startup["ta-modded-se"].value == true then
    TaLoadRecipe(ta_data_table.modded.se.recipe)
    --TATechLoader(ta_data_table.modded.se.technology)
end
if settings.startup["ta-modded-ei"].value == true then
    TaLoadRecipe(ta_data_table.modded.ei.recipe)
    --TATechLoader(ta_data_table.modded.se.technology)
end
--]]