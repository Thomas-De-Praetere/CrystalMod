local crushed_crystal = table.deepcopy(data.raw["item"]["iron-plate"])

crushed_crystal.name = "crystarion-crushed-crystal"
crushed_crystal.icon = "__Crystarion__/graphics/items/crushed_crystal.png"
crushed_crystal.icon_size = 64

data:extend({crushed_crystal})