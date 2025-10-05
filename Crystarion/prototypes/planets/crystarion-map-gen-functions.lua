data:extend({
    {
        type = "noise-expression",
        name = "crystarion_height",
        expression =
        'multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 4, input_scale = 1/3, output_scale = 3}'
    },
    {
        type = "noise-expression",
        name = "crystarion_ice",
        expression = 'if(crystarion_height<=0,1,0)',
    },
    {
        type = "noise-expression",
        name = "crystarion_dirt",
        expression = 'if(crystarion_height>100,1,0)',
    },
    {
        type = "noise-expression",
        name = "crystarion_snow",
        expression = 'if(crystarion_height>0|crystarion_height<=100,1,0)',
    },
})
