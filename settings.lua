data:extend({
    {
        type = "string-setting",
        name = "ta-vanilla-recipes",
        order = "aaa",
        setting_type = "startup",
        default_value = "normal",
        allowed_values =
        {
            "easy",
            "normal",
            "hard",
            "disabled"
        },
    },
    {
        type = "string-setting",
        name = "ta-maxium-tier",
        order = "aab",
        setting_type = "startup",
        default_value = "mantle",
        allowed_values =
        {
            "crust",
            "moho",
            "mantle"
        },
    },
    {
        type = "bool-setting",
        name = "ta-only-miner-module",
        hidden = true,
        order = "aab",
        setting_type = "startup",
        default_value = true,
    },
    {
        type = "bool-setting",
        name = "ta-only-modded-recipe",
        hidden = true,
        order = "aac",
        setting_type = "startup",
        default_value = true,
    },
    {
        type = "bool-setting",
        name = "ta-modded-bob",
        hidden = true,
        order = "aba",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "bool-setting",
        name = "ta-modded-py",
        hidden = true,
        order = "abb",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "bool-setting",
        name = "ta-modded-kr2",
        hidden = true,
        order = "abc",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "bool-setting",
        name = "ta-modded-se",
        hidden = true,
        order = "abd",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "bool-setting",
        name = "ta-modded-ir2",
        hidden = true,
        order = "abd",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "bool-setting",
        name = "ta-modded-ei",
        hidden = true,
        order = "abd",
        setting_type = "startup",
        default_value = false,
    },
})
