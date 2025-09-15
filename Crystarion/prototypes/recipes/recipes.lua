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
        { type = "fluid", name = "water", amount = 20 },
        { type = "item", name = "crystarion-crushed-crystal", amount = 15 }
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
        { type = "item", name = "crystarion-crystal", amount = 8, probability = 0.75 },
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
        { type = "item", name = "crystarion-crystal-green", amount = 1 },
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
        { type = "item", name = "crystarion-crystal-red", amount = 1, }
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
        { type = "item", name = "crystarion-crystal-red", amount = 1 },
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
        { type = "item", name = "crystarion-crystal-blue", amount = 1, }
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
        { type = "item", name = "crystarion-crystal-blue", amount = 1 },
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
        { type = "item", name = "crystarion-crystal-red", amount = 1, }
    },
    energy_required = 1
}

local crush_crystal_red = {
    type = "recipe",
    name = "crystarion-crush-crystal-red",
    category = "crystarion-crusher-category",
    main_product = "crystarion-crushed-crystal",
    icon = "__Crystarion__/graphics/items/recipe-crush-red.png",
    ingredients = {
        { type = "item", name = "crystarion-crystal-red", amount = 3 }
    },
    results = {
        { type = "item", name = "crystarion-crushed-crystal", amount = 1, probability = 0.5 }
    },
    energy_required = 1
}
local crush_crystal_green = {
    type = "recipe",
    name = "crystarion-crush-crystal-green",
    category = "crystarion-crusher-category",
    main_product = "crystarion-crushed-crystal",
    icon = "__Crystarion__/graphics/items/recipe-crush-green.png",
    ingredients = {
        { type = "item", name = "crystarion-crystal-green", amount = 3 }
    },
    results = {
        { type = "item", name = "crystarion-crushed-crystal", amount = 1, probability = 0.5 }
    },
    energy_required = 1
}
local crush_crystal_blue = {
    type = "recipe",
    name = "crystarion-crush-crystal-blue",
    category = "crystarion-crusher-category",
    main_product = "crystarion-crushed-crystal",
    icon = "__Crystarion__/graphics/items/recipe-crush-blue.png",
    ingredients = {
        { type = "item", name = "crystarion-crystal-blue", amount = 3 }
    },
    results = {
        { type = "item", name = "crystarion-crushed-crystal", amount = 1, probability = 0.5 }
    },
    energy_required = 1
}

local neutralize_red = {
    type = "recipe",
    name = "crystarion-neutralize-red",
    category = "crystarion-energiser-category",
    main_product = "copper-ore",
    ingredients = {
        { type = "item", name = "crystarion-crystal-red", amount = 1 }
    },
    results = {
        { type = "item", name = "copper-ore", amount = 1 }
    },
    energy_required = 1
}
local neutralize_green = {
    type = "recipe",
    name = "crystarion-neutralize-green",
    category = "crystarion-energiser-category",
    main_product = "stone",
    ingredients = {
        { type = "item", name = "crystarion-crystal-green", amount = 1 }
    },
    results = {
        { type = "item", name = "stone", amount = 1 }
    },
    energy_required = 1
}
local neutralize_blue = {
    type = "recipe",
    name = "crystarion-neutralize-blue",
    category = "crystarion-energiser-category",
    main_product = "iron-ore",
    ingredients = {
        { type = "item", name = "crystarion-crystal-blue", amount = 1 }
    },
    results = {
        { type = "item", name = "iron-ore", amount = 1 }
    },
    energy_required = 1
}
local neutralize_crystal = {
    type = "recipe",
    name = "crystarion-neutralize-crystal",
    category = "crystarion-energiser-category",
    main_product = "carbon",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "carbon", amount = 3 }
    },
    energy_required = 3
}

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
    neutralize_crystal
})
