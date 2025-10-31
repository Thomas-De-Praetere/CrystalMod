local helper = require("__Crystarion__.helper")

local LOCATION = "__Crystarion__/graphics/items/"
local BASE_ITEM = data.raw["item"]["iron-plate"]


function get_crystal_sprites(name, tint)
    return {
        {
            layers = {
                { size = 64, filename = LOCATION .. name .. "_1.png",       scale = 0.5, mipmap_count = 4, tint = tint },
                { size = 64, filename = LOCATION .. name .. "_1_light.png", scale = 0.5, mipmap_count = 4, draw_as_light = true,  tint = tint }
            }
        },
        {
            layers = {
                { size = 64, filename = LOCATION .. name .. "_2.png",       scale = 0.5, mipmap_count = 4, tint = tint },
                { size = 64, filename = LOCATION .. name .. "_2_light.png", scale = 0.5, mipmap_count = 4, draw_as_light = true, tint = tint }
            }
        },
        {
            layers = {
                { size = 64, filename = LOCATION .. name .. "_3.png",       scale = 0.5, mipmap_count = 4, tint = tint },
                { size = 64, filename = LOCATION .. name .. "_3_light.png", scale = 0.5, mipmap_count = 4, draw_as_light = true, tint = tint }
            }
        },
    }
end

local crushed_crystal = table.deepcopy(BASE_ITEM)
crushed_crystal.name = "crystarion-crushed-crystal"
crushed_crystal.icons = { helper.icons("crushed_crystal") }
crushed_crystal.pictures = get_crystal_sprites("crushed_crystal", helper.crystal_tint.white)
crushed_crystal.fuel_category = "chemical"
crushed_crystal.fuel_value = "4MJ"

local crystal_ore = table.deepcopy(data.raw["item"]["iron-ore"])
crystal_ore.name = "crystarion-crystal-ore"
crystal_ore.icons = { helper.icons("crystal_ore") }
crystal_ore.pictures = get_crystal_sprites("crystal_ore", helper.crystal_tint.white)

local crystal = table.deepcopy(BASE_ITEM)
crystal.name = "crystarion-crystal"
crystal.icons = { helper.icons("crystal") }
crystal.pictures = get_crystal_sprites("crystal", helper.crystal_tint.white)

local crystal_green = table.deepcopy(BASE_ITEM)
crystal_green.name = "crystarion-crystal-green"
crystal_green.icons = { helper.icons("crystal_green") }
crystal_green.pictures = get_crystal_sprites("crystal_shard", helper.crystal_tint.green)

local crystal_blue = table.deepcopy(BASE_ITEM)
crystal_blue.name = "crystarion-crystal-blue"
crystal_blue.icons = { helper.icons("crystal_blue") }
crystal_blue.pictures = get_crystal_sprites("crystal_shard", helper.crystal_tint.blue)

local crystal_red = table.deepcopy(BASE_ITEM)
crystal_red.name = "crystarion-crystal-red"
crystal_red.icons = { helper.icons("crystal_red") }
crystal_red.pictures = get_crystal_sprites("crystal_shard", helper.crystal_tint.red)

local crystal_magenta = table.deepcopy(BASE_ITEM)
crystal_magenta.name = "crystarion-crystal-magenta"
crystal_magenta.icons = { helper.icons("crystal_magenta") }
crystal_magenta.pictures = get_crystal_sprites("crystal_shard", helper.crystal_tint.magenta)

local crystal_cyan = table.deepcopy(BASE_ITEM)
crystal_cyan.name = "crystarion-crystal-cyan"
crystal_cyan.icons = { helper.icons("crystal_cyan") }
crystal_cyan.pictures = get_crystal_sprites("crystal_shard", helper.crystal_tint.cyan)

local crystal_yellow = table.deepcopy(BASE_ITEM)
crystal_yellow.name = "crystarion-crystal-yellow"
crystal_yellow.icons = { helper.icons("crystal_yellow") }
crystal_yellow.pictures = get_crystal_sprites("crystal_shard", helper.crystal_tint.yellow)

local crystal_splinter = table.deepcopy(BASE_ITEM)
crystal_splinter.name = "crystarion-crystal-splinter"
crystal_splinter.icons = { helper.icons("splinter") }
crystal_splinter.pictures = get_crystal_sprites("crystal_splinter", helper.crystal_tint.white)

data:extend({
    crushed_crystal,
    crystal,
    crystal_ore,
    crystal_green,
    crystal_blue,
    crystal_red,
    crystal_magenta,
    crystal_cyan,
    crystal_yellow,
    crystal_splinter
})
