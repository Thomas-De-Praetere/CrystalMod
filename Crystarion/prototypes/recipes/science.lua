-- locale recipe crystarion-crystal-empower-1
-- locale recipe crystarion-crystal-empower-2
-- locale recipe crystarion-crystal-empower-3
-- locale recipe crystarion-science-volatile
-- locale recipe crystarion-science
-- locale recipe crystarion-science-stable

--local crystal_empower_1 = {
--    type = "recipe",
--    name = "crystarion-crystal-empower-1",
--    category = "crystarion-empowerer-category",
--    main_product = "crystarion-crystal-volatile",
--    ingredients = {
--        { type = "item", name = "crystarion-crystal", amount = 15 }
--    },
--    results = {
--        { type = "item", name = "crystarion-crystal-volatile", amount = 15 }
--    },
--    energy_required = 1,
--    enabled = false,
--}
--
--local crystal_empower_2 = {
--    type = "recipe",
--    name = "crystarion-crystal-empower-2",
--    category = "crystarion-empowerer-category",
--    main_product = "crystarion-crystal-unstable",
--    ingredients = {
--        { type = "item", name = "crystarion-crystal",        amount = 30 },
--        { type = "item", name = "crystarion-crystal-yellow", amount = 30 },
--    },
--    results = {
--        { type = "item", name = "crystarion-crystal-unstable", amount = 30 }
--    },
--    energy_required = 2,
--    enabled = false,
--}

local crystal_empower_3 = {
    type = "recipe",
    name = "crystarion-crystal-empower-3",
    category = "crystarion-empowerer-category",
    main_product = "crystarion-crystal-stable",
    ingredients = {
        { type = "item", name = "crystarion-crystal",         amount = 2 },
        { type = "item", name = "crystarion-crystal-yellow",  amount = 2 },
        { type = "item", name = "crystarion-crystal-magenta", amount = 2 },
    },
    results = {
        { type = "item", name = "crystarion-crystal-stable", amount = 1 }
    },
    energy_required = 3,
    enabled = false,
}

local science_unstable = {
    type = "recipe",
    name = "crystarion-science",
    category = "crystarion-energiser-category",
    main_product = "crystarion-science",
    ingredients = {
        --{ type = "item", name = "crystarion-crystal",          amount = 1 },
        --{ type = "item", name = "crystarion-crystal-volatile", amount = 1 },
        --{ type = "item", name = "crystarion-crystal-unstable", amount = 1 },
        { type = "item", name = "crystarion-crystal-stable",   amount = 10 }
    },
    results = {
        { type = "item", name = "crystarion-science", amount = 5 }
    },
    energy_required = 25,
    enabled = false,
}

data:extend({
    --crystal_empower_1,
    --crystal_empower_2,
    crystal_empower_3,
    science_unstable,
})
