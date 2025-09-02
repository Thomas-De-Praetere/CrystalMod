local crystal_ore = table.deepcopy(data.raw["item"]["iron-ore"])

crystal_ore.name = "crystarion-crystal-ore"
crystal_ore.icon = "__Crystarion__/graphics/items/crystal_ore.png"
crystal_ore.icon_size = 64

data:extend({crystal_ore})