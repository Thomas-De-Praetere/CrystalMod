local seconds = 60
local minutes = 60 * seconds

local crystal_rock = table.deepcopy(data.raw["simple-entity"]["big-rock"])
crystal_rock.name = "crystarion-rock"
crystal_rock.minable.results = {
    {
        type = "item",
        name = "crystarion-crushed-crystal",
        amount_min = 25,
        amount_max = 50
    },
    {
        type = "item",
        name = "crystarion-crystal",
        amount_min = 2,
        amount_max = 5
    },
    {
        type = "item",
        name = "crystarion-crystal-red",
        amount_min = 5,
        amount_max = 10
    },
    {
        type = "item",
        name = "crystarion-crystal-green",
        amount_min = 5,
        amount_max = 10
    },
    {
        type = "item",
        name = "crystarion-crystal-blue",
        amount_min = 12,
        amount_max = 25
    }
}

local ice_starter = table.deepcopy(data.raw["simple-entity"]["medium-rock"])
ice_starter.name = "crystarion-rock-ice"
ice_starter.minable.results = {
    {
        type = "item",
        name = "ice",
        amount_min = 25,
        amount_max = 50
    },
    {
        type = "plant",
        name = "crystarion-resource-ice-starter",
        amount_min = 25,
        amount_max = 50
    },

}

local resource_ore = table.deepcopy(data.raw["simple-entity"]["big-rock"])
resource_ore.name = "crystarion-resource"
resource_ore.type = "plant"
resource_ore.growth_ticks = 1
resource_ore.agricultural_tower_tint = {
    primary = { r = 0.9, g = 1.0, b = 0.9, a = 1.0 },
    secondary = { r = 0.8, g = 0.9, b = 1.0, a = 1.0 },
}
resource_ore.minable.results = { { type = "item", name = "crystarion-crystal-ore", amount = 4 } }


local resource_ice_starter = table.deepcopy(data.raw["item"]["tree-seed"])
resource_ice_starter.name = "crystarion-resource-ice-starter"
resource_ice_starter.plant_result = "crystarion-resource-ice"

local resource_ice = table.deepcopy(data.raw["simple-entity"]["medium-rock"])
resource_ice.name = "crystarion-resource-ice"
resource_ice.type = "plant"
resource_ice.growth_ticks = 2 * minutes
resource_ice.agricultural_tower_tint = {
    primary = { r = 0.9, g = 1.0, b = 0.9, a = 1.0 },
    secondary = { r = 0.8, g = 0.9, b = 1.0, a = 1.0 },
}
resource_ice.minable.results = { { type = "item", name = "ice", amount = 4 } }


data:extend({
    crystal_rock,
    resource_ore,
    resource_ice
})
