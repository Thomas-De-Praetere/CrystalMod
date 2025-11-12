function get_graphics()
    return {
        animation_progress = 0.5,
        animation = {
            layers = {
                {
                    filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
                    priority = "high",
                    width = 214,
                    height = 237,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(0, -0.75),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
                    priority = "high",
                    width = 260,
                    height = 162,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(28, 4),
                    scale = 0.5
                }
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
                duration = 80,
                next_active = "active_1",
                next_inactive = "idle",
            },
            {
                name = "active_1",
                duration = 60,
                next_active = "active_2",
                next_inactive = "cooldown",
            },
            {
                name = "active_2",
                duration = 40,
                next_active = "active_3",
                next_inactive = "cooldown",
            },
            {
                name = "active_3",
                duration = 60,
                next_active = "active_1",
                next_inactive = "cooldown",
            },
            {
                name = "cooldown",
                duration = 80,
                next_active = "active_3",
                next_inactive = "idle",
            },
        },
        working_visualisations = {
            {
                always_draw = true,
                draw_in_states = { "warmup" },
                animation = {
                    layers = {
                        get_loop(1, 0.5),
                        get_loop_shift(2, 0.5),
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "active_1" },
                animation = {
                    layers = {
                        get_loop(2, 1),
                        get_loop_shift(3, 0.5),
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "active_2" },
                animation = {
                    layers = {
                        get_loop(3, 1),
                        get_loop_shift(4, 1),
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "active_3" },
                animation = {
                    layers = {
                        get_loop(4, 0.5),
                        get_loop_shift(5, 1),
                    }
                },
            },
            {
                always_draw = true,
                draw_in_states = { "cooldown" },
                animation = {
                    layers = {
                        get_loop(5, 0.5),
                        get_loop_shift(6, 0.5),
                    }
                },
            },
        }
    }
end

function get_loop(token, speed)
    return util.sprite_load("__space-age__/graphics/entity/beam/lightning-loop-" .. token .. "",
            {
                frame_count = 80,
                draw_as_glow = true,
                animation_speed = speed,
                scale = 0.5,
                blend_mode = "additive",
            })
end
function get_loop_shift(token, speed)
    return util.sprite_load("__space-age__/graphics/entity/beam/lightning-loop-" .. token .. "",
            {
                frame_count = 80,
                draw_as_glow = true,
                animation_speed = speed,
                scale = 0.5,
                blend_mode = "additive",
                shift = { 0, -1 }
            })
end
