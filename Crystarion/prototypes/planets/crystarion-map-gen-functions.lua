data:extend({
    --Constants
    {
        type = "noise-expression",
        name = "crystarion_sea_level",
        expression = '20'
    },
    {
        type = "noise-expression",
        name = "crystarion_snow",
        expression = '50'
    },
    {
        type = "noise-expression",
        name = "crystarion_rich_snow",
        expression = '80'
    },
    {
        type = "noise-expression",
        name = "crystarion_dirty_snow",
        expression = '90'
    },
    {
        type = "noise-expression",
        name = "crystarion_ashy_snow",
        expression = '100'
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_base",
        expression = '110'
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_wall",
        expression = '130'
    },
    {
        type = "noise-expression",
        name = "crystarion_crater_ridge",
        expression = '140'
    },
    {
        type = "noise-expression",
        name = "crystarion_crater",
        expression = '150'
    },
    --Height
    {
        type = "noise-expression",
        name = "crystarion_height_wobble",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 3, input_scale = 1/5}*2'
    },
    {
        type = "noise-expression",
        name = "crystarion_height_wobble_large",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 1, octaves = 8, input_scale = 1/20}*50+50'
    },
    {
        type = "noise-expression",
        name = "crystarion_volcans",
        expression = "spot_noise{x = x,\z
                             y = y,\z
                             seed0 = map_seed,\z
                             seed1 = 2,\z
                             candidate_spot_count = 10,\z
                             suggested_minimum_candidate_point_spacing = 128,\z
                             skip_span = 3,\z
                             skip_offset = 0,\z
                             region_size = 512,\z
                             density_expression = 10,\z
                             spot_quantity_expression = 1600,\z
                             spot_radius_expression = 10,\z
                             hard_region_target_quantity = 1,\z
                             spot_favorability_expression = crystarion_height_wobble_large,\z
                             basement_value = -1,\z
                             maximum_spot_basement_radius = 10 * 2}"
    },
    {
        type = "noise-expression",
        name = "crystarion_height",
        --expression = 'max(crystarion_height_wobble_large + crystarion_height_wobble,crystarion_volcans)'
        expression = 'max(crystarion_height_wobble_large,crystarion_volcans)'
    },
    --Moisture
    {
        type = "noise-expression",
        name = "crystarion_moist_wobble_large",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 3, octaves = 4, input_scale = 1/25}'
    },
    {
        type = "noise-expression",
        name = "crystarion_moist",
        expression = 'crystarion_moist_wobble_large*0.1 + 1.0 - clamp(crystarion_height,0.0,1.0)'
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
    --Tile spawn
    {
        type = "noise-expression",
        name = "crystarion_ice_rough",
        expression = 'range_select(max(crystarion_height,crystarion_sea_level-1),crystarion_sea_level-1,crystarion_sea_level,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_ice_smooth",
        expression = 'range_select(max(crystarion_height,crystarion_sea_level-1),crystarion_sea_level-1,crystarion_sea_level,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_flat",
        expression = 'range_select(crystarion_height,crystarion_sea_level,crystarion_snow,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_crests",
        expression = 'range_select(crystarion_height,crystarion_snow,crystarion_rich_snow,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_lumpy",
        expression = 'range_select(crystarion_height,crystarion_rich_snow,crystarion_dirty_snow,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_patchy",
        expression = 'range_select(crystarion_height,crystarion_dirty_snow,crystarion_ashy_snow,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_pumice_stones",
        expression = 'range_select(crystarion_height,crystarion_ashy_snow,crystarion_volcanic_base,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_ash_cracks",
        expression = 'range_select(crystarion_height,crystarion_volcanic_base,crystarion_volcanic_wall,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_folds",
        expression = 'range_select(crystarion_height,crystarion_volcanic_wall,crystarion_crater_ridge,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_volcanic_cracks_hot",
        expression = 'range_select(min(crystarion_height,crystarion_crater),crystarion_crater_ridge,crystarion_crater,0.1,-1,1)',
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
})
