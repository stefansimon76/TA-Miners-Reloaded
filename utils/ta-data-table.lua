local ta_data_table = {}

ta_data_table = {
    vanilla = {
        recipe = {
            difficultyeasy = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 15,
                        ingredients = {
                            { type = "item", name = "iron-gear-wheel", amount = 150 },
                            { type = "item", name = "steel-plate",     amount = 120 },
                            { type = "item", name = "pipe",            amount = 40 },
                            { type = "item", name = "speed-module",    amount = 20 },
                            { type = "item", name = "engine-unit",     amount = 40 },
                        },
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 30,
                        ingredients = {
                            { type = "item", name = "crust_extractor",      amount = 1 },
                            { type = "item", name = "steel-plate",          amount = 200 },
                            { type = "item", name = "pipe",                 amount = 80 },
                            { type = "item", name = "speed-module-2",       amount = 8 },
                            { type = "item", name = "electric-engine-unit", amount = 40 },
                        },
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 45,
                    ingredients = {
                        { type = "item", name = "moho_extractor",     amount = 1 },
                        { type = "item", name = "steel-plate",        amount = 400 },
                        { type = "item", name = "pipe",               amount = 180 },
                        { type = "item", name = "speed-module-3",     amount = 4 },
                        { type = "item", name = "flying-robot-frame", amount = 80 },
                    },
                },
            },
            difficultynormal = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                    ingredients = {
                        { type = "item",  name = "iron-gear-wheel", amount = 200 },
                        { type = "item",  name = "steel-plate",     amount = 150 },
                        { type = "item",  name = "pipe",            amount = 50 },
                        { type = "item",  name = "speed-module",    amount = 25 },
                        { type = "item",  name = "engine-unit",     amount = 50 },
                        { type = "fluid", name = "lubricant",       amount = 250 }
                    },
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 100,
                    ingredients = {
                        { type = "item",  name = "crust_extractor",      amount = 1 },
                        { type = "item",  name = "steel-plate",          amount = 250 },
                        { type = "item",  name = "pipe",                 amount = 100 },
                        { type = "item",  name = "speed-module-2",       amount = 10 },
                        { type = "item",  name = "electric-engine-unit", amount = 50 },
                        { type = "fluid", name = "lubricant",            amount = 500 }
                    },
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 110,
                    ingredients = {
                        { type = "item",  name = "moho_extractor",     amount = 1 },
                        { type = "item",  name = "steel-plate",        amount = 500 },
                        { type = "item",  name = "pipe",               amount = 200 },
                        { type = "item",  name = "speed-module-3",     amount = 5 },
                        { type = "item",  name = "flying-robot-frame", amount = 100 },
                        { type = "fluid", name = "lubricant",          amount = 750 }
                    },
                },
            },
            difficultyhard = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 100,
                        ingredients = {
                            { type = "item",  name = "iron-gear-wheel",       amount = 500 },
                            { type = "item",  name = "steel-plate",           amount = 375 },
                            { type = "item",  name = "pipe",                  amount = 125 },
                            { type = "item",  name = "speed-module",          amount = 62 },
                            { type = "item",  name = "engine-unit",           amount = 125 },
                            { type = "item",  name = "low-density-structure", amount = 125 },
                            { type = "fluid", name = "lubricant",             amount = 625 }
                        },
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 150,
                        ingredients = {
                            { type = "item",  name = "crust_extractor",       amount = 1 },
                            { type = "item",  name = "steel-plate",           amount = 750 },
                            { type = "item",  name = "pipe",                  amount = 300 },
                            { type = "item",  name = "speed-module-2",        amount = 30 },
                            { type = "item",  name = "electric-engine-unit",  amount = 150 },
                            { type = "item",  name = "low-density-structure", amount = 150 },
                            { type = "fluid", name = "lubricant",             amount = 1500 }
                        },
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 200,
                        ingredients = {
                            { type = "item",  name = "moho_extractor",        amount = 1 },
                            { type = "item",  name = "steel-plate",           amount = 1625 },
                            { type = "item",  name = "pipe",                  amount = 650 },
                            { type = "item",  name = "speed-module-3",        amount = 16 },
                            { type = "item",  name = "flying-robot-frame",    amount = 325 },
                            { type = "item",  name = "low-density-structure", amount = 162 },
                            { type = "fluid", name = "lubricant",             amount = 812 }
                        },
                },
            },
            difficultydisabled = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 100,
                        ingredients = {},
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 150,
                        ingredients = {},
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 200,
                        ingredients = {},
                },
            },
        },

        technology = {
            difficultyeasy = {
                minertier1 = {
                    prerequisites = { "engine", "speed-module" },
                        time = 45,
                        count = 750,
                        ingredients = {
                            { "automation-science-pack", 1 },
                            { "logistic-science-pack",   1 },
                            { "chemical-science-pack",   1 },
                        },
                },
                minertier2 = {
                    prerequisites = { "crust_extractor", "speed-module-2", "electric-engine" },
                        time = 90,
                        count = 1000,
                        ingredients = {
                            { "automation-science-pack", 2 },
                            { "logistic-science-pack",   1 },
                            { "chemical-science-pack",   1 },
                            { "production-science-pack", 1 }
                        },
                },
                minertier3 = {
                    prerequisites = { "moho_extractor", "speed-module-3", "robotics" },
                        time = 75,
                        count = 1250,
                        ingredients = {
                            { "automation-science-pack", 2 },
                            { "logistic-science-pack",   2 },
                            { "chemical-science-pack",   1 },
                            { "production-science-pack", 1 },
                            { "utility-science-pack",    1 }
                        },
                },
            },
            difficultynormal = {
                minertier1 = {
                    prerequisites = { "engine", "speed-module" },
                        time = 60,
                        count = 1000,
                        ingredients = {
                            { "automation-science-pack", 2 },
                            { "logistic-science-pack",   1 },
                            { "chemical-science-pack",   1 },
                        },
                },
                minertier2 = {
                    prerequisites = { "crust_extractor", "speed-module-2", "electric-engine" },
                        time = 90,
                        count = 1250,
                        ingredients = {
                            { "automation-science-pack", 2 },
                            { "logistic-science-pack",   2 },
                            { "chemical-science-pack",   1 },
                            { "production-science-pack", 1 }
                        },
                },
                minertier3 = {
                    prerequisites = { "moho_extractor", "speed-module-3", "robotics" },
                        time = 120,
                        count = 1750,
                        ingredients = {
                            { "automation-science-pack", 2 },
                            { "logistic-science-pack",   2 },
                            { "chemical-science-pack",   2 },
                            { "production-science-pack", 1 },
                            { "utility-science-pack",    1 }
                        },
                },
            },
            difficultyhard = {
                minertier1 = {
                    prerequisites = { "engine", "speed-module" },
                        time = 120,
                        count = 1800,
                        ingredients = {
                            { "automation-science-pack", 2 },
                            { "logistic-science-pack",   2 },
                            { "chemical-science-pack",   1.5 },
                        },
                },
                minertier2 = {
                    prerequisites = { "crust_extractor", "speed-module-2", "electric-engine" },
                        time = 180,
                        count = 2500,
                        ingredients = {
                            { "automation-science-pack", 2 },
                            { "logistic-science-pack",   2 },
                            { "chemical-science-pack",   2 },
                            { "production-science-pack", 1.5 }
                        },
                },
                minertier3 = {
                    prerequisites = { "moho_extractor", "speed-module-3", "robotics" },
                        time = 240,
                        count = 3200,
                        ingredients = {
                            { "automation-science-pack", 2 },
                            { "logistic-science-pack",   2 },
                            { "chemical-science-pack",   2 },
                            { "production-science-pack", 2 },
                            { "utility-science-pack",    1.5 }
                        },
                },
            },
        },
    },

    modded = {
        -- bob's mods
        bob = {
            recipe = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "steel-gear-wheel", amount = 100 },
                            { type = "item", name = "steel-bearing",    amount = 100 },
                            { type = "item", name = "bronze-alloy",     amount = 250 },
                            { type = "item", name = "bronze-pipe",      amount = 50 },
                            { type = "item", name = "speed-processor",  amount = 50 },
                        },
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "titanium-plate",          amount = 200 },
                            { type = "item", name = "titanium-bearing",        amount = 100 },
                            { type = "item", name = "cobalt-steel-gear-wheel", amount = 100 },
                            { type = "item", name = "brass-pipe",              amount = 100 },
                            { type = "item", name = "speed-processor-2",       amount = 50 },
                        },
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "copper-tungsten-alloy", amount = 500 },
                            { type = "item", name = "ceramic-bearing",       amount = 150 },
                            { type = "item", name = "tungsten-gear-wheel",   amount = 100 },
                            { type = "item", name = "titanium-pipe",         amount = 100 },
                            { type = "item", name = "tungsten-carbide",      amount = 50 },
                            { type = "item", name = "speed-processor-3",     amount = 50 },
                            { type = "item", name = "grinding-wheel",        amount = 100 },
                        },
                },
            },
            technology = {
                minertier1 = {

                },
                minertier2 = {

                },
                minertier3 = {

                },
            },
        },

        -- pynamods
        py = {
            recipe = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "niobium-plate", amount = 25 },
                            { type = "item", name = "chromium",      amount = 200 },
                        },
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "niobium-plate",    amount = 75 },
                            { type = "item", name = "chromium",         amount = 300 },
                            { type = "item", name = "advanced-circuit", amount = 20 },
                        },
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "speed-module-2",     amount = 5 },
                            { type = "item", name = "flying-robot-frame", amount = 100 },
                            --{type="fluid", name="grease",               amount=150  }
                        },
                },
            },
            technology = {
                minertier1 = {

                },
                minertier2 = {

                },
                minertier3 = {

                },
            },
        },

        -- krastorio 2 mod
        kr2 = {
            recipe = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                    ingredients = {
                        { type = "item", name = "electric-motor",   amount = 200 },
                        { type = "item", name = "kr-steel-pipe",    amount = 100 },
                        { type = "item", name = "steel-gear-wheel", amount = 200 },
                    },
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "kr-steel-pipe",    amount = 200 },
                            { type = "item", name = "rare-metals",      amount = 100 },
                            { type = "item", name = "steel-gear-wheel", amount = 200 },
                        },
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "kr-steel-pipe",  amount = 200 },
                            { type = "item", name = "imersium-beam",  amount = 250 },
                            { type = "item", name = "imersium-plate", amount = 250 },
                        },
                },
            },
            technology = {
                minertier1 = {
                },
                minertier2 = {
                },
                minertier3 = {
                },
            },
        },

        -- space exploration
        se = {
            recipe = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "se-vulcanite-block", amount = 100 },
                        },
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "se-cryonite-rod",    amount = 150 },
                            { type = "item", name = "se-beryllium-ingot", amount = 150 },
                            { type = "item", name = "se-iridium-ingot",   amount = 150 },
                        },
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            --{type="item", name="se-naquium-plate",      amount=150 },
                            { type = "item", name = "se-beryllium-plate", amount = 250 },
                            { type = "item", name = "se-iridium-plate",   amount = 250 },
                            { type = "item", name = "se-cryonite-rod",    amount = 300 },
                        },
                },
            },
            technology = {
                minertier1 = {
                    prerequisites = { "engine", "speed-module", "mining-productivity-4" },
                        time = 60,
                        count = 2000,
                        ingredients = {
                            { "automation-science-pack", 1 },
                            { "logistic-science-pack",   1 },
                            { "chemical-science-pack",   1 },
                        },
                },
                minertier2 = {
                    prerequisites = { "crust_extractor", "speed-module-2", "electric-engine",
                            "production-science-pack", "utility-science-pack", "space-science-pack" },
                        time = 60,
                        count = 4000,
                        ingredients = {
                            { "automation-science-pack", 2 },
                            { "logistic-science-pack",   2 },
                            { "chemical-science-pack",   2 },
                            { "production-science-pack", 1 },
                            { "utility-science-pack",    1 },
                            { "space-science-pack",      1 },
                        },
                },
                minertier3 = {
                    prerequisites = { "moho_extractor", "speed-module-3", "robotics", "se-energy-science-pack-1",
                            "se-material-science-pack-1", "se-deep-space-science-pack-1" },
                        time = 180,
                        count = 6000,
                        ingredients = {
                            { "automation-science-pack",      3 },
                            { "logistic-science-pack",        3 },
                            { "chemical-science-pack",        3 },
                            { "production-science-pack",      2 },
                            { "utility-science-pack",         2 },
                            { "space-science-pack",           2 },
                            { "se-energy-science-pack-1",     1 },
                            { "se-material-science-pack-1",   1 },
                            { "se-deep-space-science-pack-1", 1 },
                        },
                },
            },
        },

        --Industrial revolution
        ir2 = {
            recipe = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {},
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 100,
                        ingredients = {
                            { type = "item", name = "chrome-drill",      amount = 2 },
                            { type = "item", name = "steel-plate-heavy", amount = 250 },
                        },
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 110,
                        ingredients = {
                            { type = "item", name = "chrome-drill",        amount = 5 },
                            { type = "item", name = "invar-plate-special", amount = 250 },
                            { type = "item", name = "diamond-gem",         amount = 100 },
                        },
                },
            },
            technology = {
                minertier1 = {
                    prerequisites = { "engine", "speed-module", "mining-productivity-4" },
                        time = 60,
                        count = 2000,
                        ingredients = {},
                },
                minertier2 = {
                    prerequisites = { "crust_extractor", "speed-module-2", "electric-engine",
                            "production-science-pack", "utility-science-pack", "space-science-pack" },
                        time = 60,
                        count = 4000,
                        ingredients = {},
                },
                minertier3 = {
                    prerequisites = { "moho_extractor", "speed-module-3", "robotics", "se-energy-science-pack-1",
                            "se-material-science-pack-1", "se-deep-space-science-pack-1" },
                        time = 180,
                        count = 6000,
                        ingredients = {},
                },
            },
        },

        --Exotic Industries
        ei = {
            recipe = {
                minertier1 = {
                    category = "crafting-with-fluid",
                    energy_required = 90,
                        ingredients = {
                            { type = "item", name = "electric-mining-drill",     amount = 20 },
                            { type = "item", name = "ei_steel-mechanical-parts", amount = 60 },
                            { type = "item", name = "steel-plate",               amount = 100 },
                            { type = "item", name = "pipe",                      amount = 20 },
                        },
                },
                minertier2 = {
                    category = "crafting-with-fluid",
                    energy_required = 100,
                        ingredients = {
                            { type = "item", name = "crust_extractor",           amount = 1 },
                            { type = "item", name = "ei_steel-mechanical-parts", amount = 60 },
                            { type = "item", name = "steel-plate",               amount = 100 },
                            { type = "item", name = "advanced-circuit",          amount = 40 },
                        },
                },
                minertier3 = {
                    category = "crafting-with-fluid",
                    energy_required = 110,
                        ingredients = {
                            { type = "item", name = "moho_extractor",            amount = 1 },
                            { type = "item", name = "ei_steel-mechanical-parts", amount = 60 },
                            { type = "item", name = "steel-plate",               amount = 100 },
                            { type = "item", name = "processing-unit",           amount = 40 },
                        },
                },
            },
            technology = {
                minertier1 = {
                    prerequisites = {},
                        time = 60,
                        count = 2000,
                        ingredients = {},
                },
                minertier2 = {
                    prerequisites = { "crust_extractor" },
                        time = 60,
                        count = 4000,
                        ingredients = {},
                },
                minertier3 = {
                    prerequisites = { "moho_extractor" },
                        time = 180,
                        count = 6000,
                        ingredients = {},
                },
            },
        },
    },
}

return ta_data_table
