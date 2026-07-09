function make_crystarion_look(biter, tint1, tint2)
    local attack_anim = biter.attack_parameters.animation.layers
    local run_anim = biter.run_animation.layers
    for _, anim in pairs(run_anim)
    do
        anim.surface = "any"
    end
    run_anim[2].tint = tint1
    run_anim[3].tint = tint2
    attack_anim[2].tint = tint1
    attack_anim[3].tint = tint2
    local scale = run_anim[1].scale
    table.insert(run_anim, 4,
            util.sprite_load("__Crystarion__/graphics/entity/unit/biter-run-mask2",
                    {
                        slice = 8,
                        frame_count = 16,
                        direction_count = 16,
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