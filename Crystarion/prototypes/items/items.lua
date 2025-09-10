local crushed_crystal = table.deepcopy(data.raw["item"]["iron-plate"])

crushed_crystal.name = "crystarion-crushed-crystal"
crushed_crystal.icon = "__Crystarion__/graphics/items/crushed_crystal.png"
crushed_crystal.pictures =
{
    { size = 64, filename = "__Crystarion__/graphics/items/crushed_crystal.png",   scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crushed_crystal_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crushed_crystal_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal = table.deepcopy(data.raw["item"]["iron-plate"])

crystal.name = "crystarion-crystal"
crystal.icon = "__Crystarion__/graphics/items/crystal.png"
crystal.pictures =
{
    { size = 64, filename = "__Crystarion__/graphics/items/crystal.png",   scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal_ore = table.deepcopy(data.raw["item"]["iron-ore"])

crystal_ore.name = "crystarion-crystal-ore"
crystal_ore.icon = "__Crystarion__/graphics/items/crystal_ore.png"
crystal_ore.pictures =
{
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_ore.png",   scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_ore_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_ore_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal_slurry = table.deepcopy(data.raw["fluid"]["water"])

crystal_slurry.name = "crystarion-crystal-slurry"
crystal_slurry.icon = "__Crystarion__/graphics/items/slurry.png"
crystal_slurry.base_color = { 0.5, 0.7, 0.8 }
crystal_slurry.flow_color = { 0.7, 1.0, 1.0 }

data:extend({ crushed_crystal, crystal, crystal_ore, crystal_slurry })
