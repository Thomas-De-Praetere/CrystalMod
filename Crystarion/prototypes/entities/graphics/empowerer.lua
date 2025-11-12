function get_graphics()
    return {
        always_draw_idle_animation = true,
        idle_animation = {
            layers = {
                {
                    filename = "__base__/graphics/entity/accumulator/accumulator.png",
                    priority = "high",
                    width = 130,
                    height = 189,
                    repeat_count = 24,
                    shift = util.add_shift(util.by_pixel(0, -11), { -1, -0.8 }),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/accumulator/accumulator.png",
                    priority = "high",
                    width = 130,
                    height = 189,
                    repeat_count = 24,
                    shift = util.add_shift(util.by_pixel(0, -11), { 1, -0.8 }),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/accumulator/accumulator.png",
                    priority = "high",
                    width = 130,
                    height = 189,
                    repeat_count = 24,
                    shift = util.add_shift(util.by_pixel(0, -11), { 1, 1 }),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/accumulator/accumulator.png",
                    priority = "high",
                    width = 130,
                    height = 189,
                    repeat_count = 24,
                    shift = util.add_shift(util.by_pixel(0, -11), { -1, 1 }),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
                    priority = "high",
                    width = 234,
                    height = 106,
                    repeat_count = 24,
                    shift = util.add_shift(util.by_pixel(29, 6), { -1, -0.8 }),
                    draw_as_shadow = true,
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
                    priority = "high",
                    width = 234,
                    height = 106,
                    repeat_count = 24,
                    shift = util.add_shift(util.by_pixel(29, 6), { 1, 0.8 }),
                    draw_as_shadow = true,
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
                    priority = "high",
                    width = 234,
                    height = 106,
                    repeat_count = 24,
                    shift = util.add_shift(util.by_pixel(29, 6), { 1, 1 }),
                    draw_as_shadow = true,
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
                    priority = "high",
                    width = 234,
                    height = 106,
                    repeat_count = 24,
                    shift = util.add_shift(util.by_pixel(29, 6), { -1, 1 }),
                    draw_as_shadow = true,
                    scale = 0.5
                },
            }
        },

        states = {
            {
                name = "idle",
                duration = 1,
                next_active = "warmup",
                next_inactive = "idle",
            },
            {
                name = "warmup",
                duration = 24,
                next_active = "full_1",
                next_inactive = "idle",
            },
            {
                name = "full_1",
                duration = 24,
                next_active = "hamper_1",
                next_inactive = "warmup",
            },
            {
                name = "hamper_1",
                duration = 24,
                next_active = "full_2",
                next_inactive = "warmup",
            },
            {
                name = "full_2",
                duration = 24,
                next_active = "hamper_2",
                next_inactive = "warmup",
            },
            {
                name = "hamper_2",
                duration = 24,
                next_active = "full_3",
                next_inactive = "warmup",
            },
            {
                name = "full_3",
                duration = 24,
                next_active = "hamper_3",
                next_inactive = "warmup",
            },
            {
                name = "hamper_3",
                duration = 24,
                next_active = "full_4",
                next_inactive = "warmup",
            },
            {
                name = "full_4",
                duration = 24,
                next_active = "hamper_4",
                next_inactive = "warmup",
            },
            {
                name = "hamper_4",
                duration = 24,
                next_active = "full_1",
                next_inactive = "warmup",
            },
        },

        working_visualisations = {
            {
                always_draw = true,
                draw_in_states = { "warmup", "hamper_1" },
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
                            priority = "high",
                            width = 178,
                            height = 210,
                            line_length = 6,
                            frame_count = 24,
                            draw_as_glow = true,
                            shift = util.add_shift(util.by_pixel(1, -20), { -1, -0.8 }),
                            scale = 0.5
                        },
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "warmup", "hamper_3" },
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
                            priority = "high",
                            width = 178,
                            height = 210,
                            line_length = 6,
                            frame_count = 24,
                            draw_as_glow = true,
                            shift = util.add_shift(util.by_pixel(1, -20), { 1, -0.8 }),
                            scale = 0.5
                        },
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "warmup", "hamper_2" },
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
                            priority = "high",
                            width = 178,
                            height = 210,
                            line_length = 6,
                            frame_count = 24,
                            draw_as_glow = true,
                            shift = util.add_shift(util.by_pixel(1, -20), { -1, 1 }),
                            scale = 0.5
                        },
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "warmup", "hamper_4" },
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
                            priority = "high",
                            width = 178,
                            height = 210,
                            line_length = 6,
                            frame_count = 24,
                            draw_as_glow = true,
                            shift = util.add_shift(util.by_pixel(1, -20), { 1, 1 }),
                            scale = 0.5
                        },
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "full_1", "full_2", "full_3", "full_4", "hamper_2", "hamper_3", "hamper_4" },
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
                            priority = "high",
                            width = 174,
                            height = 214,
                            line_length = 6,
                            frame_count = 24,
                            draw_as_glow = true,
                            shift = util.add_shift(util.by_pixel(1, -21), { -1, -0.8 }),
                            scale = 0.5
                        },
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "full_1", "full_2", "full_3", "full_4", "hamper_2", "hamper_1", "hamper_4" },
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
                            priority = "high",
                            width = 174,
                            height = 214,
                            line_length = 6,
                            frame_count = 24,
                            draw_as_glow = true,
                            shift = util.add_shift(util.by_pixel(1, -21), { 1, -0.8 }),
                            scale = 0.5
                        },
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "full_1", "full_2", "full_3", "full_4", "hamper_1", "hamper_3", "hamper_4" },
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
                            priority = "high",
                            width = 174,
                            height = 214,
                            line_length = 6,
                            frame_count = 24,
                            draw_as_glow = true,
                            shift = util.add_shift(util.by_pixel(1, -21), { -1, 1 }),
                            scale = 0.5
                        },
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "full_1", "full_2", "full_3", "full_4", "hamper_2", "hamper_3", "hamper_1" },
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
                            priority = "high",
                            width = 174,
                            height = 214,
                            line_length = 6,
                            frame_count = 24,
                            draw_as_glow = true,
                            shift = util.add_shift(util.by_pixel(1, -21), { 1, 1 }),
                            scale = 0.5
                        },
                    }
                },
            },
        }
    }
end