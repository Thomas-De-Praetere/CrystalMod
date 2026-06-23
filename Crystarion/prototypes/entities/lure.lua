-- locale rader crystarion-lure
-- locale item crystarion-lure
-- locale recipe crystarion-lure

local helper = require("__Crystarion__.helper")
require("__Crystarion__.prototypes.entities.graphics.lure")

local icons = helper.alternate(
    { icon = "__space-age__/graphics/icons/lightning-rod.png" },
    helper.icons("planet")
)

local entity = {
    type = "electric-energy-interface",
    name = "crystarion-lure",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "crystarion-lure" },
    icon = "__base__/graphics/icons/solar-panel.png",
    corpse = "lightning-rod-remnants",
    dying_explosion = "medium-electric-pole-explosion",
    hidden = true,
    max_health = 150,
    collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    drawing_box_vertical_extension = 4.3,
    gui_mode = "none",
    continuous_animation = true,
    is_military_target = true,
    energy_source = {
        type = "electric",
        buffer_capacity = "1MJ",
        usage_priority = "tertiary",
        input_flow_limit = "2MW",
        output_flow_limit = "2MW",
        emissions_per_minute = {
            crystarion_resonance = 100
        },
        render_no_power_icon = false,
    },
    energy_usage = "1MW",
    allow_copy_paste = true,
    working_sound = {
        main_sounds = {
            {
                sound = {
                    filename = "__space-age__/sound/entity/lightning-attractor/lightning-attractor-discharge.ogg",
                    volume = 0.5,
                    audible_distance_modifier = 0.5,
                },
                match_volume_to_activity = true,
                activity_to_volume_modifiers = { offset = 2, inverted = true },
            }
        },
        max_sounds_per_prototype = 3,
    },
    animation = get_graphics(),
    order = "h-e-e-i",
    icons = icons,
}

local item = table.deepcopy(data.raw["item"]["radar"])
item.name = "crystarion-lure"
item.place_result = "crystarion-lure"
item.icons = icons

local recipe = {
    type = "recipe",
    name = "crystarion-lure",
    main_product = "crystarion-lure",
    ingredients = {
        { type = "item", name = "copper-plate",       amount = 2 },
        { type = "item", name = "copper-cable",       amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 2 },
        { type = "item", name = "battery",            amount = 4 },
    },
    results = {
        { type = "item", name = "crystarion-lure", amount = 1 }
    },
    energy_required = 2,
    enabled = false,
}

data:extend({ item, entity, recipe })
