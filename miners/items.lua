data:extend({
    -- crust
    {
		type = "item",
		name = "crust_extractor",
		icon = "__TA-Miners-Reloaded__/graphics/crust/crusticon.png",
		icon_size= 32,
        group = "logistics",
		subgroup = "energy",
		order = "b[miner]-a[crust_extractor]",
		place_result = "crust_extractor",
		stack_size = 1
	},
    -- moho
    {
        type = "item",
        name = "moho_extractor",
        icon = "__TA-Miners-Reloaded__/graphics/moho/mohoicon.png",
        icon_size= 32,
        group = "logistics",
        subgroup = "energy",
        order = "b[miner]-b[moho_extractor]",
        place_result = "moho_extractor",
        stack_size = 1
    },
    -- mantle
    {
		type = "item",
		name = "mantle_extractor",
		icon = "__TA-Miners-Reloaded__/graphics/mantle/mantleicon.png",
		icon_size = 32,
        group = "logistics",
		subgroup = "energy",
		order = "b[miner]-c[mantle_extractor]",
		place_result = "mantle_extractor",
		stack_size = 1
	},
})