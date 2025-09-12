local crusher = table.deepcopy(data.raw["assembling-machine"]["crusher"])
crusher.crafting_categories = { "crystarion-crusher-category" }
crusher.name = "crystarion-crusher"
crusher.crafting_speed = 1.0

local crusher_item = table.deepcopy(data.raw["item"]["crusher"])
crusher_item.name = "crystarion-crusher"
crusher_item.place_result = "crystarion-crusher"
crusher_item.subgroup = "production-machine"

data:extend({ crusher, crusher_item })
