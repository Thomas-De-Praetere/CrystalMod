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
