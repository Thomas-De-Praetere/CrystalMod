local helper = require("__Crystarion__.helper")

local entity = {
    name = "crystarion-naturizer",
    minable = { mining_time = 0.2, result = "crystarion-naturizer" },
    max_power_output = "4MW",
    burner = {
        type = "burner",
        fuel_categories = { "crystarion-volatile" },
        effectivity = 1,
        fuel_inventory_size = 2,
        emissions_per_minute = { crystarion_resonance = 10 },
        smoke = {
            {
                name = "smoke",
                north_position = { 0.9, 0.0 },
                east_position = { -2.0, -2.0 },
                deviation = { 0.1, 0.1 },
                frequency = 9
            }
        },
        light_flicker = {
            color = helper.crystal_tint.cyan,
            minimum_intensity = 0.7,
            maximum_intensity = 0.95
        }
    },
    energy_source = {
        type = "electric",
        usage_priority = "secondary-output"
    },
    collision_box = { { -1.25, -1.25 }, { 1.25, 1.25 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    idle_animation = {
        north = {
            layers = {
                util.sprite_load("__space-age__/graphics/entity/heating-tower/heating-tower-main", {
                    scale = 0.5,
                    frame_count = 1,
                    repeat_count = 24,
                }),
                util.sprite_load("__space-age__/graphics/entity/heating-tower/heating-tower-shadow", {
                    scale = 0.5,
                    frame_count = 1,
                    repeat_count = 24,
                    draw_as_shadow = true
                })
            }

        }
    },
    animation = {
        layers = {
            util.sprite_load("__space-age__/graphics/entity/heating-tower/heating-tower-working-fire", {
                frame_count = 24,
                scale = 0.5,
                blend_mode = "additive",
                draw_as_glow = true,
                animation_speed = 0.333,
                tint = helper.crystal_tint.cyan
            }),
            util.sprite_load("__space-age__/graphics/entity/heating-tower/heating-tower-working-light", {
                frame_count = 1,
                repeat_count = 24,
                scale = 0.5,
                blend_mode = "additive",
                draw_as_glow = true,
                tint = helper.crystal_tint.cyan
            })
        }
    },
    always_draw_idle_animation = true,
    type = "burner-generator",
    icon = "__space-age__/graphics/icons/heating-tower.png",
    flags = { "placeable-neutral", "player-creation" },
    max_health = 400,
    dying_explosion = "medium-explosion",
    corpse = "steam-engine-remnants",
    -- idle_animation can also be specified
    perceived_performance = { minimum = 0.25, performance_to_activity_rate = 2.0 },
}

local item = table.deepcopy(data.raw["item"]["burner-generator"])
item.name = "crystarion-naturizer"
item.place_result = "crystarion-naturizer"
item.icon = "__space-age__/graphics/icons/heating-tower.png"

local recipe = {
    type = "recipe",
    name = "crystarion-naturizer",
    main_product = "crystarion-naturizer",
    ingredients = {
        { type = "item", name = "iron-plate", amount = 3 },
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-naturizer", amount = 1 }
    },
    energy_required = 5
}

data:extend({ entity, item, recipe })
