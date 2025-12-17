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
            {
                type = "unlock-recipe",
                recipe = "crystarion-accumulator"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crusher"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-empowerer"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-energiser"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-lure"
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
                recipe = "crystarion-crystal-ammo"
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
                recipe = "crystarion-science-volatile"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-science-unstable"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-science-stable"
            },
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
                recipe = "crystarion-ice-melting"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-revitalise-coal"
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
                recipe = "crystarion-crystal-empower-1"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crystal-empower-2"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-crystal-empower-3"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-condensation-rod-medium"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-condensation-rod-big"
            },
            {
                type = "unlock-recipe",
                recipe = "crystarion-condensation-rod-huge"
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
    },
    --{
    --    type = "technology",
    --    name = "automation-science-pack",
    --    icon = "__base__/graphics/technology/automation-science-pack.png",
    --    icon_size = 256,
    --    essential = true,
    --    effects = {
    --        {
    --            type = "unlock-recipe",
    --            recipe = "automation-science-pack"
    --        }
    --    },
    --    prerequisites = { "steam-power", "electronics" },
    --    research_trigger = {
    --        type = "craft-item",
    --        item = "lab"
    --    }
    --},
    --{
    --    type = "technology",
    --    name = "electric-mining-drill",
    --    icon = "__base__/graphics/technology/electric-mining-drill.png",
    --    icon_size = 256,
    --    effects = {
    --        {
    --            type = "unlock-recipe",
    --            recipe = "electric-mining-drill"
    --        }
    --    },
    --    prerequisites = { "automation-science-pack" },
    --    unit = {
    --        count = 25,
    --        ingredients = { { "automation-science-pack", 1 } },
    --        time = 10
    --    }
    --},
})
