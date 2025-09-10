local energiser = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
energiser.crafting_categories = { "crystarion-energiser-category" }
energiser.name = "crystarion-energiser"
energiser.crafting_speed = 1.0

local energiser_item = table.deepcopy(data.raw["item"]["assembling-machine-3"])
energiser_item.name = "crystarion-energiser"
energiser_item.place_result = "crystarion-energiser"

data:extend({ energiser, energiser_item })
