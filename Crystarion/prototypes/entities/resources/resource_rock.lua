local resource_ore = table.deepcopy(data.raw["simple-entity"]["big-rock"])
resource_ore.name = "crystarion-resource"
resource_ore.type = "plant"
resource_ore.growth_ticks = 1
resource_ore.agricultural_tower_tint = {
    primary = { r = 0.9, g = 1.0, b = 0.9, a = 1.0 },
    secondary = { r = 0.8, g = 0.9, b = 1.0, a = 1.0 },
}
resource_ore.minable.results = { { type = "item", name = "crystarion-crystal-ore", amount = 4 } }
resource_ore.collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } }
resource_ore.selection_box = { { -0.7, -0.7 }, { 0.7, 0.7 } }
local base_decorative_sprite_priority = "extra-high"
local grey_mask = { 0.38, 0.54, 0.81 }
resource_ore.pictures = {
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-01.png",
        priority = base_decorative_sprite_priority,
        width = 89,
        height = 63,
        scale = 0.5,
        shift = { 0.078125, 0.109375 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-02.png",
        priority = base_decorative_sprite_priority,
        width = 77,
        height = 66,
        scale = 0.5,
        shift = { 0.015625, 0.132812 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-03.png",
        priority = base_decorative_sprite_priority,
        width = 92,
        height = 63,
        scale = 0.5,
        shift = { 0.148438, 0.179688 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-04.png",
        priority = base_decorative_sprite_priority,
        width = 91,
        height = 59,
        scale = 0.5,
        shift = { -0.0078125, 0.1875 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-05.png",
        priority = base_decorative_sprite_priority,
        width = 104,
        height = 72,
        scale = 0.5,
        shift = { 0.203125, 0.179688 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-06.png",
        priority = base_decorative_sprite_priority,
        width = 83,
        height = 82,
        scale = 0.5,
        shift = { 0.015625, 0.21875 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-07.png",
        priority = base_decorative_sprite_priority,
        width = 111,
        height = 65,
        scale = 0.5,
        shift = { 0.0625, 0.3125 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-08.png",
        priority = base_decorative_sprite_priority,
        width = 79,
        height = 81,
        scale = 0.5,
        shift = { 0.109375, 0.148438 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-09.png",
        priority = base_decorative_sprite_priority,
        width = 98,
        height = 56,
        scale = 0.5,
        shift = { 0.015625, 0.140625 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-10.png",
        priority = base_decorative_sprite_priority,
        width = 91,
        height = 68,
        scale = 0.5,
        shift = { 0, 0.132812 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-11.png",
        priority = base_decorative_sprite_priority,
        width = 105,
        height = 71,
        scale = 0.5,
        shift = { -0.0234375, 0.125 },
        tint = grey_mask
    },
    {
        filename = "__base__/graphics/decorative/medium-rock/medium-rock-12.png",
        priority = base_decorative_sprite_priority,
        width = 78,
        height = 80,
        scale = 0.5,
        shift = { 0.078125, -0.015625 },
        tint = grey_mask
    }
}

data:extend({ resource_ore })
