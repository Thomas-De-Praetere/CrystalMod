local crystalizer = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
crystalizer.crafting_categories = { "crystarion-crystalizer-category" }
crystalizer.name = "crystarion-crystalizer"
crystalizer.crafting_speed = 1.0

local crystalizer_item = table.deepcopy(data.raw["item"]["chemical-plant"])
crystalizer_item.name = "crystarion-crystalizer"
crystalizer_item.place_result = "crystarion-crystalizer"

data:extend({ crystalizer, crystalizer_item })
