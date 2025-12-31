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
        name = "crystarion-unlock-ice",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = true,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crystarion-condensation-rod-medium"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-collector"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-furnace"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-ice-melting"
            },
        },
        prerequisites = { "planet-discovery-crystarion" },
        research_trigger = {
            type = "mine-entity",
            entity = "crystarion-rock-ice-big"
        }
    },
    {
        type = "technology",
        name = "crystarion-unlock-rod-big",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = false,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crystarion-condensation-rod-big"
            },
        },
        prerequisites = { "crystarion-unlock-ice", "crystarion-unlock-science-volatile" },
        unit = {
            count = 100,
            ingredients = {
                { "automation-science-pack", 1 },
                { "crystarion-science-volatile", 1 },
            },
            time = 30
        },
    },
    {
        type = "technology",
        name = "crystarion-unlock-rod-huge",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = false,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crystarion-condensation-rod-huge"
            },
        },
        prerequisites = { "crystarion-unlock-rod-big", "crystarion-unlock-science-unstable" },
        unit = {
            count = 200,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "crystarion-science-unstable", 1 },
            },
            time = 30
        },
    },
    {
        type = "technology",
        name = "crystarion-unlock-resource",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = true,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crystarion-revitalise-coal"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crush-crystal-red"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crush-crystal-green"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crush-crystal-blue"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-neutralize-red"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-neutralize-green"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-neutralize-blue"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-neutralize-crystal"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-split-green"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-split-magenta"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-split-red"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-split-cyan"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-split-blue"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-split-yellow"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-destabilize-crystal"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-destabilize-crystal-red"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-destabilize-crystal-green"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-destabilize-crystal-blue"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-energiser"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-sludge-from-crushed-crystal"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crystalise"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-battery"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-chemical-plant"
            },
        },
        prerequisites = { "planet-discovery-crystarion" },
        research_trigger = {
            type = "mine-entity",
            entity = "crystarion-rock-big"
        }
    },
    {
        type = "technology",
        name = "crystarion-unlock-biter",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = true,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crystarion-crush-crystal-ore"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crystal-ore-splinter"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crusher"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-lure"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crystal-ammo"
            },
        },
        prerequisites = { "planet-discovery-crystarion" },
        research_trigger = {
            type = "mine-entity",
            entity = "crystarion-resource-small"
        }
    },
    {
        type = "technology",
        name = "crystarion-unlock-science-volatile",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = true,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crystarion-crystal-empower-1"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-science-volatile"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-accumulator"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-empowerer"
            },
        },
        prerequisites = { "crystarion-unlock-resource" },
        research_trigger = {
            type = "craft-item",
            item = "crystarion-crystal",
            count = 50,
        }
    },
    {
        type = "technology",
        name = "crystarion-unlock-science-unstable",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = true,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crystarion-crystal-empower-2"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-science-unstable"
            },
        },
        prerequisites = { "crystarion-unlock-science-volatile" },
        unit = {
            count = 200,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "crystarion-science-volatile", 1 },
            },
            time = 30
        },
    },
    {
        type = "technology",
        name = "crystarion-unlock-science-stable",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = true,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crystarion-crystal-empower-3"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-science-stable"
            },
        },
        prerequisites = { "crystarion-unlock-science-unstable" },
        unit = {
            count = 200,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "crystarion-science-volatile", 1 },
                { "crystarion-science-unstable", 1 },
            },
            time = 30
        },
    },
    {
        type = "technology",
        name = "crystarion-chemistry",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = true,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "crystarion-slurry-from-red-crystal"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-slurry-from-green-crystal"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-slurry-from-blue-crystal"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-mix-yellow"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-mix-purple"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-denaturize-yellow"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-denaturize-purple"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-denaturize-red"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-denaturize-green"
            },
        },
        prerequisites = { "crystarion-unlock-science-unstable", "crystarion-unlock-science-volatile" },
        unit = {
            count = 200,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "crystarion-science-volatile", 1 },
                { "crystarion-science-unstable", 1 },
            },
            time = 30
        },
    },
})
