require("__Crystarion__.prototypes.entities.graphics.empowerer")
local helper = require("__Crystarion__.helper")
local icons = helper.alternate(
        { icon = "__base__/graphics/icons/accumulator.png" },
        helper.icons("planet")
)

local entity = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
entity.crafting_categories = { "crystarion-empowerer-category" }
entity.name = "crystarion-empowerer"
entity.crafting_speed = 1.0
entity.energy_usage = "100MW"
entity.minable = { mining_time = 0.2, result = "crystarion-empowerer" }
entity.surface_conditions = {}
entity.icons = icons

entity.collision_box = {{-1.7, -1.7}, {1.7, 1.7}}
entity.selection_box = {{-2, -2}, {2, 2}}

entity.graphics_set = get_graphics()

entity.working_sound = {
    main_sounds = {
        {
            sound = {
                filename = "__base__/sound/accumulator-working.ogg",
                volume = 0.4,
                modifiers = volume_multiplier("main-menu", 1.44),
                audible_distance_modifier = 0.5
            },
            match_volume_to_activity = true,
            activity_to_volume_modifiers = { offset = 2, inverted = true },
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        {
            sound = {
                filename = "__base__/sound/accumulator-discharging.ogg",
                volume = 0.4,
                modifiers = volume_multiplier("main-menu", 1.44),
                audible_distance_modifier = 0.5
            },
            match_volume_to_activity = true,
            activity_to_volume_modifiers = { offset = 1 },
            fade_in_ticks = 4,
            fade_out_ticks = 20
        }
    },
    idle_sound = { filename = "__base__/sound/accumulator-idle.ogg", volume = 0.35, audible_distance_modifier = 0.5 },
    max_sounds_per_prototype = 3,
}

local item = table.deepcopy(data.raw["item"]["assembling-machine-3"])
item.name = "crystarion-empowerer"
item.place_result = "crystarion-empowerer"
item.subgroup = "production-machine"
item.icons = icons

local recipe = {
    type = "recipe",
    name = "crystarion-empowerer",
    main_product = "crystarion-empowerer",
    ingredients = {
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "iron-plate", amount = 2 }
    },
    results = {
        { type = "item", name = "crystarion-empowerer", amount = 1 }
    },
    energy_required = 2
}

data:extend({ entity, item, recipe })
