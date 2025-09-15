local crusher = table.deepcopy(data.raw["assembling-machine"]["crusher"])
crusher.crafting_categories = { "crystarion-crusher-category" }
crusher.name = "crystarion-crusher"
crusher.crafting_speed = 1.0

local crusher_item = table.deepcopy(data.raw["item"]["crusher"])
crusher_item.name = "crystarion-crusher"
crusher_item.place_result = "crystarion-crusher"
crusher_item.subgroup = "production-machine"

local crusher_recipe = {
    type = "recipe",
    name = "crystarion-crusher",
    main_product = "crystarion-crusher",
    ingredients = {
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "iron-plate", amount = 5 }
    },
    results = {
        { type = "item", name = "crystarion-crusher", amount = 1 }
    },
    energy_required = 2
}

data:extend({ crusher, crusher_item, crusher_recipe })
