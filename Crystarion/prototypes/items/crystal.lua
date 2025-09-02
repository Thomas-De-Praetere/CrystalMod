local crystal = table.deepcopy(data.raw["item"]["iron-plate"])

crystal.name = "crystarion-crystal"
crystal.icon = "__Crystarion__/graphics/items/crystal.png"
crystal.icon_size = 64

data:extend({crystal})