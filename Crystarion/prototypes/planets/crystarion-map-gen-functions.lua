data:extend({
    --Constants
    {
        type = "noise-expression",
        name = "crystarion_sea_level",
        expression = '-0.2'
    },
    --Height
    {
        type = "noise-expression",
        name = "crystarion_height_wobble",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 3, input_scale = 1/5}'
    },
    {
        type = "noise-expression",
        name = "crystarion_height_wobble_large",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 8, input_scale = 1/50}'
    },
    {
        type = "noise-expression",
        name = "crystarion_height",
        expression = 'crystarion_height_wobble_large + crystarion_height_wobble*0.01'
    },
    --Moisture
    {
        type = "noise-expression",
        name = "crystarion_moist_wobble_large",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 3, octaves = 8, input_scale = 1/50}'
    },
    {
        type = "noise-expression",
        name = "crystarion_moist",
        expression = 'crystarion_moist_wobble_large'
    },
    --Temperature
    {
        type = "noise-expression",
        name = "crystarion_temp_wobble_large",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 2, octaves = 8, input_scale = 1/50}'
    },
    {
        type = "noise-expression",
        name = "crystarion_temp",
        expression = 'crystarion_temp_wobble_large'
    },
    --Regions
    {
        type = "noise-expression",
        name = "crystarion_ice_region",
        expression = 'range_select(crystarion_height,-1,crystarion_sea_level,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_region",
        expression = 'range_select(crystarion_moist,0,1,0.1,-1,1)',
    },
    {
        type = "noise-expression",
        name = "crystarion_dirt_region",
        expression = 'range_select(crystarion_moist,-1,0,0.1,-1,1)',
    },
    --Tile spawn
    {
        type = "noise-expression",
        name = "crystarion_ice",
        expression = 'crystarion_ice_region',
    },
    {
        type = "noise-expression",
        name = "crystarion_dirt",
        expression = 'crystarion_dirt_region',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow",
        expression = 'crystarion_snow_region',
    },
    --Entity spawn
    {
        type = "noise-expression",
        name = "crystarion_rock",
        expression = 'crystarion_dirt_region*0.001',
    },
    {
        type = "noise-expression",
        name = "crystarion_rock_ice",
        expression = 'crystarion_snow_region*0.001',
    },
})
