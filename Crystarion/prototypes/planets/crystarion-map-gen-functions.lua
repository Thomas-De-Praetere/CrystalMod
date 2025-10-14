data:extend({
    --Constants
    {
        type = "noise-expression",
        name = "crystarion_snow",
        expression = "33"
    },
    {
        type = "noise-expression",
        name = "crystarion_rich_snow",
        expression = "66"
    },
    {
        type = "noise-expression",
        name = "crystarion_volc_start",
        expression = "20"
    },
    {
        type = "noise-expression",
        name = "crystarion_slope",
        expression = "60"
    },
    {
        type = "noise-expression",
        name = "crystarion_ridge",
        expression = "80"
    },
    {
        type = "noise-expression",
        name = "crystarion_crater",
        expression = "90"
    },
    --Helper
    {
        --Scales a function from [-1;1] to [0,100]
        type = "noise-function",
        parameters = { "to_scale" },
        name = "crystarion_scale",
        expression = "to_scale * 50 + 50"
    },
    {
        --Scales a function from [-1;1] to [0,100]
        type = "noise-function",
        parameters = { "to_scale", "max_vals" },
        name = "crystarion_scale_max",
        expression = "to_scale * max_vals/2 + max_vals/2"
    },
    {
        --Scales a function from [-1;1] to [0,100]
        type = "noise-function",
        parameters = { "c_val", "c_seed", "c_reduction" },
        name = "crystarion_penalty",
        expression = "random_penalty{x = x, y = y, source = c_val, seed = c_seed} - c_reduction"
    },
    --Height
    {
        type = "noise-expression",
        name = "crystarion_height_wobble",
        expression =
        "multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 3, input_scale = 1/5} * 2"
    },
    {
        type = "noise-expression",
        name = "crystarion_height_wobble_large",
        expression =
        "crystarion_scale(multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 1, octaves = 8, input_scale = 1/20})"
    },
    {
        type = "noise-expression",
        name = "crystarion_volcans",
        expression = "clamp(spot_noise{\z
                             x = x,\z
                             y = y,\z
                             seed0 = map_seed,\z
                             seed1 = 2,\z
                             candidate_spot_count = 10,\z
                             suggested_minimum_candidate_point_spacing = 128,\z
                             skip_span = 3,\z
                             skip_offset = 0,\z
                             region_size = 2048,\z
                             density_expression = 128,\z
                             spot_quantity_expression = 1715000,\z
                             spot_radius_expression = 128,\z
                             hard_region_target_quantity = 1,\z
                             spot_favorability_expression = crystarion_height_wobble_large,\z
                             basement_value = -1,\z
                             maximum_spot_basement_radius = 128 * 2\z
                             },0,100)"
    },
    {
        type = "noise-expression",
        name = "crystarion_volcans_height_wobble",
        expression =
        "multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 2, octaves = 6, input_scale = 1/10}"
    },
    {
        type = "noise-expression",
        name = "crystarion_volcans_height",
        expression =
        "(crystarion_volcans/2.0 + (crystarion_scale_max(crystarion_volcans_height_wobble,75))*crystarion_volcans/100)"
    },
    {
        type = "noise-expression",
        name = "crystarion_height",
        expression = "clamp(crystarion_height_wobble_large + crystarion_height_wobble,0,100)"
    },
    --Moisture
    {
        type = "noise-expression",
        name = "crystarion_moist_wobble_large",
        expression =
        "crystarion_scale(multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 3, octaves = 8, input_scale = 1/50})"
    },
    {
        type = "noise-expression",
        name = "crystarion_moist",
        expression = "crystarion_moist_wobble_large"
    },
    --Temperature
    {
        type = "noise-expression",
        name = "crystarion_temp_wobble",
        expression =
        "multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 2, octaves = 8, input_scale = 1/10}"
    },
    {
        type = "noise-expression",
        name = "crystarion_temp",
        expression = "crystarion_temp_wobble"
    },
    --Indication Functions
    {
        type = "noise-expression",
        name = "crystarion_is_water",
        --expression = "if(crystarion_height < crystarion_moist, 1, 0)"
        expression = "if(crystarion_moist>75, 1-crystarion_is_volcan, 0)"
    },
    {
        type = "noise-expression",
        name = "crystarion_is_ground",
        expression = "(1 - crystarion_is_water)*(1 - crystarion_is_volcan)"
    },
    {
        type = "noise-expression",
        name = "crystarion_is_volcan",
        --expression = "crystarion_volcans > crystarion_height"
        expression = "crystarion_volcans_height > crystarion_height"
    },

    --Tile spawn
    {
        type = "noise-expression",
        name = "crystarion_ice_rough",
        expression = "0",
    },
    {
        type = "noise-expression",
        name = "crystarion_ice_smooth",
        expression = "crystarion_is_water",
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_flat",
        expression = "crystarion_is_ground*if(crystarion_height<crystarion_snow,1,0)",
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_crests",
        expression = "crystarion_is_ground*range_select(crystarion_height,crystarion_snow,crystarion_rich_snow,0.1,-1,1)",
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_lumpy",
        expression = "crystarion_is_ground*if(crystarion_height>crystarion_rich_snow,1,0)",
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_patchy",
        expression = "0",
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_pumice_stones",
        expression = "crystarion_is_volcan*range_select(crystarion_volcans_height,0,crystarion_slope,0.01,0,1)",
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_ash_cracks",
        expression =
        "crystarion_is_volcan*range_select(crystarion_volcans_height,crystarion_slope,crystarion_ridge,0.01,0,1)",
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_folds",
        expression =
        "crystarion_is_volcan*range_select(crystarion_volcans_height,crystarion_ridge,crystarion_crater,0.01,0,1)",
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_cracks_hot",
        expression = "crystarion_is_volcan*if(crystarion_volcans_height>crystarion_crater,1,0)",
    },
    --Rock spawn
    {
        type = "noise-expression",
        name = "crystarion_rock",
        expression = "crystarion_volcanic_folds*0.01",
    },
    {
        type = "noise-expression",
        name = "crystarion_rock_ice",
        expression = "crystarion_ice_smooth*0.01",
    },
    --Decorative spawn
    {
        type = "noise-expression",
        name = "crystarion_decorative_knockout",
        expression =
        "multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = 1300000, octaves = 2, input_scale = 1/8}"
    },
    {
        type = "noise-expression",
        name = "crystarion_decorative_knockout_large",
        expression =
        "multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = 1400000, octaves = 3, input_scale = 1/30}"
    },
    {
        type = "noise-expression",
        name = "crystarion_decorative_floor_knockout",
        expression =
        "multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = 1500000, octaves = 2, input_scale = 1/3}"
    },
    {
        type = "noise-expression",
        name = "crystarion_decorative_floor_knockout_large",
        expression =
        "multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = 1600000, octaves = 2, input_scale = 1/25}"
    },

    --Grass patches on snow
    {
        type = "noise-expression",
        name = "crystarion_green_hairy_grass",
        expression =  "crystarion_penalty(max(crystarion_snow_flat, crystarion_snow_crests, crystarion_snow_lumpy) * crystarion_decorative_knockout_large, 30, 0.3)"
    },
    {
        type = "noise-expression",
        name = "crystarion_dark_mud_decal",
        expression =  "crystarion_penalty(max(crystarion_snow_flat, crystarion_snow_crests, crystarion_snow_lumpy) * crystarion_decorative_knockout_large, 31, 0.7)"
    },
    {
        type = "noise-expression",
        name = "crystarion_cracked_mud_decal",
        expression =  "crystarion_penalty(max(crystarion_snow_flat, crystarion_snow_crests, crystarion_snow_lumpy) * crystarion_decorative_knockout_large, 34, 0.7)"
    },
    {
        type = "noise-expression",
        name = "crystarion_white_carpet_grass",
        expression =  "crystarion_penalty(max(crystarion_snow_flat, crystarion_snow_crests, crystarion_snow_lumpy) * crystarion_decorative_knockout_large, 33, 0.2)"
    },
    {
        type = "noise-expression",
        name = "crystarion_white_desert_bush",
        expression =  "crystarion_penalty(max(crystarion_snow_flat, crystarion_snow_crests, crystarion_snow_lumpy) * crystarion_decorative_knockout_large, 34, 0.4)"
    },
    {
        type = "noise-expression",
        name = "crystarion_green_carpet_grass",
        expression =  "crystarion_penalty(max(crystarion_snow_flat, crystarion_snow_crests, crystarion_snow_lumpy) * crystarion_decorative_knockout_large, 35, 0.5)"
    },
    --Random stuff on snow
    {
        type = "noise-expression",
        name = "crystarion_aqulio_ice_decal_blue",
        expression =
        "crystarion_penalty(max(crystarion_ice_smooth, crystarion_ice_rough) * crystarion_decorative_floor_knockout, 20, 0.5)",
    },
    {
        type = "noise-expression",
        name = "crystarion_aqulio_snowy_decal",
        expression =
        "max(\z
        crystarion_penalty(max(crystarion_snow_flat, crystarion_snow_crests, crystarion_snow_lumpy) * crystarion_decorative_floor_knockout, 21, 0.5),\z
        crystarion_penalty(max(crystarion_ice_smooth, crystarion_ice_rough) * crystarion_decorative_floor_knockout_large, 21, 0.7)\z
        )",
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_drift_decal",
        expression =
        "max(\z
        crystarion_penalty(max(crystarion_snow_flat, crystarion_snow_crests, crystarion_snow_lumpy) * crystarion_decorative_floor_knockout, 22, 0.5),\z
        crystarion_penalty(max(crystarion_ice_smooth, crystarion_ice_rough) * crystarion_decorative_floor_knockout_large, 22, 0.7)\z
        )",
    },
    --Volcan stuff
    {
        type = "noise-expression",
        name = "crystarion_pumice_relief_decal",
        expression =
        "crystarion_penalty(crystarion_volcanic_pumice_stones * crystarion_decorative_floor_knockout_large, 23, 0.9)",
    },
    {
        type = "noise-expression",
        name = "crystarion_vulcanus_dune_decal",
        expression =
        "crystarion_penalty(max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, 10, 0.5)",
    },
    {
        type = "noise-expression",
        name = "crystarion_vulcanus_sand_decal",
        expression =
        "crystarion_penalty(max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, 11, 0.5)",
    },
    {
        type = "noise-expression",
        name = "crystarion_crater_small",
        expression =
        "crystarion_penalty(max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, 12, 0.3)",
    },
    {
        type = "noise-expression",
        name = "crystarion_crater_large",
        expression =
        "crystarion_penalty(max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, 13, 0.2)",
    },
    {
        type = "noise-expression",
        name = "crystarion_tiny_rock_cluster",
        expression =
        "crystarion_penalty(max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, 14, 0.3)",
    },
    {
        type = "noise-expression",
        name = "crystarion_vulcanus_rock_decal_large",
        expression =
        "crystarion_penalty(max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, 15, 0.2)",
    },
    {
        type = "noise-expression",
        name = "crystarion_waves_decal",
        expression =
        "crystarion_penalty(max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, 16, 0.5)",
    },
    --flanks stuff
    {
        type = "noise-expression",
        name = "crystarion_veins",
        expression =
        "crystarion_penalty(crystarion_volcanic_pumice_stones * crystarion_decorative_knockout_large, 1, 0)",
    },
    {
        type = "noise-expression",
        name = "crystarion_split_gill_dying_1x1",
        expression =
        "crystarion_penalty(crystarion_volcanic_pumice_stones * crystarion_decorative_knockout_large, 2, 0.5)",
    },
    {
        type = "noise-expression",
        name = "crystarion_split_gill_dying_2x2",
        expression =
        "crystarion_penalty(crystarion_volcanic_pumice_stones * crystarion_decorative_knockout_large, 3, 0.7)",
    },
    {
        type = "noise-expression",
        name = "crystarion_brown_hairy_grass",
        expression =
        "crystarion_penalty(max(crystarion_volcanic_pumice_stones, crystarion_volcanic_ash_cracks) * crystarion_decorative_knockout, 4, 0.2)",
    },
    {
        type = "noise-expression",
        name = "crystarion_brown_carpet_grass",
        expression =
        "crystarion_penalty(max(crystarion_volcanic_pumice_stones, crystarion_volcanic_ash_cracks) * crystarion_decorative_knockout, 5, 0.2)",
    },
    {
        type = "noise-expression",
        name = "crystarion_brown_asterisk_mini",
        expression =
        "crystarion_penalty(crystarion_volcanic_pumice_stones * crystarion_decorative_knockout, 6, 0.2)",
    },
    {
        type = "noise-expression",
        name = "crystarion_brown_asterisk",
        expression =
        "crystarion_penalty(crystarion_volcanic_pumice_stones * crystarion_decorative_knockout, 7, 0.2)",
    },
})
