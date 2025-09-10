local crystalizer = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
crystalizer.crafting_categories = { "crystarion-crystalizer-category" }
crystalizer.name = "crystarion-crystalizer"
crystalizer.crafting_speed = 1.0

local crystalizer_item = table.deepcopy(data.raw["item"]["assembling-machine-2"])
crystalizer_item.name = "crystarion-crystalizer"
crystalizer_item.place_result = "crystarion-crystalizer"

data:extend({ crystalizer, crystalizer_item })
