--if mods["CustomModules"] then
    --require("utils.recipebuilder")
--else
--    return
--end

-- Tungsten support
if mods["space-age"] then
    -- sad, this does not work....
    --data.raw[ "mining-drill" ][ "crust_extractor" ].resource_categories:insert( "hard-solid" )
    --data.raw[ "mining-drill" ][ "moho_extractor" ].resource_categories:insert( "hard-solid" )
    --data.raw[ "mining-drill" ][ "mantle_extractor" ].resource_categories:insert( "hard-solid" )

    table.insert( data.raw[ "mining-drill" ][ "crust_extractor" ].resource_categories, "hard-solid" )
    table.insert( data.raw[ "mining-drill" ][ "moho_extractor" ].resource_categories, "hard-solid" )
    table.insert( data.raw[ "mining-drill" ][ "mantle_extractor" ].resource_categories, "hard-solid" )

    data.raw["item"]["crust_extractor"].weight = 250000
    data.raw["item"]["moho_extractor"].weight = 500000
    data.raw["item"]["mantle_extractor"].weight = 1000000
end