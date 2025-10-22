local entity = table.deepcopy(data.raw["assembling-machine"]["crusher"])
entity.crafting_categories = { "crystarion-crusher-category" }
entity.name = "crystarion-crusher"
entity.crafting_speed = 1.0
entity.minable = { mining_time = 0.2, result = "crystarion-crusher" }
entity.surface_conditions = {}

local item = table.deepcopy(data.raw["item"]["crusher"])
item.name = "crystarion-crusher"
item.place_result = "crystarion-crusher"
item.subgroup = "production-machine"

local recipe = {
    type = "recipe",
    name = "crystarion-crusher",
    main_product = "crystarion-crusher",
    ingredients = {
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "iron-plate", amount = 2 }
    },
    results = {
        { type = "item", name = "crystarion-crusher", amount = 1 }
    },
    energy_required = 2
}

data:extend({ entity, item, recipe })