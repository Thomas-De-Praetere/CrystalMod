data:extend({
    {
        type = "noise-expression",
        name = "crystarion_height",
        -- octaves+ = size of islands+, smaller input_scale enlarges as well.
        expression =
        'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 8, input_scale = 1/70}'
    },
    {
        type = "noise-expression",
        name = "crystarion_ice",
        expression = 'if(crystarion_height<=0,1,0)',
    },
    {
        type = "noise-expression",
        name = "crystarion_dirt",
        expression = 'if(crystarion_height>20,1,0)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow",
        expression = 'if(crystarion_height>0|crystarion_height<=20,1,0)',
    },
})
