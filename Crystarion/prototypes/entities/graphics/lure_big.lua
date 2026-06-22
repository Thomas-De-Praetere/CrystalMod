function get_graphics()
    return {
        layers =
        {
            {
                layers = {
                    util.sprite_load("__space-age__/graphics/entity/lightning-collector/lightning-collector",
                        {
                            priority = "high",
                            scale = 0.5,
                            repeat_count = 24
                        }),
                    util.sprite_load("__space-age__/graphics/entity/lightning-collector/lightning-collector-shadow",
                        {
                            priority = "high",
                            draw_as_shadow = true,
                            scale = 0.5,
                            repeat_count = 24
                        })
                }
            },
            {
                layers = {
                    util.sprite_load("__space-age__/graphics/entity/lightning-collector/lightning-collector-discharge",
                        {
                            priority = "high",
                            blend_mode = "additive",
                            scale = 0.5,
                            frame_count = 24,
                            draw_as_glow = true,
                        })
                }
            }
        },
    }
end
