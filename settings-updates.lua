-- Pynamods
if mods["pycoalprocessing"] and mods["pyfusionenergy"] and mods["pyhightech"] then
    data.raw["bool-setting"]["ta-modded-py"].hidden = false
end
-- Bob's mods
if mods["bobplates"] and mods["boblogistics"] and mods["bobmodules"] then
    data.raw["bool-setting"]["ta-modded-bob"].hidden = false
end
-- Krastorio2
if mods["Krastorio2"] then
    data.raw["bool-setting"]["ta-modded-kr2"].hidden = false
end
--space exploration
if mods["space-exploration"] then
    data.raw["bool-setting"]["ta-modded-se"].hidden = false
end
--industrial revolution 2
if mods["IndustrialRevolution"] then
    data.raw["bool-setting"]["ta-modded-ir2"].hidden = false
end
--Exotic Industries
if mods["exotic-industries-compatibility"] then
    data.raw["bool-setting"]["ta-modded-ei"].hidden = false
end
--space age
--if mods["space-age"] then
--    data.raw["bool-setting"]["ta-modded-sa"].hidden = false
--end