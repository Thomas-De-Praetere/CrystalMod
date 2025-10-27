local sludge_from_crushed_crystal = {
    type = "recipe",
    name = "crystarion-sludge-from-crushed-crystal",
    category = "chemistry",
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
    category = "chemistry",
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
local battery = {
    type = "recipe",
    name = "crystarion-battery",
    main_product = "battery",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 },
        { type = "item", name = "iron-plate", amount = 1 },
        { type = "item", name = "copper-plate", amount = 1 }
    },
    results = {
        { type = "item", name = "battery", amount = 1 }
    },
    energy_required = 4
}
local crystal_melt = {
    type = "recipe",
    name = "crystarion-ice-melting",
    icon = "__space-age__/graphics/icons/fluid/ice-melting.png",
    category = "crystarion-energiser-category",
    ingredients = { { type = "item", name = "ice", amount = 1 } },
    energy_required = 1,
    results = { { type = "fluid", name = "water", amount = 20 } },
    allow_productivity = true,
    allow_decomposition = false,
    crafting_machine_tint = {
        primary = { r = 0.433, g = 0.773, b = 1.000, a = 1.000 }, -- #6ec5ffff
        secondary = { r = 0.591, g = 0.856, b = 1.000, a = 1.000 }, -- #96daffff
        tertiary = { r = 0.381, g = 0.428, b = 0.436, a = 0.502 }, -- #616d6f80
        quaternary = { r = 0.499, g = 0.797, b = 0.793, a = 0.733 }, -- #7fcbcabb
    },
}
local crystal_panel = {
    type = "recipe",
    name = "crystarion-solar-panel",
    energy_required = 10,
    enabled = true,
    ingredients = {
        { type = "item", name = "iron-plate", amount = 3 },
        { type = "item", name = "electronic-circuit", amount = 1 },
        { type = "item", name = "copper-plate", amount = 1 },
        { type = "item", name = "crystarion-crystal", amount = 2 },
        { type = "item", name = "crystarion-crystal-red", amount = 5 },
        { type = "item", name = "crystarion-crystal-blue", amount = 5 },
    },
    results = { { type = "item", name = "solar-panel", amount = 1 } }
}

local crystal_plant = {
    type = "recipe",
    name = "chemical-plant",
    energy_required = 5,
    enabled = true,
    ingredients = {
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "pipe", amount = 5 },
        { type = "item", name = "crystarion-crystal", amount = 2 },
        { type = "item", name = "crystarion-crystal-blue", amount = 15 },
    },
    results = { { type = "item", name = "chemical-plant", amount = 1 } }
}

data:extend({
    sludge_from_crushed_crystal,
    crush_crystal_ore,
    crystalise,
    battery,
    crystal_melt,
    crystal_panel,
    crystal_plant,
})
