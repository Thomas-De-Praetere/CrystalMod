local energiser = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
energiser.crafting_categories = { "crystarion-energiser-category" }
energiser.name = "crystarion-energiser"
energiser.crafting_speed = 1.0

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
