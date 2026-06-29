-- locale recipe crystarion-slurry-from-red-crystal
-- locale recipe crystarion-slurry-from-green-crystal
-- locale recipe crystarion-slurry-from-blue-crystal
-- locale recipe crystarion-denaturize-yellow
-- locale recipe crystarion-denaturize-purple
-- locale recipe crystarion-denaturize-red
-- locale recipe crystarion-denaturize-green
-- locale recipe crystarion-mix-yellow
-- locale recipe crystarion-mix-purple
-- locale recipe crystarion-crystalise-purple
-- locale recipe crystarion-create-slurry


local helper = require("__Crystarion__.helper")
local function slurry_from_color(name, in_amount, out_amount)
    return {
        type = "recipe",
        name = "crystarion-slurry-from-" .. name .. "-crystal",
        category = "chemistry",
        main_product = "crystarion-" .. name .. "-slurry",
        icons = helper.icon_1_to_1(helper.icons("crystal_" .. name), helper.icons(name .. "_slurry")),
        ingredients = {
            { type = "item", name = "crystarion-crystal-" .. name, amount = in_amount },
            { type = "fluid", name = "water", amount = 20 }
        },
        results = {
            { type = "fluid", name = "crystarion-" .. name .. "-slurry", amount = out_amount }
        },
        energy_required = 1,
        enabled = false,
    }
end

local function denaturize(name, input, input_icon, output)
    return {
        type = "recipe",
        name = "crystarion-denaturize-" .. name,
        category = "crystarion-energiser-category",
        main_product = output,
        icons = helper.icon_1_to_1(
                helper.icons(input_icon),
                { icon = "__base__/graphics/icons/fluid/" .. output .. ".png" }
        ),
        ingredients = {
            { type = "fluid", name = input, amount = 20 },
        },
        results = {
            { type = "fluid", name = output, amount = 20 },
            { type = "item", name = "crystarion-crystal-splinter-volatile", amount = 5 }
        },
        energy_required = 1,
        enabled = false,
    }
end

local red_slurry = slurry_from_color("red", 5, 30)
local green_slurry = slurry_from_color("green", 10, 20)
local blue_slurry = slurry_from_color("blue", 10, 20)

local create_slurry = {
    type = "recipe",
    name = "crystarion-create-slurry",
    category = "oil-processing",
    main_product = "crystarion-red-slurry",
    icons = helper.icon_3_to_3(
            helper.icons("crystal_red"),
            helper.icons("crystal_green"),
            helper.icons("crystal_blue"),
            helper.icons("red_slurry"),
            helper.icons("green_slurry"),
            helper.icons("blue_slurry")
    ),
    ingredients = {
        { type = "item", name = "crystarion-crystal-red", amount = 1 },
        { type = "item", name = "crystarion-crystal-green", amount = 1 },
        { type = "item", name = "crystarion-crystal-blue", amount = 1 },
        { type = "fluid", name = "water", amount = 60 },
    },
    results = {
        { type = "fluid", name = "crystarion-red-slurry", amount = 30 },
        { type = "fluid", name = "crystarion-green-slurry", amount = 30 },
        { type = "fluid", name = "crystarion-blue-slurry", amount = 30 },
    },
    energy_required = 6,
    enabled = false,
}

local mix_yellow = {
    type = "recipe",
    name = "crystarion-mix-yellow",
    category = "chemistry",
    main_product = "crystarion-yellow-mixture",
    icons = helper.icon_2_to_1(helper.icons("green_slurry"), helper.icons("red_slurry"), helper.icons("yellow_mixture")),
    ingredients = {
        { type = "fluid", name = "crystarion-green-slurry", amount = 5 },
        { type = "fluid", name = "crystarion-red-slurry", amount = 5 }
    },
    results = {
        { type = "fluid", name = "crystarion-yellow-mixture", amount = 5 }
    },
    energy_required = 1,
    enabled = false,
}
local mix_purple = {
    type = "recipe",
    name = "crystarion-mix-purple",
    category = "chemistry",
    main_product = "crystarion-purple-mixture",
    icons = helper.icon_2_to_1(helper.icons("blue_slurry"), helper.icons("red_slurry"), helper.icons("purple_mixture")),
    ingredients = {
        { type = "fluid", name = "crystarion-blue-slurry", amount = 5 },
        { type = "fluid", name = "crystarion-red-slurry", amount = 5 }
    },
    results = {
        { type = "fluid", name = "crystarion-purple-mixture", amount = 5 }
    },
    energy_required = 1,
    enabled = false,
}

local crystalise_purple = {
    type = "recipe",
    name = "crystarion-crystalise-purple",
    category = "chemistry",
    main_product = "crystarion-crystal-magenta",
    ingredients = {
        { type = "fluid", name = "crystarion-purple-mixture", amount = 20 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-magenta", amount = 4 },
        { type = "fluid", name = "steam", amount = 80, temperature = 500 },
        { type = "fluid", name = "petroleum-gas", amount = 20 },
    },
    energy_required = 4,
    enabled = false,
}

local denaturize_yellow = denaturize("yellow", "crystarion-yellow-mixture", "yellow_mixture", "light-oil")
local denaturize_purple = denaturize("purple", "crystarion-purple-mixture", "purple_mixture", "petroleum-gas")
local denaturize_red = denaturize("red", "crystarion-red-slurry", "red_slurry", "heavy-oil")
local denaturize_green = denaturize("green", "crystarion-green-slurry", "green_slurry", "lubricant")
local denaturize_blue = denaturize("blue", "crystarion-blue-slurry", "blue_slurry", "sulfuric-acid")

data:extend({
    mix_yellow,
    mix_purple,
    denaturize_yellow,
    denaturize_purple,
    denaturize_blue,
    denaturize_red,
    denaturize_green,
    crystalise_purple,
    red_slurry,
    create_slurry
})
