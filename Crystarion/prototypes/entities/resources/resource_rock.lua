local resource_ore = table.deepcopy(data.raw["simple-entity"]["big-rock"])
resource_ore.name = "crystarion-resource"
resource_ore.type = "plant"
resource_ore.growth_ticks = 1
resource_ore.agricultural_tower_tint = {
    primary = { r = 0.9, g = 1.0, b = 0.9, a = 1.0 },
    secondary = { r = 0.8, g = 0.9, b = 1.0, a = 1.0 },
}
resource_ore.minable.results = { { type = "item", name = "crystarion-crystal-ore", amount = 4 } }

data:extend({ resource_ore })
