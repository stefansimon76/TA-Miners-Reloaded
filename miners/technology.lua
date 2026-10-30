data:extend({
    -- crust
    {
        type = "technology",
        name = "crust_extractor",
        --hidden = true,
        icon_size = 128,
        icon = "__TA-Miners-Reloaded__/graphics/crust/crusttec.png",
        prerequisites = {},
            effects = {
                {type = "unlock-recipe", recipe = "crust_extractor"}
            },
            unit = {
                time = 0,
                count = 0,
                ingredients = {},
            },
        order = "e-a-c"
    },
    -- moho
    {
        type = "technology",
        name = "moho_extractor",
        --hidden = true,
        icon_size = 128,
        icon = "__TA-Miners-Reloaded__/graphics/moho/mohotec.png",
        prerequisites = {},
            effects = {
                {type = "unlock-recipe", recipe = "moho_extractor"}
            },
            unit = {
                time = 0,
                count = 0,
                ingredients = {},
            },
        order = "e-a-c"
    },
    -- mantle
    {
        type = "technology",
        name = "mantle_extractor",
        --hidden = true,
        icon_size = 128,
        icon = "__TA-Miners-Reloaded__/graphics/mantle/mantletec.png",
        prerequisites = {},
        effects = {
            {type = "unlock-recipe", recipe = "mantle_extractor"}
        },
        unit = {
            time = 0,
            count = 0,
            ingredients = {},
        },
        order = "e-a-c"
    },
})

if mods["space-exploration"] then
    -- crust  
    data.raw.technology["crust_extractor"].prerequisites = {}
    data.raw.technology["crust_extractor"].effects = {
        {type = "unlock-recipe", recipe = "crust_extractor"}
    }
    data.raw.technology["crust_extractor"].unit = {
        time = 0,
        count = 0,
        ingredients = {},
    }
    -- moho
    data.raw.technology["moho_extractor"].prerequisites = {}
    data.raw.technology["moho_extractor"].effects = {
        {type = "unlock-recipe", recipe = "moho_extractor"}
    }
    data.raw.technology["moho_extractor"].unit = {
        time = 0,
        count = 0,
        ingredients = {},
    }
    -- mantle
    data.raw.technology["mantle_extractor"].prerequisites = {}
    data.raw.technology["mantle_extractor"].effects = {
        {type = "unlock-recipe", recipe = "mantle_extractor"}
    }
    data.raw.technology["mantle_extractor"].unit = {
        time = 0,
        count = 0,
        ingredients = {},
    }
end