local entity = table.deepcopy(data.raw["burner-generator"]["burner-generator"])
entity.name = "crystarion-naturizer"
entity.minable = { mining_time = 0.2, result = "crystarion-naturizer" }

local item = table.deepcopy(data.raw["item"]["burner-generator"])
item.name = "crystarion-naturizer"
item.place_result = "crystarion-naturizer"

local recipe = {
    type = "recipe",
    name = "crystarion-naturizer",
    main_product = "crystarion-naturizer",
    ingredients = {
        { type = "item", name = "iron-plate",         amount = 3 },
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-naturizer", amount = 1 }
    },
    energy_required = 5
}

data:extend({ entity, item, recipe })
