local helper = require("__Crystarion__.helper")
function slurry_from_color(name, in_amount, out_amount)
    return {
        type = "recipe",
        name = "crystarion-slurry-from-" .. name .. "-crystal",
        category = "chemistry",
        main_product = "crystarion-" .. name .. "-slurry",
        icons = helper.icon_1_to_1(helper.icons["crystal_" .. name], helper.icons[name .. "_slurry"]),
        ingredients = {
            { type = "item",  name = "crystarion-crystal-" .. name, amount = in_amount },
            { type = "fluid", name = "water",                       amount = 20 }
        },
        results = {
            { type = "fluid", name = "crystarion-" .. name .. "-slurry", amount = out_amount }
        },
        energy_required = 1
    }
end

function denaturize(name, input, input_icon, output)
    return {
        type = "recipe",
        name = "crystarion-denaturize-" .. name,
        category = "crystarion-energiser-category",
        main_product = output,
        icons = helper.icon_1_to_1(
            helper.icons[input_icon],
            { icon = "__base__/graphics/icons/fluid/" .. output .. ".png" }
        ),
        ingredients = {
            { type = "fluid", name = input,   amount = 20 },
            { type = "fluid", name = "water", amount = 20 },
        },
        results = {
            { type = "fluid", name = output,  amount = 20 },
            { type = "fluid", name = "steam", amount = 80, temperature = 165 }
        },
        energy_required = 1
    }
end

local red_slurry = slurry_from_color("red", 5, 20)
local green_slurry = slurry_from_color("green", 10, 20)
local blue_slurry = slurry_from_color("blue", 10, 20)

local mix_yellow = {
    type = "recipe",
    name = "crystarion-mix-yellow",
    category = "chemistry",
    main_product = "crystarion-yellow-mixture",
    icons = helper.icon_2_to_1(helper.icons.green_slurry, helper.icons.red_slurry, helper.icons.yellow_mixture),
    ingredients = {
        { type = "fluid", name = "crystarion-green-slurry", amount = 5 },
        { type = "fluid", name = "crystarion-red-slurry",   amount = 5 }
    },
    results = {
        { type = "fluid", name = "crystarion-yellow-mixture", amount = 5 }
    },
    energy_required = 1
}
local mix_purple = {
    type = "recipe",
    name = "crystarion-mix-purple",
    category = "chemistry",
    main_product = "crystarion-purple-mixture",
    icons = helper.icon_2_to_1(helper.icons.blue_slurry, helper.icons.red_slurry, helper.icons.purple_mixture),
    ingredients = {
        { type = "fluid", name = "crystarion-blue-slurry", amount = 5 },
        { type = "fluid", name = "crystarion-red-slurry",  amount = 5 }
    },
    results = {
        { type = "fluid", name = "crystarion-purple-mixture", amount = 5 }
    },
    energy_required = 1
}

local denaturize_yellow = denaturize("yellow", "crystarion-yellow-mixture", "yellow_mixture", "light-oil")
local denaturize_purple = denaturize("purple", "crystarion-purple-mixture", "purple_mixture", "petroleum-gas")
local denaturize_red = denaturize("red", "crystarion-red-slurry", "red_slurry", "heavy-oil")
local denaturize_green = denaturize("green", "crystarion-green-slurry", "green_slurry", "lubricant")

data:extend({
    red_slurry,
    green_slurry,
    blue_slurry,
    mix_yellow,
    mix_purple,
    denaturize_yellow,
    denaturize_purple,
    denaturize_red,
    denaturize_green
})
