local crusher = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
crusher.crafting_categories = { "crystarion-crusher-category" }
crusher.name = "crystarion-crusher"

local crystalizer = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
crystalizer.crafting_categories = { "crystarion-crystalizer-category" }
crystalizer.name = "crystarion-crystalizer"

local energiser = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
energiser.crafting_categories = { "crystarion-energiser-category" }
energiser.name = "crystarion-energiser"

data:extend({ crusher, crystalizer, energiser })