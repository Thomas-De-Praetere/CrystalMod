function make_crystarion_look(biter, tint1, tint2)
    local attack_anim = biter.attack_parameters.animation.layers
    local run_anim = biter.run_animation.layers
    for _, anim in pairs(run_anim)
    do
        anim.surface = "any"
    end
    for _, anim in pairs(attack_anim)
    do
        anim.surface = "any"
    end
    run_anim[2].tint = tint1
    run_anim[3].tint = tint1
    attack_anim[2].tint = tint1
    attack_anim[3].tint = tint1
    local scale = run_anim[1].scale
    table.insert(run_anim, 4,
        util.sprite_load("__Crystarion__/graphics/entity/unit/biter-run-mask2",
            {
                slice = 8,
                frame_count = 16,
                direction_count = 16,
                tint = tint2,
                draw_as_glow = true,
                scale = scale,
                multiply_shift = scale * 2,
                allow_forced_downscale = true,
                surface = "any",
                usage = "enemy",
            }
        )
    )
    table.insert(attack_anim, 4,
        util.sprite_load("__Crystarion__/graphics/entity/unit/biter-attack-mask2",
            {
                slice = 11,
                frame_count = 11,
                direction_count = 16,
                tint = tint2,
                draw_as_glow = true,
                scale = scale,
                multiply_shift = scale * 2,
                allow_forced_downscale = true,
                surface = "any",
                usage = "enemy",
            }
        )
    )
end

function make_crystarion_corpse_look(corpse, tint1, tint2)
    local animation = corpse.animation.layers
    local decay_animation = corpse.decay_animation.layers
    for _, anim in pairs(animation)
    do
        anim.surface = "any"
    end
    for _, anim in pairs(decay_animation)
    do
        anim.surface = "any"
    end
    animation[2].tint = tint1
    animation[3].tint = tint1
    decay_animation[2].tint = tint1
    decay_animation[3].tint = tint1
    local scale = animation[1].scale
    table.insert(animation, 4,
        util.sprite_load("__Crystarion__/graphics/entity/unit/biter-die-mask2",
            {
                slice = 8,
                frame_count = 17,
                direction_count = 16,
                draw_as_glow = true,
                scale = scale,
                tint = tint2,
                multiply_shift = scale * 2,
                flags = { "corpse-decay" },
                allow_forced_downscale = true,
                surface = "any",
                usage = "enemy"
            }
        )
    )
    --table.insert(decay_animation,
    --    util.sprite_load("__Crystarion__/graphics/entity/unit/biter-decay-mask2",
    --        {
    --            slice = 7,
    --            frame_count = 24,
    --            direction_count = 16,
    --            draw_as_glow = true,
    --            scale = scale,
    --            multiply_shift = scale * 2,
    --            flags = { "corpse-decay" },
    --            allow_forced_downscale = true,
    --            surface = "any",
    --            usage = "corpse-decay"
    --        }
    --    )
    --)
end

function make_crystarion_spitter_look(spitter, tint1, tint2)
    local attack_anim = spitter.attack_parameters.animation.layers
    local run_anim = spitter.run_animation.layers
    for _, anim in pairs(run_anim)
    do
        anim.surface = "any"
    end
    for _, anim in pairs(attack_anim)
    do
        anim.surface = "any"
    end
    run_anim[2].tint = tint1
    run_anim[3].tint = tint1
    attack_anim[2].tint = tint1
    attack_anim[3].tint = tint1
    local scale = run_anim[1].scale
    table.insert(run_anim, 4,
        util.sprite_load("__Crystarion__/graphics/entity/unit/spitter-run-mask2",
            {
                slice = 6,
                frame_count = 16,
                direction_count = 16,
                tint = tint2,
                draw_as_glow = true,
                scale = scale,
                multiply_shift = scale * 2,
                allow_forced_downscale = true,
                surface = "any",
                usage = "enemy",
            }
        )
    )
    table.insert(attack_anim, 4,
        util.sprite_load("__Crystarion__/graphics/entity/unit/spitter-attack-mask2",
            {
                slice = 6,
                frame_count = 14,
                direction_count = 16,
                tint = tint2,
                draw_as_glow = true,
                scale = scale,
                run_mode = "forward-then-backward",
                animation_speed = 0.4,
                multiply_shift = scale * 2,
                allow_forced_downscale = true,
                surface = "any",
                usage = "enemy",
            }
        )
    )
end

function make_crystarion_spitter_corpse_look(spitter, tint1, tint2)
    local animation = spitter.animation.layers
    local decay_animation = spitter.decay_animation.layers
    for _, anim in pairs(animation)
    do
        anim.surface = "any"
    end
    for _, anim in pairs(decay_animation)
    do
        anim.surface = "any"
    end
    animation[2].tint = tint1
    animation[3].tint = tint1
    decay_animation[2].tint = tint1
    decay_animation[3].tint = tint1
    local scale = animation[1].scale
    table.insert(animation, 4,
        util.sprite_load("__Crystarion__/graphics/entity/unit/spitter-die-mask2",
            {
                slice = 6,
                frame_count = 15,
                direction_count = 16,
                draw_as_glow = true,
                scale = scale,
                tint = tint2,
                multiply_shift = scale * 2,
                flags = { "corpse-decay" },
                allow_forced_downscale = true,
                surface = "any",
                usage = "enemy"
            }
        )
    )
    --table.insert(decay_animation,
    --    util.sprite_load("__Crystarion__/graphics/entity/unit/biter-decay-mask2",
    --        {
    --            slice = 7,
    --            frame_count = 24,
    --            direction_count = 16,
    --            draw_as_glow = true,
    --            scale = scale,
    --            multiply_shift = scale * 2,
    --            flags = { "corpse-decay" },
    --            allow_forced_downscale = true,
    --            surface = "any",
    --            usage = "corpse-decay"
    --        }
    --    )
    --)
end
