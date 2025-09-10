local crusher = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
crusher.crafting_categories = { "crystarion-crusher-category" }
crusher.name = "crystarion-crusher"
crusher.crafting_speed = 1.0

local crusher_item = table.deepcopy(data.raw["item"]["assembling-machine-1"])
crusher_item.name = "crystarion-crusher"
crusher_item.place_result = "crystarion-crusher"

data:extend({ crusher, crusher_item })
