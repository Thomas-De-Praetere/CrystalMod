-- categories for new machines
local crusher_category = {
    type = "recipe-category",
    name = "crystarion-crusher-category"
}

local crystalizer_category = {
    type = "recipe-category",
    name = "crystarion-crystalizer-category"
}

local energiser_category = {
    type = "recipe-category",
    name = "crystarion-energiser-category"
}
data:extend({ crusher_category, crystalizer_category, energiser_category })

-- new recipes
local sludge_from_crushed_crystal = {
    type = "recipe",
    name = "crystarion-sludge-from-crushed-crystal",
    category = "chemistry",
    main_product = "crystarion-crystal-slurry",
    ingredients = {
        { type = "fluid", name = "water",                      amount = 20 },
        { type = "item",  name = "crystarion-crushed-crystal", amount = 15 }
    },
    results = {
        { type = "fluid", name = "crystarion-crystal-slurry", amount = 20 }
    },
    energy_required = 1
}
local crush_crystal_ore = {
    type = "recipe",
    name = "crystarion-crush-crystal-ore",
    category = "crystarion-crusher-category",
    main_product = "crystarion-crushed-crystal",
    ingredients = {
        { type = "item", name = "crystarion-crystal-ore", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-crushed-crystal", amount = 1 }
    },
    energy_required = 1
}
local crystalise = {
    type = "recipe",
    name = "crystarion-crystalise",
    category = "crystarion-crystalizer-category",
    main_product = "crystarion-crystal",
    ingredients = {
        { type = "fluid", name = "crystarion-crystal-slurry", amount = 16 }
    },
    results = {
        { type = "item", name = "crystarion-crystal",         amount = 8, probability = 0.75 },
        { type = "item", name = "crystarion-crushed-crystal", amount = 2, probability = 0.25 }
    },
    energy_required = 4
}

data:extend({ sludge_from_crushed_crystal, crush_crystal_ore, crystalise })
