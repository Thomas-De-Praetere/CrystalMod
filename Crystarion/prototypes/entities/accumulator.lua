local helper = require("__Crystarion__.helper")

local icons = helper.alternate(
        { icon = "__base__/graphics/icons/accumulator.png" },
        helper.icons("planet")
)

local entity = table.deepcopy(data.raw["accumulator"]["accumulator"])
entity.name = "crystarion-accumulator"
entity.minable = { mining_time = 0.3, result = "crystarion-accumulator" }
entity.icons = icons

entity.energy_source = {
    type = "electric",
    buffer_capacity = "100200kJ",
    usage_priority = "tertiary",
    input_flow_limit = "1MW",
    output_flow_limit = "100200kW"
}

local item = table.deepcopy(data.raw["item"]["accumulator"])
item.name = "crystarion-accumulator"
item.place_result = "crystarion-accumulator"
item.icons = icons

local recipe = {
    type = "recipe",
    name = "crystarion-accumulator",
    main_product = "crystarion-accumulator",
    ingredients = {
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "item", name = "battery", amount = 5 },
        { type = "item", name = "crystarion-crystal", amount = 5 }
    },
    results = {
        { type = "item", name = "crystarion-accumulator", amount = 1 }
    },
    energy_required = 2
}

data:extend({ entity, item, recipe })