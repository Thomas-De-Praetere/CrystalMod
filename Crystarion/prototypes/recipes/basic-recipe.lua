-- locale recipe crystarion-sludge-from-crushed-crystal
-- locale recipe crystarion-crush-crystal-ore
-- locale recipe crystarion-crystal-ore-splinter
-- locale recipe crystarion-crystal-ore-splinter-less
-- locale recipe crystarion-crystalise
-- locale recipe crystarion-battery
-- locale recipe crystarion-revitalise-coal
-- locale recipe crystarion-crystal-ore-splinter-volatile

local helper = require("__Crystarion__.helper")

local sludge_from_crushed_crystal = {
    type = "recipe",
    name = "crystarion-sludge-from-crushed-crystal",
    categories = { "chemistry" },
    icons = helper.icon_1_to_1(helper.icons("crushed_crystal"), helper.icons("crystal_slurry")),
    main_product = "crystarion-crystal-slurry",
    ingredients = {
        { type = "fluid", name = "water", amount = 20 },
        { type = "item", name = "crystarion-crushed-crystal", amount = 15 }
    },
    results = {
        { type = "fluid", name = "crystarion-crystal-slurry", amount = 20 }
    },
    energy_required = 1,
    enabled = false,
}
local crush_crystal_ore = {
    type = "recipe",
    name = "crystarion-crush-crystal-ore",
    categories = { "crystarion-crusher-category" },
    main_product = "crystarion-crushed-crystal",
    ingredients = {
        { type = "item", name = "crystarion-crystal-ore", amount = 4 }
    },
    results = {
        { type = "item", name = "crystarion-crushed-crystal", amount = 4 }
    },
    energy_required = 1,
    enabled = false,
}
local crystal_splinter = {
    type = "recipe",
    name = "crystarion-crystal-ore-splinter",
    categories = { "crystarion-crusher-category" },
    main_product = "crystarion-crystal-splinter",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-splinter", amount = 40 }
    },
    energy_required = 1,
    enabled = false,
}

local crystal_splinter_volatile = {
    type = "recipe",
    name = "crystarion-crystal-ore-splinter-volatile",
    categories = { "crystarion-crusher-category" },
    main_product = "crystarion-crystal-splinter-volatile",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-splinter-volatile", amount = 40 }
    },
    energy_required = 1,
    enabled = false,
}

local crystal_splinter_less = {
    type = "recipe",
    name = "crystarion-crystal-ore-splinter-less",
    categories = { "crystarion-crusher-category" },
    main_product = "crystarion-crystal-splinter",
    ingredients = {
        { type = "item", name = "crystarion-crushed-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-splinter", amount = 10 }
    },
    energy_required = 1,
    enabled = false,
}
local crystalise = {
    type = "recipe",
    name = "crystarion-crystalise",
    categories = { "chemistry", "crystarion-energiser-category" },
    main_product = "crystarion-crystal",
    ingredients = {
        { type = "fluid", name = "crystarion-crystal-slurry", amount = 16 }
    },
    results = {
        { type = "item", name = "crystarion-crystal", amount = 8, independent_probability = 0.75 },
        { type = "item", name = "crystarion-crushed-crystal", amount = 2, independent_probability = 0.25 }
    },
    energy_required = 4,
    enabled = false,
}
local battery = {
    type = "recipe",
    name = "crystarion-battery",
    categories = { "crafting", "crystarion-energiser-category" },
    main_product = "battery",
    icons = helper.alternate(
            { icon = "__base__/graphics/icons/battery.png" },
            helper.icons("planet")
    ),
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 },
        { type = "item", name = "iron-plate", amount = 1 },
        { type = "item", name = "copper-plate", amount = 1 }
    },
    results = {
        { type = "item", name = "battery", amount = 1 }
    },
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
}

local revitalise_coal = {
    type = "recipe",
    name = "crystarion-revitalise-coal",
    categories = { "crystarion-energiser-category" },
    main_product = "wood",
    icons = helper.icon_2_to_1(
            { icon = "__base__/graphics/icons/coal.png" },
            helper.icons("crystal"),
            { icon = "__base__/graphics/icons/wood.png" }
    ),
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 },
        { type = "item", name = "coal", amount = 1 },
        { type = "fluid", name = "water", amount = 5 },
    },
    results = {
        { type = "item", name = "wood", amount = 2 },
        { type = "fluid", name = "steam", amount = 20, temperature = 165 }
    },
    energy_required = 1,
    enabled = false,
}

data:extend({
    sludge_from_crushed_crystal,
    crush_crystal_ore,
    crystalise,
    battery,
    revitalise_coal,
    crystal_splinter,
    crystal_splinter_volatile,
    crystal_splinter_less,
})
