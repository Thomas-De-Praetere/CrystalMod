local generator = table.deepcopy(data.raw["generator"]["steam-engine"])
generator.name = "crystarion-generator"
generator.minable = { mining_time = 0.3, result = "crystarion-generator" }
generator.fluid_usage_per_tick = 10
generator.maximum_temperature = 200
generator.fluid_box.volume = 400
generator.fluid_box.filter = "crystarion-plasma"
generator.fluid_box.minimum_temperature = 200
generator.energy_source = {
    type = "electric",
    usage_priority = "secondary-output"
}
generator.scale_fluid_usage = true
generator.effectivity = 1.0

local generator_item = table.deepcopy(data.raw["item"]["steam-engine"])
generator_item.name = "crystarion-generator"
generator_item.place_result = "crystarion-generator"

local generator_recipe = {
    type = "recipe",
    name = "crystarion-generator",
    main_product = "crystarion-generator",
    ingredients = {
        { type = "item", name = "iron-plate", amount = 10 },
        { type = "item", name = "copper-plate", amount = 3 },
        { type = "item", name = "copper-cable", amount = 2 },
        { type = "item", name = "crystarion-crystal", amount = 2 }
    },
    results = {
        { type = "item", name = "crystarion-generator", amount = 1 }
    },
    energy_required = 2
}

data:extend({ generator, generator_item, generator_recipe })

-- max_power = (min(fluid_max_temp, maximum_temperature) - fluid_default_temp)
-- × fluid_usage_per_tick
-- × fluid_heat_capacity
-- × effectivity
