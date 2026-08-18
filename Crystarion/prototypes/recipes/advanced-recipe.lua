-- locale recipe crystarion-crush-crystal-ore-adv
-- locale recipe crystarion-condense-wood

local helper = require("__Crystarion__.helper")

local crush_crystal_ore = {
    type = "recipe",
    name = "crystarion-crush-crystal-ore-adv",
    categories = { "crystarion-energiser-category" },
    main_product = "crystarion-crushed-crystal",
    ingredients = {
        { type = "item", name = "crystarion-crystal-ore", amount = 4 },
        { type = "fluid", name = "crystarion-crystal-slurry", amount = 8 }
    },
    results = {
        { type = "item", name = "crystarion-crushed-crystal", amount = 10 }
    },
    energy_required = 2,
    enabled = false,
}

local condense_wood = {
    type = "recipe",
    name = "crystarion-condense-wood",
    categories = { "crystarion-empowerer-category" },
    main_product = "crystarion-crystal",
    ingredients = {
        { type = "item", name = "wood", amount = 8 },
        { type = "item", name = "ice", amount = 10 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-ore", amount = 8 },
        { type = "item", name = "crystarion-crushed-crystal", amount = 4 },
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    energy_required = 4,
    enabled = false,
}


data:extend({
    crush_crystal_ore, condense_wood
})
