-- locale recipe crystarion-crush-crystal-ore-adv

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
        { type = "item", name = "crystarion-crushed-crystal", amount = 12 }
    },
    energy_required = 2,
    enabled = false,
}


data:extend({
    crush_crystal_ore,
})
