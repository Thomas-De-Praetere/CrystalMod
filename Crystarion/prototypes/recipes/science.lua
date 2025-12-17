local crystal_empower_1 = {
    type = "recipe",
    name = "crystarion-crystal-empower-1",
    category = "crystarion-empowerer-category",
    main_product = "crystarion-crystal-volatile",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 15 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-volatile", amount = 15 }
    },
    energy_required = 1
}

local crystal_empower_2 = {
    type = "recipe",
    name = "crystarion-crystal-empower-2",
    category = "crystarion-empowerer-category",
    main_product = "crystarion-crystal-unstable",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 30 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-unstable", amount = 30 }
    },
    energy_required = 2
}

local crystal_empower_3 = {
    type = "recipe",
    name = "crystarion-crystal-empower-3",
    category = "crystarion-empowerer-category",
    main_product = "crystarion-crystal-stable",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 60 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-stable", amount = 60 }
    },
    energy_required = 5
}

local science_volatile = {
    type = "recipe",
    name = "crystarion-science-volatile",
    main_product = "crystarion-science-volatile",
    ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "crystarion-crystal-volatile", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-science-volatile", amount = 1 }
    },
    energy_required = 5,
    enabled = false,
}
local science_unstable = {
    type = "recipe",
    name = "crystarion-science-unstable",
    main_product = "crystarion-science-unstable",
    ingredients = {
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "crystarion-crystal-unstable", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-science-unstable", amount = 1 }
    },
    energy_required = 5,
    enabled = false,
}
local science_stable = {
    type = "recipe",
    name = "crystarion-science-stable",
    main_product = "crystarion-science-stable",
    ingredients = {
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "crystarion-crystal-stable", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-science-stable", amount = 1 }
    },
    energy_required = 5,
    enabled = false,
}

data:extend({
    crystal_empower_1,
    crystal_empower_2,
    crystal_empower_3,
    science_volatile,
    science_unstable,
    science_stable,
})