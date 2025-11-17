-- Planet Discovery Janus
data:extend({
    {
        type = "technology",
        name = "planet-discovery-crystarion",
        icon_size = 256,
        icons = {
            {
                icon = "__Crystarion__/graphics/planet/planet.png",
                icon_size = 256
            },
            {
                icon = "__core__/graphics/icons/technology/constants/constant-planet.png",
                icon_size = 128,
                scale = 0.5,
                shift = {
                    50,
                    50
                }
            }
        },
        effects = {
            {
                space_location = "crystarion-planet",
                type = "unlock-space-location",
                use_icon_overlay_constant = true
            },
        },
        unit = {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "space-science-pack", 1 },
            },
            time = 60
        },
        prerequisites = { "space-platform-thruster" },
        essential = true
    },
    {
        type = "technology",
        name = "automation-science-pack",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = true,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "automation-science-pack"
            }
        },
        prerequisites = { "steam-power", "electronics" },
        research_trigger = {
            type = "craft-item",
            item = "lab"
        }
    },
    {
        type = "technology",
        name = "electric-mining-drill",
        icon = "__base__/graphics/technology/electric-mining-drill.png",
        icon_size = 256,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "electric-mining-drill"
            }
        },
        prerequisites = { "automation-science-pack" },
        unit = {
            count = 25,
            ingredients = { { "automation-science-pack", 1 } },
            time = 10
        }
    },
})
