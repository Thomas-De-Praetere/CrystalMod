local crystal_ore = table.deepcopy(data.raw["item"]["iron-ore"])

crystal_ore.name = "crystarion-crystal-ore"

data:extend({crystal_ore})