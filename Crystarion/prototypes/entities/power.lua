local entity = table.deepcopy(data.raw["radar"]["radar"])

entity.name = "crystarion-lure"
entity.energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {
        crystarion_resonance = 100
    }
}
entity.minable = { mining_time = 0.2, result = "crystarion-crusher" }

local item = table.deepcopy(data.raw["item"]["crusher"])
item.name = "crystarion-lure"
item.place_result = "crystarion-lure"
item.subgroup = "production-machine"

local recipe = {
    type = "recipe",
    name = "crystarion-lure",
    main_product = "crystarion-lure",
    ingredients = {
        { type = "item", name = "copper-plate", amount = 2 },
        { type = "item", name = "copper-cable", amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 2 },
        { type = "item", name = "battery", amount = 4 },
    },
    results = {
        { type = "item", name = "crystarion-lure", amount = 1 }
    },
    energy_required = 2
}

data:extend({ item, entity, recipe })