local LOCATION = "__Crystarion__/graphics/items/"
local BASE_ITEM = data.raw["item"]["iron-plate"]

local crushed_crystal = table.deepcopy(BASE_ITEM)
crushed_crystal.name = "crystarion-crushed-crystal"
crushed_crystal.icon = LOCATION .. "crushed_crystal.png"
crushed_crystal.pictures = {
    { size = 64, filename = LOCATION .. "crushed_crystal.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crushed_crystal_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crushed_crystal_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal_ore = table.deepcopy(data.raw["item"]["iron-ore"])
crystal_ore.name = "crystarion-crystal-ore"
crystal_ore.icon = LOCATION .. "crystal_ore.png"
crystal_ore.pictures = {
    { size = 64, filename = LOCATION .. "crystal_ore.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crystal_ore_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crystal_ore_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal = table.deepcopy(BASE_ITEM)
crystal.name = "crystarion-crystal"
crystal.icon = LOCATION .. "crystal.png"
crystal.pictures = {
    { size = 64, filename = LOCATION .. "crystal.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crystal_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = LOCATION .. "crystal_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal_green = table.deepcopy(BASE_ITEM)
crystal_green.name = "crystarion-crystal-green"
crystal_green.icon = LOCATION .. "crystal-green.png"

local crystal_blue = table.deepcopy(BASE_ITEM)
crystal_blue.name = "crystarion-crystal-blue"
crystal_blue.icon = LOCATION .. "crystal-blue.png"

local crystal_red = table.deepcopy(BASE_ITEM)
crystal_red.name = "crystarion-crystal-red"
crystal_red.icon = LOCATION .. "crystal-red.png"

local crystal_magenta = table.deepcopy(BASE_ITEM)
crystal_magenta.name = "crystarion-crystal-magenta"
crystal_magenta.icon = LOCATION .. "crystal-magenta.png"

local crystal_cyan = table.deepcopy(BASE_ITEM)
crystal_cyan.name = "crystarion-crystal-cyan"
crystal_cyan.icon = LOCATION .. "crystal-cyan.png"

local crystal_yellow = table.deepcopy(BASE_ITEM)
crystal_yellow.name = "crystarion-crystal-yellow"
crystal_yellow.icon = LOCATION .. "crystal-yellow.png"

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
