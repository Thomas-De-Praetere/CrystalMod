
-- Planet Discovery Janus
local tech = {
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
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "space-science-pack",      1 },
        },
        time = 60
    },
    prerequisites = { "space-platform-thruster" },
    essential = true
}

data:extend({ tech })
