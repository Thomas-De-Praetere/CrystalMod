local helper = require("__Crystarion__.helper")

local icons = helper.alternate(
    { icon = "__base__/graphics/icons/iron-stick.png" },
    helper.icons.planet
)

local condensation_rod = table.deepcopy(data.raw["item"]["iron-stick"])
condensation_rod.name = "crystarion-condensation-rod"
condensation_rod.plant_result = "crystarion-resource-ice"
condensation_rod.place_result = "crystarion-resource-ice"
condensation_rod.stack_size = 10
condensation_rod.icons = icons

local condensation_rod_recipe = {
    type = "recipe",
    name = "crystarion-condensation-rod",
    main_product = "crystarion-condensation-rod",
    ingredients = {
        { type = "item", name = "crystarion-crystal-green", amount = 1 },
        { type = "item", name = "ice",                      amount = 1 },
    },
    results = {
        { type = "item", name = "crystarion-condensation-rod", amount = 1 }
    },
    energy_required = 0.5
}

local resource_ice = table.deepcopy(data.raw["simple-entity"]["lithium-iceberg-big"])
resource_ice.name = "crystarion-resource-ice"
resource_ice.type = "plant"
resource_ice.growth_ticks = 2 * helper.minutes()
resource_ice.agricultural_tower_tint = {
    primary = { r = 0.9, g = 1.0, b = 0.9, a = 1.0 },
    secondary = { r = 0.8, g = 0.9, b = 1.0, a = 1.0 },
}
resource_ice.minable.results = { { type = "item", name = "ice", amount = 5 } }
resource_ice.autoplace.tile_restriction = { "crystarion-ice-rough", "crystarion-ice-smooth" }

data:extend({ condensation_rod, resource_ice, condensation_rod_recipe })
