local helper = require("__Crystarion__.helper")

local icons = helper.alternate(
    { icon = "__space-age__/graphics/icons/crusher.png" },
    helper.icons("planet")
)

local entity = table.deepcopy(data.raw["assembling-machine"]["crusher"])
entity.crafting_categories = { "crystarion-crusher-category" }
entity.name = "crystarion-crusher"
entity.crafting_speed = 1.0
entity.energy_usage = "150kW"
entity.minable = { mining_time = 0.2, result = "crystarion-crusher" }
entity.surface_conditions = {}
entity.icons = icons

local item = table.deepcopy(data.raw["item"]["crusher"])
item.name = "crystarion-crusher"
item.place_result = "crystarion-crusher"
item.subgroup = "production-machine"
item.icons = icons

local recipe = {
    type = "recipe",
    name = "crystarion-crusher",
    main_product = "crystarion-crusher",
    ingredients = {
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "iron-plate",      amount = 2 }
    },
    results = {
        { type = "item", name = "crystarion-crusher", amount = 1 }
    },
    energy_required = 2,
    enabled = false,
}

data:extend({ entity, item, recipe })
