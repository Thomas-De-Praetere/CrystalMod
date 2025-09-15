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
    category = "crystarion-crystalizer-category",
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
        { type = "item", name = "crystarion-crystal-green",   amount = 1 },
        { type = "item", name = "crystarion-crystal-magenta", amount = 1 },
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
        { type = "item", name = "crystarion-crystal-blue", amount = 1, },
        { type = "item", name = "crystarion-crystal-red",  amount = 1, }
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
        { type = "item", name = "crystarion-crystal-red",  amount = 1 },
        { type = "item", name = "crystarion-crystal-cyan", amount = 1 }
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
        { type = "item", name = "crystarion-crystal-green", amount = 1, },
        { type = "item", name = "crystarion-crystal-blue",  amount = 1, }
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
        { type = "item", name = "crystarion-crystal-blue",   amount = 1 },
        { type = "item", name = "crystarion-crystal-yellow", amount = 1 }
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
        { type = "item", name = "crystarion-crystal-green", amount = 1, },
        { type = "item", name = "crystarion-crystal-red",   amount = 1, }
    },
    energy_required = 1
}

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

local crush_crystal_red = crush_crystal_color("red")
local crush_crystal_green = crush_crystal_color("green")
local crush_crystal_blue = crush_crystal_color("blue")

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
            { type = "item", name = result, amount = 1 }
        },
        energy_required = 1
    }
end

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
        { type = "item", name = "coal", amount = 3 }
    },
    energy_required = 3
}
function slurry_from_color(name, in_amount, out_amount)
    return {
        type = "recipe",
        name = "crystarion-slurry-from-" .. name .. "-crystal",
        category = "crystarion-crystalizer-category",
        main_product = "crystarion-" .. name .. "-slurry",
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

local red_slurry = slurry_from_color("red", 5, 20)
local green_slurry = slurry_from_color("green", 10, 20)
local blue_slurry = slurry_from_color("blue", 10, 20)

local mix_yellow = {
    type = "recipe",
    name = "crystarion-mix-yellow",
    category = "chemistry",
    main_product = "crystarion-yellow-mixture",
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
    ingredients = {
        { type = "fluid", name = "crystarion-blue-slurry", amount = 5 },
        { type = "fluid", name = "crystarion-red-slurry",  amount = 5 }
    },
    results = {
        { type = "fluid", name = "crystarion-purple-mixture", amount = 5 }
    },
    energy_required = 1
}
function denaturize(name, input, output)
    return {
        type = "recipe",
        name = "crystarion-denaturize-" .. name,
        category = "crystarion-energiser-category",
        main_product = output,
        ingredients = {
            { type = "fluid", name = input, amount = 20 },
        },
        results = {
            { type = "fluid", name = output, amount = 20 }
        },
        energy_required = 1
    }
end

local denaturize_yellow = denaturize("yellow", "crystarion-yellow-mixture", "light-oil")
local denaturize_purple = denaturize("purple", "crystarion-purple-mixture", "petroleum-gas")
local denaturize_red = denaturize("red", "crystarion-red-slurry", "heavy-oil")
local denaturize_green = denaturize("green", "crystarion-green-slurry", "lubricant")

data:extend({
    sludge_from_crushed_crystal,
    crush_crystal_ore,
    crystalise,
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
    neutralize_crystal,
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
