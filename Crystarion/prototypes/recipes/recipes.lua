-- categories for new machines
local crusher_category = {
    type = "recipe-category",
    name = "crystarion-crusher-category"
}

local energiser_category = {
    type = "recipe-category",
    name = "crystarion-energiser-category"
}

local naturizer_category = {
    type = "recipe-category",
    name = "crystarion-naturizer-category"
}

local smelter_category = {
    type = "recipe-category",
    name = "crystarion-smelter-category"
}

local empowerer_category = {
    type = "recipe-category",
    name = "crystarion-empowerer-category"
}

data:extend({
    crusher_category,
    energiser_category,
    naturizer_category,
    smelter_category,
    empowerer_category,
})

-- new recipes

require("__Crystarion__.prototypes.recipes.basic-recipe")
require("__Crystarion__.prototypes.recipes.ore-cycle")
require("__Crystarion__.prototypes.recipes.fluid-cycle")
require("__Crystarion__.prototypes.recipes.manual-labor")
require("__Crystarion__.prototypes.recipes.science")
