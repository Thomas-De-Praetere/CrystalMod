data:extend({
    {
        type = "noise-expression",
        name = "crystarion_height_wobble",
        -- octaves+ = size of islands+, smaller input_scale enlarges as well.
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 3, input_scale = 1/5}'
    },
    {
        type = "noise-expression",
        name = "crystarion_height_wobble_large",
        -- octaves+ = size of islands+, smaller input_scale enlarges as well.
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 8, input_scale = 1/50}'
    },
    {
        type = "noise-expression",
        name = "crystarion_height",
        -- octaves+ = size of islands+, smaller input_scale enlarges as well.
        expression = 'crystarion_height_wobble_large+crystarion_height_wobble*0.01'
    },
    {
        type = "noise-expression",
        name = "crystarion_ice_region",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 8, input_scale = 1/50}',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow_region",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 1, octaves = 8, input_scale = 1/50}',
    },
    {
        type = "noise-expression",
        name = "crystarion_dirt_region",
        expression = 'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 2, octaves = 8, input_scale = 1/50}',
    },
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
})
