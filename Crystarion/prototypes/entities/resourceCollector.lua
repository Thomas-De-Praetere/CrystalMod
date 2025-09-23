local entity = table.deepcopy(data.raw["agricultural-tower"]["agricultural-tower"])
entity.name = "crystarion-collector"
entity.surface_conditions = {}
entity.accepted_seeds = { "crystarion-seed" }

local item = table.deepcopy(data.raw["item"]["agricultural-tower"])
item.name = "crystarion-collector"
item.place_result = "crystarion-collector"

local recipe = {
    type = "recipe",
    name = "crystarion-collector",
    main_product = "crystarion-collector",
    ingredients = {
        { type = "item", name = "iron-plate",         amount = 6 },
        { type = "item", name = "copper-plate",       amount = 3 },
        { type = "item", name = "electronic-circuit", amount = 3 },
        { type = "item", name = "battery",            amount = 2 },
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-collector", amount = 1 }
    },
    energy_required = 5
}

local resource = table.deepcopy(data.raw["plant"]["tree-plant"])
resource.name = "crystarion-resource"
resource.minable.results = { { type = "item", name = "crystarion-crystal-ore", amount = 4 } }


local resource_item = table.deepcopy(data.raw["item"]["tree-seed"])
resource_item.name = "crystarion-seed"
resource_item.plant_result = "crystarion-resource"
resource_item.place_result = "crystarion-resource"

data:extend({ entity, item, recipe, resource, resource_item })
