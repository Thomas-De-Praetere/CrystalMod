local helper = require("__Crystarion__.helper")

local icons = helper.alternate(
    { icon = "__space-age__/graphics/icons/agricultural-tower.png" },
    helper.icons("planet")
)

local entity = table.deepcopy(data.raw["agricultural-tower"]["agricultural-tower"])
entity.name = "crystarion-collector"
entity.surface_conditions = {}
entity.accepted_seeds = {
    "crystarion-condensation-rod-medium",
    "crystarion-condensation-rod-big",
    "crystarion-condensation-rod-huge"
}
entity.crane.speed.arm.turn_rate = 0.004
entity.crane.speed.arm.extension_speed = 0.01
entity.crane.speed.grappler.vertical_turn_rate = 0.006
entity.crane.speed.grappler.horizontal_turn_rate = 0.02
entity.crane.speed.grappler.extension_speed = 0.02
entity.minable = { mining_time = 0.2, result = "crystarion-collector" }
entity.icons = icons
entity.growth_grid_tile_size = 2
entity.growth_area_radius = 0.7
entity.radius = 6

local item = table.deepcopy(data.raw["item"]["agricultural-tower"])
item.name = "crystarion-collector"
item.place_result = "crystarion-collector"
item.icons = icons

local recipe = {
    type = "recipe",
    name = "crystarion-collector",
    main_product = "crystarion-collector",
    ingredients = {
        { type = "item", name = "iron-plate",         amount = 3 },
        { type = "item", name = "copper-plate",       amount = 1 },
        { type = "item", name = "electronic-circuit", amount = 2 },
        { type = "item", name = "battery",            amount = 2 },
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-collector", amount = 1 }
    },
    energy_required = 5
}

data:extend({
    entity,
    item,
    recipe,
})
