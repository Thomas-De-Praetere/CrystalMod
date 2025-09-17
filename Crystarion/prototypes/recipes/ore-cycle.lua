function crush_crystal_color(color)
    return {
        type = "recipe",
        name = "crystarion-crush-crystal-" .. color,
        category = "crystarion-crusher-category",
        main_product = "crystarion-crushed-crystal",
        icon = "__Crystarion__/graphics/items/recipe-crush-" .. color .. ".png",
        ingredients = {
            { type = "item", name = "crystarion-crystal-" .. color, amount = 3 }
        },
        results = {
            { type = "item", name = "crystarion-crushed-crystal", amount = 1, probability = 0.5 }
        },
        energy_required = 1
    }
end

function neutralize_color(color, result)
    return {
        type = "recipe",
        name = "crystarion-neutralize-" .. color,
        category = "crystarion-energiser-category",
        main_product = result,
        ingredients = {
            { type = "item", name = "crystarion-crystal-" .. color, amount = 1 }
        },
        results = {
            { type = "item",  name = result,              amount = 1 },
            { type = "fluid", name = "crystarion-plasma", amount = 100, temperature = 1600 }
        },
        energy_required = 1
    }
end

local split_green = {
    type = "recipe",
    name = "crystarion-split-green",
    category = "crystarion-energiser-category",
    main_product = "crystarion-crystal-green",
    icon = "__Crystarion__/graphics/items/recipe-split-green.png",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item",  name = "crystarion-crystal-green",   amount = 1 },
        { type = "item",  name = "crystarion-crystal-magenta", amount = 1 },
        { type = "fluid", name = "crystarion-plasma",          amount = 100, temperature = 1600 }
    },
    energy_required = 1
}
local split_magenta = {
    type = "recipe",
    name = "crystarion-split-magenta",
    category = "crystarion-energiser-category",
    main_product = "crystarion-crystal-blue",
    icon = "__Crystarion__/graphics/items/recipe-split-magenta.png",
    ingredients = {
        { type = "item", name = "crystarion-crystal-magenta", amount = 1 }
    },
    results = {
        { type = "item",  name = "crystarion-crystal-blue", amount = 1 },
        { type = "item",  name = "crystarion-crystal-red",  amount = 1 },
        { type = "fluid", name = "crystarion-plasma",       amount = 100, temperature = 1600 }
    },
    energy_required = 1
}
local split_red = {
    type = "recipe",
    name = "crystarion-split-red",
    category = "crystarion-energiser-category",
    main_product = "crystarion-crystal-red",
    icon = "__Crystarion__/graphics/items/recipe-split-red.png",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item",  name = "crystarion-crystal-red",  amount = 1 },
        { type = "item",  name = "crystarion-crystal-cyan", amount = 1 },
        { type = "fluid", name = "crystarion-plasma",       amount = 100,  temperature = 1600 }
    },
    energy_required = 1
}
local split_cyan = {
    type = "recipe",
    name = "crystarion-split-cyan",
    category = "crystarion-energiser-category",
    main_product = "crystarion-crystal-green",
    icon = "__Crystarion__/graphics/items/recipe-split-cyan.png",
    ingredients = {
        { type = "item", name = "crystarion-crystal-cyan", amount = 1 }
    },
    results = {
        { type = "item",  name = "crystarion-crystal-green", amount = 1 },
        { type = "item",  name = "crystarion-crystal-blue",  amount = 1 },
        { type = "fluid", name = "crystarion-plasma",        amount = 100,  temperature = 1600 }
    },
    energy_required = 1
}
local split_blue = {
    type = "recipe",
    name = "crystarion-split-blue",
    category = "crystarion-energiser-category",
    main_product = "crystarion-crystal-blue",
    icon = "__Crystarion__/graphics/items/recipe-split-blue.png",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item",  name = "crystarion-crystal-blue",   amount = 1 },
        { type = "item",  name = "crystarion-crystal-yellow", amount = 1 },
        { type = "fluid", name = "crystarion-plasma",         amount = 100,  temperature = 1600 }
    },
    energy_required = 1
}
local split_yellow = {
    type = "recipe",
    name = "crystarion-split-yellow",
    category = "crystarion-energiser-category",
    main_product = "crystarion-crystal-green",
    icon = "__Crystarion__/graphics/items/recipe-split-yellow.png",
    ingredients = {
        { type = "item", name = "crystarion-crystal-yellow", amount = 1 }
    },
    results = {
        { type = "item",  name = "crystarion-crystal-green", amount = 1, },
        { type = "item",  name = "crystarion-crystal-red",   amount = 1, },
        { type = "fluid", name = "crystarion-plasma",        amount = 100, temperature = 1600 }
    },
    energy_required = 1
}

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
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item",  name = "coal",              amount = 3 },
        { type = "fluid", name = "crystarion-plasma", amount = 300, temperature = 1600 }
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
