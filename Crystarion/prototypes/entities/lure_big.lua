-- locale rader crystarion-lure-big
-- locale item crystarion-lure-big
-- locale recipe crystarion-lure-big

local helper = require("__Crystarion__.helper")
require("__Crystarion__.prototypes.entities.graphics.lure_big")

local icons = helper.alternate(
        { icon = "__space-age__/graphics/icons/lightning-collector.png" },
        helper.icons("planet")
)

local entity = {
    type = "electric-energy-interface",
    name = "crystarion-lure-big",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "crystarion-lure-big" },
    icon = "__base__/graphics/icons/solar-panel.png",
    corpse = "lightning-collector-remnants",
    dying_explosion = "substation-explosion",
    hidden = true,
    max_health = 150,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box_vertical_extension = 4.5,
    gui_mode = "none",
    continuous_animation = true,
    is_military_target = true,
    energy_source = {
        type = "electric",
        buffer_capacity = "6MJ",
        usage_priority = "tertiary",
        input_flow_limit = "12MW",
        output_flow_limit = "12MW",
        emissions_per_minute = {
            crystarion_resonance = 600
        },
    },
    energy_usage = "6MW",
    allow_copy_paste = true,
    working_sound = {
        main_sounds = {
            {
                sound = {
                    filename = "__space-age__/sound/entity/lightning-attractor/lightning-attractor-charge.ogg",
                    volume = 0.5,
                    audible_distance_modifier = 0.5,
                },
                match_volume_to_activity = true,
                activity_to_volume_modifiers = { offset = 2, inverted = true },
            },
            {
                sound = {
                    filename = "__space-age__/sound/entity/lightning-attractor/lightning-attractor-discharge.ogg",
                    volume = 0.5,
                    audible_distance_modifier = 0.5,
                },
                match_volume_to_activity = true,
                activity_to_volume_modifiers = { offset = 1 },
            }
        },
        max_sounds_per_prototype = 3,
    },
    animation = get_graphics(),
    order = "h-e-e-i",
    icons = icons,
}

local item = table.deepcopy(data.raw["item"]["radar"])
item.name = "crystarion-lure-big"
item.place_result = "crystarion-lure-big"
item.icons = icons

local recipe = {
    type = "recipe",
    name = "crystarion-lure-big",
    main_product = "crystarion-lure-big",
    ingredients = {
        { type = "item", name = "copper-cable", amount = 40 },
        { type = "item", name = "crystarion-lure", amount = 4 },
    },
    results = {
        { type = "item", name = "crystarion-lure-big", amount = 1 }
    },
    energy_required = 3,
    enabled = false,
}

data:extend({ item, entity, recipe })
