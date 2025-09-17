local energiser = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
energiser.crafting_categories = { "crystarion-energiser-category" }
energiser.name = "crystarion-energiser"
energiser.crafting_speed = 1.0
energiser.minable = { mining_time = 0.2, result = "crystarion-energiser" }

local fluid_box_east = table.deepcopy(energiser.fluid_boxes[1])
fluid_box_east.production_type = "output"
fluid_box_east.pipe_connections = { { flow_direction = "input-output", direction = defines.direction.east, position = { 1, 0 } } }
fluid_box_east.secondary_draw_orders = { north = -1 }

local fluid_box_west = table.deepcopy(energiser.fluid_boxes[1])
fluid_box_west.production_type = "output"
fluid_box_west.pipe_connections = { { flow_direction = "input-output", direction = defines.direction.west, position = { -1, 0 } } }
fluid_box_west.secondary_draw_orders = { north = -1 }
energiser.fluid_boxes[3] = fluid_box_east
energiser.fluid_boxes[4] = fluid_box_west

local energiser_item = table.deepcopy(data.raw["item"]["assembling-machine-3"])
energiser_item.name = "crystarion-energiser"
energiser_item.place_result = "crystarion-energiser"

local energiser_recipe = {
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

data:extend({ energiser, energiser_item, energiser_recipe })
