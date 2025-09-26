local entity = table.deepcopy(data.raw["agricultural-tower"]["agricultural-tower"])
entity.name = "crystarion-collector"
entity.surface_conditions = {}
entity.accepted_seeds = {}
entity.accepted_seeds = {}
entity.crane.speed.arm.turn_rate = 0.004
entity.crane.speed.arm.extension_speed = 0.01
entity.crane.speed.grappler.vertical_turn_rate = 0.006
entity.crane.speed.grappler.horizontal_turn_rate = 0.02
entity.crane.speed.grappler.extension_speed = 0.02

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

--local resource = table.deepcopy(data.raw["plant"]["tree-plant"])
--resource.name = "crystarion-resource"
--resource.minable.results = { { type = "item", name = "crystarion-crystal-ore", amount = 4 } }

local resource = table.deepcopy(data.raw["simple-entity"]["big-rock"])
resource.name = "crystarion-resource"
resource.type = "plant"
resource.growth_ticks = 1
resource.agricultural_tower_tint = {
    primary = { r = 0.9, g = 1.0, b = 0.9, a = 1.0 },
    secondary = { r = 0.8, g = 0.9, b = 1.0, a = 1.0 },
}
resource.minable.results = { { type = "item", name = "crystarion-crystal-ore", amount = 4 } }

--local resource_item = table.deepcopy(data.raw["item"]["tree-seed"])
--resource_item.name = "crystarion-seed"
--resource_item.plant_result = "crystarion-resource"
--resource_item.place_result = "crystarion-resource"

local unit = table.deepcopy(data.raw["unit"]["small-biter"])
unit.name = "crystarion-biter"
unit.dying_trigger_effect = {
    type = "create-entity",
    check_buildability = false,
    entity_name = "crystarion-resource",
}

data:extend({
    entity,
    item,
    recipe,
    resource,
    --resource_item,
    unit,
})
