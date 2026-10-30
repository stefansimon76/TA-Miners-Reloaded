data:extend({
    -- crust
    {
        type = "mining-drill",
        name = "crust_extractor",
        icon = "__WipMod_TA-miners__/graphics/crust/crusticon.png",
        icon_size=32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 3, result = "crust_extractor"},
        max_health = 2500,
        resource_categories = {"basic-solid"},
        corpse = "big-remnants",
        mining_speed = 45,
        resource_drain_rate_percent = 80,
        energy_source = {
            type = "electric",
            -- will produce this much * energy pollution units per tick
            --emissions = 0.15 / 1.5,
            emissions_per_minute = {
                pollution = 45*9
            },
            usage_priority = "secondary-input"
        },
        energy_usage = "8.001MW",
        resource_searching_radius = 12.48,
        vector_to_place_result = {0, -5.9},
        module_slots = 3,
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 12,
            height = 12
        },
        monitor_visualization_tint = {r=78, g=173, b=255},
        fast_replaceable_group = "mining-drill",
        circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
        circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        collision_box = {{ -5.4, -5.4}, {5.4, 5.4}},
        selection_box = {{ -5, -5}, {5, 5}},
        input_fluid_box = {
            production_type = "input-output",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            volume = 200,
            pipe_connections = {
                { direction = defines.direction.west, position = {-5, 0}},
                { direction = defines.direction.east, position = {5, 0}},
                { direction = defines.direction.south, position = {0, 5}}
            }
        },
        working_sound = {
          sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 1.0, advanced_volume_control = {attenuation = "exponential"}},
          max_sounds_per_type = 4,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        priority = "high",
                        width = 400,
                        height = 400,
                        frame_count = 15,
                        animation_speed = 0.75,
                        direction_count = 1,
                        shift = { 0.35 , -0.40 },
                        stripes = {
                            {
                                filename = "__WipMod_TA-miners__/graphics/crust/crust1.png",
                                width_in_frames = 5,
                                height_in_frames = 3,
                            }
                        }
                    },
                    {
                        priority = "high",
                        width = 400,
                        height = 400,
                        frame_count = 15,
                        animation_speed = 0.75,
                        direction_count = 1,
                        shift = { 0.35 , -0.40 },
                        stripes = util.multiplystripes(15,{
                            {
                                filename = "__WipMod_TA-miners__/graphics/crust/crustcima.png",
                                width_in_frames = 1,
                                height_in_frames = 1,
                            },
                        }),
                    }
                }
            },
        },
    },
    -- moho
    {
        type = "mining-drill",
        name = "moho_extractor",
        icon = "__WipMod_TA-miners__/graphics/moho/mohoicon.png",
        icon_size=32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 5, result = "moho_extractor"},
        max_health = 5000,
        resource_categories = {"basic-solid"},
        corpse = "big-remnants",
        mining_speed = 90,
        resource_drain_rate_percent = 60,
        energy_source = {
            type = "electric",
            --will produce this much * energy pollution units per tick
            --emissions = 0.15 / 1.5,
            emissions_per_minute = { pollution = 90*9 },
            usage_priority = "secondary-input"
        },
        energy_usage = "16.001MW",
        resource_searching_radius = 17.48,
        vector_to_place_result = {0, -7},
        module_slots = 6,
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 12,
            height = 12
        },
        monitor_visualization_tint = {r=78, g=173, b=255},
        fast_replaceable_group = "mining-drill",
        circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
        circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        collision_box = {{ -6.4, -6.4}, {6.4, 6.4}},
        selection_box = {{ -6, -6}, {6, 6}},
        input_fluid_box = {
            production_type = "input-output",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            volume = 200,
            pipe_connections = {
                { direction = defines.direction.west, position = {-6, 0}},
                { direction = defines.direction.east, position = {6, 0}},
                { direction = defines.direction.south, position = {0, 6}}
            }
        },
        working_sound = {
          sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 1.0, advanced_volume_control = {attenuation = "exponential"}},
          max_sounds_per_type = 4,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        priority = "high",
                        width = 500,
                        height = 500,
                        frame_count = 24,
                        animation_speed = 0.5, 
                        direction_count = 1,
                        shift = { 1.2 , -0.13 },
                        scale = 1.02,
                        stripes = util.multiplystripes(24, {
                            {
                                filename = "__WipMod_TA-miners__/graphics/moho/mohocima.png",
                                width_in_frames = 1,
                                height_in_frames = 1,
                            },
                        }),
                    },
                    {
                        priority = "high",
                        width = 500,
                        height = 500,
                        frame_count = 24,
                        animation_speed = 0.5,
                        direction_count = 1,
                        shift = { 1.2 , -0.13 },
                        stripes = {
                            {
                                filename = "__WipMod_TA-miners__/graphics/moho/moho1.png",
                                width_in_frames = 4,
                                height_in_frames = 4,
                            },
                            {
                                filename = "__WipMod_TA-miners__/graphics/moho/moho2.png",
                                width_in_frames = 4,
                                height_in_frames = 4,
                            }
                        }
                    }
                }
            },
        },
    },
    -- mantle
    {
        type = "mining-drill",
        name = "mantle_extractor",
        icon = "__WipMod_TA-miners__/graphics/mantle/mantleicon.png",
        icon_size=32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 8, result = "mantle_extractor"},
        max_health = 7500,
        resource_categories = {"basic-solid"},
        corpse = "big-remnants",
        mining_speed = 180,
        resource_drain_rate_percent = 40,
        energy_source = {
            type = "electric",
            -- will produce this much * energy pollution units per tick
            --emissions = 0.15 / 1.5,
            emissions_per_minute = { pollution = 180*9 },
            usage_priority = "secondary-input"
        },
        energy_usage = "32.001MW",
        resource_searching_radius = 24.98,
        vector_to_place_result = {0, -9},
        module_slots = 9,
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 12,
            height = 12
        },
        monitor_visualization_tint = {r=78, g=173, b=255},
        fast_replaceable_group = "mining-drill",
        circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
        circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        collision_box = {{ -8.4, -8.4}, {8.4, 8.4}},
        selection_box = {{ -8, -8}, {8, 8}},
        input_fluid_box = {
            production_type = "input-output",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            volume = 200,
            pipe_connections = {
                { direction = defines.direction.west, position = {-8, 0}},
                { direction = defines.direction.east, position = {8, 0}},
                { direction = defines.direction.south, position = {0, 8}}
            }
        },
        working_sound = {
          sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 1.0, advanced_volume_control = {attenuation = "exponential"}},
          max_sounds_per_type = 4,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        priority = "high",
                        width = 650,
                        height = 650,
                        frame_count = 72,
                        animation_speed = 0.5, 
                        direction_count = 1,
                        shift = { 0.5 , 0.05  },
                        stripes = util.multiplystripes(72,{
                            {
                                filename = "__WipMod_TA-miners__/graphics/mantle/mantlecima.png",
                                width_in_frames = 1,
                                height_in_frames = 1,
                            },
                        }),
                    },
                    {
                        priority = "high",
                        width = 650,
                        height = 650,
                        frame_count = 72,
                        animation_speed = 0.5,
                        direction_count = 1,
                        shift = { 0.4 , 1.2 },
                        stripes = {
                            {
                                filename = "__WipMod_TA-miners__/graphics/mantle/mantle1.png",
                                width_in_frames = 3,
                                height_in_frames = 3,
                            },
                            {
                                filename = "__WipMod_TA-miners__/graphics/mantle/mantle2.png",
                                width_in_frames = 3,
                                height_in_frames = 3,
                            },
                            {
                                filename = "__WipMod_TA-miners__/graphics/mantle/mantle3.png",
                                width_in_frames = 3,
                                height_in_frames = 3,
                            },
                            {
                                filename = "__WipMod_TA-miners__/graphics/mantle/mantle4.png",
                                width_in_frames = 3,
                                height_in_frames = 3,
                            },
                            {
                                filename = "__WipMod_TA-miners__/graphics/mantle/mantle5.png",
                                width_in_frames = 3,
                                height_in_frames = 3,
                            },
                            {
                                filename = "__WipMod_TA-miners__/graphics/mantle/mantle6.png",
                                width_in_frames = 3,
                                height_in_frames = 3,
                            },
                            {
                                filename = "__WipMod_TA-miners__/graphics/mantle/mantle7.png",
                                width_in_frames = 3,
                                height_in_frames = 3,
                            },
                            {
                                filename = "__WipMod_TA-miners__/graphics/mantle/mantle8.png",
                                width_in_frames = 3,
                                height_in_frames = 3,
                            }
                        }
                    }
                }
            },
        },
    },
})