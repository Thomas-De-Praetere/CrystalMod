local crusher = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
crusher.crafting_categories = { "crystarion-crusher-category" }
crusher.name = "crystarion-crusher"
crusher.crafting_speed = 1.0

local crusher_item = table.deepcopy(data.raw["item"]["assembling-machine-1"])
crusher_item.name = "crystarion-crusher"
crusher_item.place_result = "crystarion-crusher"

local crystalizer = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
crystalizer.crafting_categories = { "crystarion-crystalizer-category" }
crystalizer.name = "crystarion-crystalizer"
crystalizer.crafting_speed = 1.0

local crystalizer_item = table.deepcopy(data.raw["item"]["assembling-machine-2"])
crystalizer_item.name = "crystarion-crystalizer"
crystalizer_item.place_result = "crystarion-crystalizer"


-- TODO still add rcipe to create the machine
local energiser = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
energiser.crafting_categories = { "crystarion-energiser-category" }
energiser.name = "crystarion-energiser"
energiser.crafting_speed = 1.0

local energiser_item = table.deepcopy(data.raw["item"]["assembling-machine-3"])
energiser_item.name = "crystarion-energiser"
energiser_item.place_result = "crystarion-energiser"

data:extend({ crusher, crusher_item, crystalizer, crystalizer_item, energiser, energiser_item })
