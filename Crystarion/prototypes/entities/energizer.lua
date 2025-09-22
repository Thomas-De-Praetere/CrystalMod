local entity = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
entity.crafting_categories = { "crystarion-energiser-category" }
entity.name = "crystarion-energiser"
entity.crafting_speed = 1.0
entity.energy_usage = "200kW"
entity.minable = { mining_time = 0.2, result = "crystarion-energiser" }
local pass_through = table.deepcopy(entity.fluid_boxes[1])
pass_through.production_type = "output"
pass_through.pipe_connections = {
    { flow_direction = "input-output", direction = defines.direction.west, position = { -1, 0 } },
    { flow_direction = "input-output", direction = defines.direction.east, position = { 1, 0 } }
}
pass_through.secondary_draw_orders = { north = -1 }
pass_through.filter = "crystarion-plasma"
entity.fluid_boxes[3] = pass_through

local item = table.deepcopy(data.raw["item"]["assembling-machine-3"])
item.name = "crystarion-energiser"
item.place_result = "crystarion-energiser"

local recipe = {
    type = "recipe",
    name = "crystarion-energiser",
    main_product = "crystarion-energiser",
    ingredients = {
        { type = "item", name = "iron-plate", amount = 3 },
        { type = "item", name = "copper-plate", amount = 3 },
        { type = "item", name = "copper-cable", amount = 2 },
        { type = "item", name = "electronic-circuit", amount = 3 },
        { type = "item", name = "battery", amount = 2 },
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-energiser", amount = 1 }
    },
    energy_required = 5
}

data:extend({ entity, item, recipe })
