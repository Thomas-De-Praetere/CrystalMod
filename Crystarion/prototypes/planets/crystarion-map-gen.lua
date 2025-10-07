local planet_map_gen = require("__base__/prototypes/planet/planet-map-gen")
require("__Crystarion__/prototypes/planets/crystarion-map-gen-functions")

planet_map_gen.crystarion = function()
    return
    {
        aux_climate_control = true,
        moisture_climate_control = true,
        property_expression_names = {
            elevation = "crystarion_height",
            aux = "crystarion_height",
            moisture = "crystarion_moist",
            temperature = "crystarion_temp",
        },
        cliff_settings = {
            --name = "cliff",
            --control = "nauvis_cliff",
            --cliff_smoothing = 0
        },
        autoplace_controls = {
            --["trees"] = {},
            --["enemy-base"] = {},
            ["crystarion-rocks"] = {},
            --["starting_area_moisture"] = {},
            --["nauvis_cliff"] = {}
        },
        autoplace_settings = {
            ["tile"] = {
                settings = {
                    ---- nauvis tiles
                    --["grass-1"] = {},
                    --["grass-2"] = {},
                    --["grass-3"] = {},
                    --["grass-4"] = {},
                    --["dry-dirt"] = {},
                    --["dirt-1"] = {},
                    --["dirt-2"] = {},
                    --["dirt-3"] = {},
                    --["dirt-4"] = {},
                    --["dirt-5"] = {},
                    --["dirt-6"] = {},
                    --["dirt-7"] = {},
                    --["sand-1"] = {},
                    --["sand-2"] = {},
                    --["sand-3"] = {},
                    --["red-desert-0"] = {},
                    --["red-desert-1"] = {},
                    --["red-desert-2"] = {},
                    --["red-desert-3"] = {},
                    --["volcanic-soil-dark"] = {},
                    --["volcanic-soil-light"] = {},
                    --["volcanic-ash-soil"] = {},
                    --
                    ---- Vulcanus tiles
                    --["volcanic-ash-flats"] = {},
                    --["volcanic-ash-light"] = {},
                    --["volcanic-ash-dark"] = {},
                    --["volcanic-cracks"] = {},
                    --["volcanic-cracks-warm"] = {},
                    --["volcanic-folds"] = {},
                    --["volcanic-folds-flat"] = {},
                    --["lava"] = {},
                    --["lava-hot"] = {},
                    --["volcanic-folds-warm"] = {},
                    --["volcanic-pumice-stones"] = {},
                    --["volcanic-cracks-hot"] = {},
                    --["volcanic-jagged-ground"] = {},
                    --["volcanic-smooth-stone"] = {},
                    --["volcanic-smooth-stone-warm"] = {},
                    --["volcanic-ash-cracks"] = {},
                    --
                    ---- Aquilo tiles
                    --["snow-flat"] = {},
                    --["snow-crests"] = {},
                    --["snow-lumpy"] = {},
                    --["snow-patchy"] = {},
                    --["ice-rough"] = {},
                    --["ice-smooth"] = {},
                    ["crystarion-dirt"] = {},
                    ["crystarion-snow-flat"] = {},
                    ["crystarion-snow-crests"] = {},
                    ["crystarion-snow-lumpy"] = {},
                    ["crystarion-snow-patchy"] = {},
                    ["crystarion-ice-rough"] = {},
                    ["crystarion-ice-smooth"] = {},
                }
            },
            ["decorative"] = {
                settings = {
                    --["brown-hairy-grass"] = {},
                    --["green-hairy-grass"] = {},
                    --["brown-carpet-grass"] = {},
                    --["green-carpet-grass"] = {},
                    --["green-small-grass"] = {},
                    --["green-asterisk"] = {},
                    --["brown-asterisk-mini"] = {},
                    --["green-asterisk-mini"] = {},
                    --["brown-asterisk"] = {},
                    --["red-asterisk"] = {},
                    --["dark-mud-decal"] = {},
                    --["light-mud-decal"] = {},
                    --["cracked-mud-decal"] = {},
                    --["red-desert-decal"] = {},
                    --["sand-decal"] = {},
                    --["sand-dune-decal"] = {},
                    --["green-pita"] = {},
                    --["red-pita"] = {},
                    --["green-croton"] = {},
                    --["red-croton"] = {},
                    --["green-pita-mini"] = {},
                    --["brown-fluff"] = {},
                    --["brown-fluff-dry"] = {},
                    --["green-desert-bush"] = {},
                    --["red-desert-bush"] = {},
                    --["white-desert-bush"] = {},
                    --["garballo-mini-dry"] = {},
                    --["garballo"] = {},
                    --["green-bush-mini"] = {},
                    --["medium-rock"] = {},
                    --["small-rock"] = {},
                    --["tiny-rock"] = {},
                    --["medium-sand-rock"] = {},
                    --["small-sand-rock"] = {}
                }
            },
            ["entity"] = {
                settings = {
                    ["crystarion-rock"] = {},
                    ["crystarion-rock-ice"] = {},
                }
            }
        }
    }
end

return planet_map_gen
