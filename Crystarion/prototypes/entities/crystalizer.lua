local crystalizer = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
crystalizer.crafting_categories = { "crystarion-crystalizer-category" }
crystalizer.name = "crystarion-crystalizer"
crystalizer.crafting_speed = 1.0
crystalizer.minable = { mining_time = 0.2, result = "crystarion-crystalizer" }

local crystalizer_item = table.deepcopy(data.raw["item"]["chemical-plant"])
crystalizer_item.name = "crystarion-crystalizer"
crystalizer_item.place_result = "crystarion-crystalizer"

local crystalizer_recipe = {
    type = "recipe",
    name = "crystarion-crystalizer",
    main_product = "crystarion-crystalizer",
    ingredients = {
        { type = "item", name = "iron-plate",         amount = 3 },
        { type = "item", name = "iron-gear-wheel",    amount = 3 },
        { type = "item", name = "copper-cable",       amount = 2 },
        { type = "item", name = "electronic-circuit", amount = 3 },
        { type = "item", name = "battery",            amount = 2 },
        { type = "item", name = "pipe",               amount = 5 }
    },
    results = {
        { type = "item", name = "crystarion-crystalizer", amount = 1 }
    },
    energy_required = 5
}

data:extend({ crystalizer, crystalizer_item, crystalizer_recipe })
