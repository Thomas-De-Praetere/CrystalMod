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
            cliffiness = "cliffiness_basic",
            cliff_elevation = "crystarion_cliff",
        },
        cliff_settings = {
            name = "cliff-crystarion",
            control = "crystarion_cliff",
            cliff_smoothing = 0,
            cliff_elevation_0 = 15,
            cliff_elevation_interval = 70,
        },
        autoplace_controls = {
            ["crystarion-rocks"] = {},
            ["crystarion_cliff"] = {}
        },
        autoplace_settings = {
            ["tile"] = {
                settings = {
                    ["crystarion-ice-rough"] = {},
                    ["crystarion-ice-smooth"] = {},
                    ["crystarion-snow-flat"] = {},
                    ["crystarion-snow-crests"] = {},
                    ["crystarion-snow-lumpy"] = {},
                    ["crystarion-snow-patchy"] = {},
                    ["crystarion-volcanic-pumice-stones"] = {},
                    ["crystarion-volcanic-ash-cracks"] = {},
                    ["crystarion-volcanic-folds"] = {},
                    ["crystarion-volcanic-cracks-hot"] = {},
                }
            },
            ["decorative"] = {
                settings = {
                    --Rocks
                    ["crystarion-small-volcanic-rock"] = {},
                    ["crystarion-medium-volcanic-rock"] = {},
                    ["crystarion-tiny-volcanic-rock"] = {},
                    ["crystarion-lithium-iceberg-medium"] = {},
                    ["crystarion-lithium-iceberg-small"] = {},
                    ["crystarion-lithium-iceberg-tiny"] = {},

                    --Grass patches on ice
                    ["crystarion-green-hairy-grass"] = {},
                    ["crystarion-dark-mud-decal"] = {},
                    ["crystarion-cracked-mud-decal"] = {},
                    ["crystarion-white-carpet-grass"] = {},
                    ["crystarion-white-desert-bush"] = {},
                    ["crystarion-green-carpet-grass"] = {},

                    --Random stuff on snow
                    ["crystarion-aqulio-ice-decal-blue"] = {},
                    ["crystarion-aqulio-snowy-decal"] = {},
                    ["crystarion-snow-drift-decal"] = {},

                    --Volcan stuff
                    ["crystarion-pumice-relief-decal"] = {},
                    ["crystarion-vulcanus-dune-decal"] = {},
                    ["crystarion-vulcanus-sand-decal"] = {},
                    ["crystarion-crater-small"] = {},
                    ["crystarion-crater-large"] = {},
                    ["crystarion-tiny-rock-cluster"] = {},
                    ["crystarion-vulcanus-rock-decal-large"] = {},
                    ["crystarion-waves-decal"] = {},

                    --flanks stuff
                    ["crystarion-veins"] = {},
                    ["crystarion-split-gill-dying-1x1"] = {},
                    ["crystarion-split-gill-dying-2x2"] = {},
                    ["crystarion-brown-hairy-grass"] = {},
                    ["crystarion-brown-carpet-grass"] = {},
                    ["crystarion-brown-asterisk-mini"] = {},
                    ["crystarion-brown-asterisk"] = {},
                }
            },
            ["entity"] = {
                settings = {
                    ["crystarion-rock-huge"] = {},
                    ["crystarion-rock-big"] = {},
                    ["crystarion-rock-ice-huge"] = {},
                    ["crystarion-rock-ice-big"] = {},
                }
            }
        }
    }
end

return planet_map_gen
