local helper = require("__Crystarion__.helper")

local function crush_crystal_color(color)
    return {
        type = "recipe",
        name = "crystarion-crush-crystal-" .. color,
        category = "crystarion-crusher-category",
        main_product = "crystarion-crushed-crystal",
        icons = helper.icon_1_to_1(helper.icons("crystal_" .. color), helper.icons("crushed_crystal")),
        ingredients = {
            { type = "item", name = "crystarion-crystal-" .. color, amount = 3 }
        },
        results = {
            { type = "item", name = "crystarion-crushed-crystal", amount = 1, probability = 0.5 }
        },
        energy_required = 1
    }
end

local function neutralize_color(color, result)
    return {
        type = "recipe",
        name = "crystarion-neutralize-" .. color,
        category = "crystarion-energiser-category",
        main_product = result,
        icons = helper.icon_1_to_1(
                helper.icons("crystal_" .. color),
                { icon = "__base__/graphics/icons/" .. result .. ".png" }
        ),
        ingredients = {
            { type = "item", name = "crystarion-crystal-" .. color, amount = 1 },
            { type = "fluid", name = "water", amount = 5 },
        },
        results = {
            { type = "item", name = result, amount = 2 },
            { type = "fluid", name = "steam", amount = 20, temperature = 165 }
        },
        energy_required = 1
    }
end

local function split_crystal_1(name, to_split, result1, result2)
    return {
        type = "recipe",
        name = "crystarion-split-" .. name,
        category = "crystarion-energiser-category",
        main_product = "crystarion-" .. result1,
        icons = helper.icon_1_to_2(
                helper.icons(helper.replace(to_split, "-", "_")),
                helper.icons(helper.replace(result1, "-", "_")),
                helper.icons(helper.replace(result2, "-", "_"))
        ),
        ingredients = {
            { type = "item", name = "crystarion-" .. to_split, amount = 4 },
            { type = "item", name = "ice", amount = 1 },
        },
        results = {
            { type = "item", name = "crystarion-" .. result1, amount = 4 },
            { type = "item", name = "crystarion-" .. result2, amount = 4 },
            { type = "fluid", name = "water", amount = 20 }
        },
        energy_required = 4
    }
end

local function split_crystal_2(name, to_split, result1, result2)
    return {
        type = "recipe",
        name = "crystarion-split-" .. name,
        category = "crystarion-energiser-category",
        main_product = "crystarion-" .. result1,
        icons = helper.icon_1_to_2(
                helper.icons(helper.replace(to_split, "-", "_")),
                helper.icons(helper.replace(result1, "-", "_")),
                helper.icons(helper.replace(result2, "-", "_"))
        ),
        ingredients = {
            { type = "item", name = "crystarion-" .. to_split, amount = 1 },
            { type = "fluid", name = "water", amount = 5 },
        },
        results = {
            { type = "item", name = "crystarion-" .. result1, amount = 1 },
            { type = "item", name = "crystarion-" .. result2, amount = 1 },
            { type = "fluid", name = "steam", amount = 20, temperature = 165 }
        },
        energy_required = 1
    }
end

local split_green = split_crystal_1(
        "green",
        "crystal",
        "crystal-green",
        "crystal-magenta"
)
local split_magenta = split_crystal_2(
        "magenta",
        "crystal-magenta",
        "crystal-blue",
        "crystal-red"
)

local split_red = split_crystal_1(
        "red",
        "crystal",
        "crystal-red",
        "crystal-cyan"
)
local split_cyan = split_crystal_2(
        "cyan",
        "crystal-cyan",
        "crystal-green",
        "crystal-blue"
)
local split_blue = split_crystal_1(
        "blue",
        "crystal",
        "crystal-blue",
        "crystal-yellow"
)
local split_yellow = split_crystal_2(
        "yellow",
        "crystal-yellow",
        "crystal-green",
        "crystal-red"
)

local crush_crystal_red = crush_crystal_color("red")
local crush_crystal_green = crush_crystal_color("green")
local crush_crystal_blue = crush_crystal_color("blue")

local neutralize_red = neutralize_color("red", "copper-ore")
local neutralize_green = neutralize_color("green", "stone")
local neutralize_blue = neutralize_color("blue", "iron-ore")

local neutralize_crystal = {
    type = "recipe",
    name = "crystarion-neutralize-crystal",
    category = "crystarion-energiser-category",
    main_product = "coal",
    icons = helper.icon_1_to_1(
            helper.icons("crystal"),
            { icon = "__base__/graphics/icons/coal.png" }
    ),
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 },
        { type = "fluid", name = "water", amount = 15 },
    },
    results = {
        { type = "item", name = "coal", amount = 6 },
        { type = "fluid", name = "steam", amount = 60, temperature = 165 }
    },
    energy_required = 3
}

data:extend({
    split_red,
    split_green,
    split_blue,
    split_magenta,
    split_cyan,
    split_yellow,
    crush_crystal_red,
    crush_crystal_green,
    crush_crystal_blue,
    neutralize_red,
    neutralize_green,
    neutralize_blue,
    neutralize_crystal
})
