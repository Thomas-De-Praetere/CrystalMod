local crushed_crystal = table.deepcopy(data.raw["item"]["iron-plate"])

crushed_crystal.name = "crystarion-crushed-crystal"
crushed_crystal.icon = "__Crystarion__/graphics/items/crushed_crystal/crushed_crystal.png"
crushed_crystal.icon_size = 64

local crystal = table.deepcopy(data.raw["item"]["iron-plate"])

crystal.name = "crystarion-crystal"
crystal.icon = "__Crystarion__/graphics/items/crystal/crystal.png"
crystal.icon_size = 64

local crystal_ore = table.deepcopy(data.raw["item"]["iron-ore"])

crystal_ore.name = "crystarion-crystal-ore"
crystal_ore.icon = "__Crystarion__/graphics/items/crystal_ore/crystal_ore.png"
crystal_ore.icon_size = 64

local crystal_slurry = table.deepcopy(data.raw["fluid"]["water"])

crystal_slurry.name = "crystarion-crystal-slurry"

data:extend({ crushed_crystal, crystal, crystal_ore, crystal_slurry })