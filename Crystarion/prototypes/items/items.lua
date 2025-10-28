local helper = require("__Crystarion__.helper")

local LOCATION = "__Crystarion__/graphics/items/"
local BASE_ITEM = data.raw["item"]["iron-plate"]

local crushed_crystal = table.deepcopy(BASE_ITEM)
crushed_crystal.name = "crystarion-crushed-crystal"
crushed_crystal.icon = helper.icons.crushed_crystal
crushed_crystal.pictures = {
    { size = 64, filename = LOCATION .. "crushed_crystal.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crushed_crystal_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crushed_crystal_2.png", scale = 0.5, mipmap_count = 4 }
}
crushed_crystal.fuel_category = "chemical"
crushed_crystal.fuel_value = "4MJ"

local crystal_ore = table.deepcopy(data.raw["item"]["iron-ore"])
crystal_ore.name = "crystarion-crystal-ore"
crystal_ore.icon = helper.icons.crystal_ore
crystal_ore.pictures = {
    { size = 64, filename = LOCATION .. "crystal_ore.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crystal_ore_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crystal_ore_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal = table.deepcopy(BASE_ITEM)
crystal.name = "crystarion-crystal"
crystal.icon = helper.icons.crystal
crystal.pictures = {
    { size = 64, filename = LOCATION .. "crystal.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crystal_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crystal_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal_green = table.deepcopy(BASE_ITEM)
crystal_green.name = "crystarion-crystal-green"
crystal_green.icon = helper.icons.crystal_green

local crystal_blue = table.deepcopy(BASE_ITEM)
crystal_blue.name = "crystarion-crystal-blue"
crystal_blue.icon = helper.icons.crystal_blue

local crystal_red = table.deepcopy(BASE_ITEM)
crystal_red.name = "crystarion-crystal-red"
crystal_red.icon = helper.icons.crystal_red

local crystal_magenta = table.deepcopy(BASE_ITEM)
crystal_magenta.name = "crystarion-crystal-magenta"
crystal_magenta.icon = helper.icons.crystal_magenta

local crystal_cyan = table.deepcopy(BASE_ITEM)
crystal_cyan.name = "crystarion-crystal-cyan"
crystal_cyan.icon = helper.icons.crystal_cyan

local crystal_yellow = table.deepcopy(BASE_ITEM)
crystal_yellow.name = "crystarion-crystal-yellow"
crystal_yellow.icon = helper.icons.crystal_yellow

data:extend({
    crushed_crystal,
    crystal,
    crystal_ore,
    crystal_green,
    crystal_blue,
    crystal_red,
    crystal_magenta,
    crystal_cyan,
    crystal_yellow
})
