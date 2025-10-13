data:extend({
    --Constants
    {
        type = "noise-expression",
        name = "crystarion_snow",
        expression = '33'
    },
    {
        type = "noise-expression",
        name = "crystarion_rich_snow",
        expression = '66'
    },
    {
        type = "noise-expression",
        name = "crystarion_volc_start",
        expression = '20'
    },
    {
        type = "noise-expression",
        name = "crystarion_slope",
        expression = '60'
    },
    {
        type = "noise-expression",
        name = "crystarion_ridge",
        expression = '80'
    },
    {
        type = "noise-expression",
        name = "crystarion_crater",
        expression = '90'
    },
    --Helper
    {
        --Scales a function from [-1;1] to [0,100]
        type = "noise-function",
        parameters = { "to_scale" },
        name = "crystarion_scale",
        expression = 'to_scale * 50 + 50'
    },
    {
        --Scales a function from [-1;1] to [0,100]
        type = "noise-function",
        parameters = { "to_scale", "max_vals" },
        name = "crystarion_scale_max",
        expression = 'to_scale * max_vals/2 + max_vals/2'
    },
    --Height
    {
        type = "noise-expression",
        name = "crystarion_height_wobble",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 3, input_scale = 1/5} * 2'
    },
    {
        type = "noise-expression",
        name = "crystarion_height_wobble_large",
        expression = 'crystarion_scale(multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 1, octaves = 8, input_scale = 1/20})'
    },
    {
        type = "noise-expression",
        name = "crystarion_volcans",
        expression = "clamp(spot_noise{\z
                             x = x,\z
                             y = y,\z
                             seed0 = map_seed,\z
                             seed1 = 2,\z
                             candidate_spot_count = 5,\z
                             suggested_minimum_candidate_point_spacing = 512,\z
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
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 2, octaves = 6, input_scale = 1/10}'
    },
    {
        type = "noise-expression",
        name = "crystarion_volcans_height",
        expression = "(crystarion_volcans/2.0 + (crystarion_scale_max(crystarion_volcans_height_wobble,75))*crystarion_volcans/100)"
    },
    {
        type = "noise-expression",
        name = "crystarion_height",
        expression = 'clamp(crystarion_height_wobble_large + crystarion_height_wobble,0,100)'
    },
    --Moisture
    {
        type = "noise-expression",
        name = "crystarion_moist_wobble_large",
        expression = 'crystarion_scale(multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 3, octaves = 5, input_scale = 1/100})'
    },
    {
        type = "noise-expression",
        name = "crystarion_moist",
        expression = 'crystarion_moist_wobble_large'
    },
    --Temperature
    {
        type = "noise-expression",
        name = "crystarion_temp_wobble",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 2, octaves = 8, input_scale = 1/10}'
    },
    {
        type = "noise-expression",
        name = "crystarion_temp",
        expression = 'crystarion_temp_wobble'
    },
    --Indication Functions
    {
        type = "noise-expression",
        name = "crystarion_is_water",
        --expression = 'if(crystarion_height < crystarion_moist, 1, 0)'
        expression = 'if(crystarion_moist>75, 1-crystarion_is_volcan, 0)'
    },
    {
        type = "noise-expression",
        name = "crystarion_is_ground",
        expression = '(1 - crystarion_is_water)*(1 - crystarion_is_volcan)'
    },
    {
        type = "noise-expression",
        name = "crystarion_is_volcan",
        --expression = 'crystarion_volcans > crystarion_height'
        expression = 'crystarion_volcans_height > crystarion_height'
    },

    --Tile spawn
    {
        type = "noise-expression",
        name = "crystarion_ice_rough",
        expression = '0',
    },
    {
        type = "noise-expression",
        name = "crystarion_ice_smooth",
        expression = 'crystarion_is_water',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_flat",
        expression = 'crystarion_is_ground*if(crystarion_height<crystarion_snow,1,0)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_crests",
        expression = 'crystarion_is_ground*range_select(crystarion_height,crystarion_snow,crystarion_rich_snow,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_lumpy",
        expression = 'crystarion_is_ground*if(crystarion_height>crystarion_rich_snow,1,0)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_patchy",
        expression = '0',
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_pumice_stones",
        expression = 'crystarion_is_volcan*range_select(crystarion_volcans_height,0,crystarion_slope,0.01,0,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_ash_cracks",
        expression = 'crystarion_is_volcan*range_select(crystarion_volcans_height,crystarion_slope,crystarion_ridge,0.01,0,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_folds",
        expression = 'crystarion_is_volcan*range_select(crystarion_volcans_height,crystarion_ridge,crystarion_crater,0.01,0,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_cracks_hot",
        expression = 'crystarion_is_volcan*if(crystarion_volcans_height>crystarion_crater,1,0)',
    },
    --Entity spawn
    {
        type = "noise-expression",
        name = "crystarion_rock",
        expression = 'crystarion_volcanic_folds*0.01',
    },
    {
        type = "noise-expression",
        name = "crystarion_rock_ice",
        expression = 'crystarion_ice_smooth*0.01',
    },
    --Decorative spawn
    {
        type = "noise-expression",
        name = "crystarion_decorative_knockout", -- small wavelength noise (5 tiles-ish) to make decoratives patchy
        expression = "multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = 1300000, octaves = 2, input_scale = 1/20}"
    },
    {
        type = "noise-expression",
        name = "crystarion_decorative_knockout_large",
        expression = "multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = 1400000, octaves = 2, input_scale = 1/30}"
    },
    {
        type = "noise-expression",
        name = "crystarion_decorative_floor_knockout", -- small wavelength noise (5 tiles-ish) to make decoratives patchy
        expression = "multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = 1500000, octaves = 2, input_scale = 1/3}"
    },


    ----Grass patches on snow
    --{
    --    type = "noise-expression",
    --    name = "crystarion-green-hairy-grass",
    --},
    --{
    --    type = "noise-expression",
    --    name = "crystarion-dark-mud-decal",
    --},
    --{
    --    type = "noise-expression",
    --    name = "crystarion-cracked-mud-decal",
    --},
    --{
    --    type = "noise-expression",
    --    name = "crystarion-white-carpet-grass",
    --},
    --{
    --    type = "noise-expression",
    --    name = "crystarion-white-desert-bush",
    --},
    --{
    --    type = "noise-expression",
    --    name = "crystarion-green-carpet-grass",
    --},
    ----Random stuff on snow
    --{
    --    type = "noise-expression",
    --    name = "crystarion-aqulio-ice-decal-blue",
    --},
    --{
    --    type = "noise-expression",
    --    name = "crystarion-aqulio-snowy-decal",
    --},
    --{
    --    type = "noise-expression",
    --    name = "crystarion-snow-drift-decal",
    --},
    --{
    --    type = "noise-expression",
    --    name = "crystarion-pumice-relief-decal",
    --},
    --Volcan stuff
    {
        type = "noise-expression",
        name = "crystarion_vulcanus_dune_decal",
        expression = 'random_penalty{x = x, y = y, source = max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, seed = 10}-0.5',
    },
    {
        type = "noise-expression",
        name = "crystarion_vulcanus_sand_decal",
        expression = 'random_penalty{x = x, y = y, source = max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, seed = 11}-0.5',
    },
    {
        type = "noise-expression",
        name = "crystarion_crater_small",
        expression = 'random_penalty{x = x, y = y, source = max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, seed = 12}',
    },
    {
        type = "noise-expression",
        name = "crystarion_crater_large",
        expression = 'random_penalty{x = x, y = y, source = max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, seed = 13}-0.1',
    },
    {
        type = "noise-expression",
        name = "crystarion_tiny_rock_cluster",
        expression = 'random_penalty{x = x, y = y, source = max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, seed = 14}-0.3',
    },
    {
        type = "noise-expression",
        name = "crystarion_vulcanus_rock_decal_large",
        expression = 'random_penalty{x = x, y = y, source = max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, seed = 15}-0.2',
    },
    {
        type = "noise-expression",
        name = "crystarion_waves_decal",
        expression = 'random_penalty{x = x, y = y, source = max(crystarion_volcanic_folds, crystarion_volcanic_ash_cracks, crystarion_volcanic_pumice_stones) * crystarion_decorative_floor_knockout, seed = 16}-0.5',
    },
    --flanks stuff
    {
        type = "noise-expression",
        name = "crystarion_veins",
        expression = 'random_penalty{x = x, y = y, source = crystarion_volcanic_pumice_stones * crystarion_decorative_knockout_large, seed = 1}',
    },
    {
        type = "noise-expression",
        name = "crystarion_split_gill_dying_1x1",
        expression = 'random_penalty{x = x, y = y, source = crystarion_volcanic_pumice_stones * crystarion_decorative_knockout_large, seed = 2}-0.5',
    },
    {
        type = "noise-expression",
        name = "crystarion_split_gill_dying_2x2",
        expression = 'random_penalty{x = x, y = y, source = crystarion_volcanic_pumice_stones * crystarion_decorative_knockout_large, seed = 3}-0.7',
    },
    {
        type = "noise-expression",
        name = "crystarion_brown_hairy_grass",
        expression = 'random_penalty{x = x, y = y, source = max(crystarion_volcanic_pumice_stones, crystarion_volcanic_ash_cracks) * crystarion_decorative_knockout, seed = 4}-0.2',
    },
    {
        type = "noise-expression",
        name = "crystarion_brown_carpet_grass",
        expression = 'random_penalty{x = x, y = y, source = max(crystarion_volcanic_pumice_stones, crystarion_volcanic_ash_cracks) * crystarion_decorative_knockout, seed = 5}-0.2',
    },
    {
        type = "noise-expression",
        name = "crystarion_brown_asterisk_mini",
        expression = 'random_penalty{x = x, y = y, source = crystarion_volcanic_pumice_stones * crystarion_decorative_knockout, seed = 6}-0.2',
    },
    {
        type = "noise-expression",
        name = "crystarion_brown_asterisk",
        expression = 'random_penalty{x = x, y = y, source = crystarion_volcanic_pumice_stones * crystarion_decorative_knockout, seed = 7}-0.2',
    },
})
