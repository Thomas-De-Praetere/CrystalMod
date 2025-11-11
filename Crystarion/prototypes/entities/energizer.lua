local helper = require("__Crystarion__.helper")

local icons = helper.alternate(
    { icon = "__base__/graphics/icons/assembling-machine-3.png" },
    helper.icons("planet")
)

local entity = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
entity.crafting_categories = { "crystarion-energiser-category" }
entity.name = "crystarion-energiser"
entity.crafting_speed = 1.0
entity.energy_usage = "150kW"
entity.minable = { mining_time = 0.2, result = "crystarion-energiser" }
entity.icons = icons

--Fluid boxes
local output = table.deepcopy(entity.fluid_boxes[2])

local input1 = table.deepcopy(entity.fluid_boxes[1])
input1.pipe_connections = {
    {
        flow_direction = "input",
        direction = defines.direction.north,
        position = { -1, -1 }
    }
}

local input2 = table.deepcopy(entity.fluid_boxes[1])
input2.pipe_connections = {
    {
        flow_direction = "input",
        direction = defines.direction.north,
        position = { 1, -1 }
    }
}

local pass_through = table.deepcopy(entity.fluid_boxes[1])
pass_through.production_type = "output"
pass_through.pipe_connections = {
    {
        flow_direction = "input-output",
        direction = defines.direction.west,
        position = { -1, 0 }
    },
    {
        flow_direction = "input-output",
        direction = defines.direction.east,
        position = { 1, 0 }
    }
}
pass_through.secondary_draw_orders = { north = -1 }
pass_through.filter = "steam"

entity.fluid_boxes = { input1, input2, pass_through, output }

entity.graphics_set = {
    always_draw_idle_animation = true,
    idle_animation = {
        layers = {
            {
                filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
                priority = "high",
                width = 214,
                height = 237,
                frame_count = 1,
                line_length = 8,
                shift = util.by_pixel(0, -0.75),
                scale = 0.5
            },
            {
                filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
                priority = "high",
                width = 260,
                height = 162,
                frame_count = 1,
                line_length = 8,
                draw_as_shadow = true,
                shift = util.by_pixel(28, 4),
                scale = 0.5
            },
            {
                filename = "__base__/graphics/entity/accumulator/accumulator.png",
                priority = "high",
                width = 130,
                height = 189,
                shift = util.by_pixel(0, -11),
                scale = 0.5
            },
            {
                filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
                priority = "high",
                width = 234,
                height = 106,
                shift = util.by_pixel(29, 6),
                draw_as_shadow = true,
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
            name = "active",
            duration = 24,
            next_active = "active",
            next_inactive = "warmup",
        },
        {
            name = "warmup",
            duration = 24,
            next_active = "active",
            next_inactive = "idle",
        },
    },

    working_visualisations = {
                {
            always_draw = true,
            draw_in_states = { "warmup" },
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
                        shift = util.by_pixel(1, -20),
                        scale = 0.5
                    },
                }
            },
        },
        {
            always_draw = true,
            draw_in_states = { "active" },
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
                        shift = util.by_pixel(-1, -21),
                        scale = 0.5
                    },
                }
            },
        },
    }
}
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
item.name = "crystarion-energiser"
item.place_result = "crystarion-energiser"
item.icons = icons

local recipe = {
    type = "recipe",
    name = "crystarion-energiser",
    main_product = "crystarion-energiser",
    ingredients = {
        { type = "item", name = "iron-plate",         amount = 2 },
        { type = "item", name = "copper-plate",       amount = 1 },
        { type = "item", name = "copper-cable",       amount = 1 },
        { type = "item", name = "battery",            amount = 1 },
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-energiser", amount = 1 }
    },
    energy_required = 5
}

data:extend({ entity, item, recipe })
