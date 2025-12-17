local helper = require("__Crystarion__.helper")

local function create_resource(size_name, amount, pictures, crystal_color_icon_name)
    local resource_ice = table.deepcopy(data.raw["simple-entity"]["lithium-iceberg-big"])
    resource_ice.name = "crystarion-resource-ice-" .. size_name
    resource_ice.type = "plant"
    resource_ice.growth_ticks = 2 * helper.minutes()
    resource_ice.agricultural_tower_tint = {
        primary = { r = 0.9, g = 1.0, b = 0.9, a = 1.0 },
        secondary = { r = 0.8, g = 0.9, b = 1.0, a = 1.0 },
    }
    resource_ice.minable.results = { { type = "item", name = "ice", amount = amount } }
    resource_ice.autoplace.tile_restriction = { "crystarion-ice-rough", "crystarion-ice-smooth" }
    resource_ice.pictures = pictures
    local crystal_icon = helper.icons(crystal_color_icon_name)
    crystal_icon.tint.a = 0.75
    crystal_icon.scale = 0.3
    resource_ice.icons = {
        { icon = "__space-age__/graphics/icons/ice.png" },
        crystal_icon
    }
    return resource_ice
end

local function create_rod(size_name, crystal_color_icon_name)
    local condensation_rod = table.deepcopy(data.raw["item"]["iron-stick"])
    condensation_rod.name = "crystarion-condensation-rod-" .. size_name
    condensation_rod.plant_result = "crystarion-resource-ice-" .. size_name
    condensation_rod.place_result = "crystarion-resource-ice-" .. size_name
    condensation_rod.stack_size = 10
    local crystal_icon = helper.icons(crystal_color_icon_name)
    crystal_icon.scale = 0.3
    condensation_rod.icons = {
        { icon = "__space-age__/graphics/icons/ice.png" },
        crystal_icon
    }
    return condensation_rod
end

local function create_recipe(size_name, crystal_ingredient)
    return {
        type = "recipe",
        name = "crystarion-condensation-rod-" .. size_name,
        main_product = "crystarion-condensation-rod-" .. size_name,
        ingredients = {
            { type = "item", name = crystal_ingredient, amount = 1 },
            { type = "item", name = "ice",              amount = 1 },
        },
        results = {
            { type = "item", name = "crystarion-condensation-rod-" .. size_name, amount = 1 }
        },
        energy_required = 0.5,
        enabled = false,
    }
end

local resource_green = data.raw["optimized-decorative"]["lithium-iceberg-medium"]
local resource_magenta = data.raw["simple-entity"]["lithium-iceberg-big"]
local resource_crystal = data.raw["simple-entity"]["lithium-iceberg-huge"]

data:extend({

    create_resource("medium", 5, resource_green.pictures, "crystal_green"),
    create_rod("medium", "crystal_green"),
    create_recipe("medium", "crystarion-crystal-green"),

    create_resource("big", 7, resource_magenta.pictures, "crystal_magenta"),
    create_rod("big", "crystal_magenta"),
    create_recipe("big", "crystarion-crystal-magenta"),

    create_resource("huge", 10, resource_crystal.pictures, "crystal"),
    create_rod("huge", "crystal"),
    create_recipe("huge", "crystarion-crystal"),
})
