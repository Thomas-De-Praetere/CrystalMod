local entity = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
entity.crafting_categories = { "crystarion-crystalizer-category" }
entity.name = "crystarion-crystalizer"
entity.crafting_speed = 1.0
entity.minable = { mining_time = 0.2, result = "crystarion-crystalizer" }

local item = table.deepcopy(data.raw["item"]["chemical-plant"])
item.name = "crystarion-crystalizer"
item.place_result = "crystarion-crystalizer"

local recipe = {
    type = "recipe",
    name = "crystarion-crystalizer",
    main_product = "crystarion-crystalizer",
    ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 2 },
        { type = "item", name = "copper-cable", amount = 1 },
        { type = "item", name = "pipe", amount = 2 }
    },
    results = {
        { type = "item", name = "crystarion-crystalizer", amount = 1 }
    },
    energy_required = 5
}

data:extend({ entity, item, recipe })
