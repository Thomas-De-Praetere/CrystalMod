local crushed_crystal = table.deepcopy(data.raw["item"]["iron-plate"])
crushed_crystal.name = "crystarion-crushed-crystal"
crushed_crystal.icon = "__Crystarion__/graphics/items/crushed_crystal.png"
crushed_crystal.pictures = {
    { size = 64, filename = "__Crystarion__/graphics/items/crushed_crystal.png",   scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crushed_crystal_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crushed_crystal_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal_ore = table.deepcopy(data.raw["item"]["iron-ore"])
crystal_ore.name = "crystarion-crystal-ore"
crystal_ore.icon = "__Crystarion__/graphics/items/crystal_ore.png"
crystal_ore.pictures = {
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_ore.png",   scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_ore_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_ore_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal_slurry = table.deepcopy(data.raw["fluid"]["water"])
crystal_slurry.name = "crystarion-crystal-slurry"
crystal_slurry.icon = "__Crystarion__/graphics/items/slurry.png"
crystal_slurry.base_color = { 0.5, 0.7, 0.8 }
crystal_slurry.flow_color = { 0.7, 1.0, 1.0 }

local crystal = table.deepcopy(data.raw["item"]["iron-plate"])
crystal.name = "crystarion-crystal"
crystal.icon = "__Crystarion__/graphics/items/crystal.png"
crystal.pictures = {
    { size = 64, filename = "__Crystarion__/graphics/items/crystal.png",   scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__Crystarion__/graphics/items/crystal_2.png", scale = 0.5, mipmap_count = 4 }
}

local crystal_green = table.deepcopy(data.raw["item"]["iron-plate"])
crystal_green.name = "crystarion-crystal-green"
crystal_green.icon = "__Crystarion__/graphics/items/crystal-green.png"

local crystal_blue = table.deepcopy(data.raw["item"]["iron-plate"])
crystal_blue.name = "crystarion-crystal-blue"
crystal_blue.icon = "__Crystarion__/graphics/items/crystal-blue.png"

local crystal_red = table.deepcopy(data.raw["item"]["iron-plate"])
crystal_red.name = "crystarion-crystal-red"
crystal_red.icon = "__Crystarion__/graphics/items/crystal-red.png"

local crystal_magenta = table.deepcopy(data.raw["item"]["iron-plate"])
crystal_magenta.name = "crystarion-crystal-magenta"
crystal_magenta.icon = "__Crystarion__/graphics/items/crystal-magenta.png"

local crystal_cyan = table.deepcopy(data.raw["item"]["iron-plate"])
crystal_cyan.name = "crystarion-crystal-cyan"
crystal_cyan.icon = "__Crystarion__/graphics/items/crystal-cyan.png"

local crystal_yellow = table.deepcopy(data.raw["item"]["iron-plate"])
crystal_yellow.name = "crystarion-crystal-yellow"
crystal_yellow.icon = "__Crystarion__/graphics/items/crystal-yellow.png"

local red_slurry = table.deepcopy(data.raw["fluid"]["water"])
red_slurry.name = "crystarion-red-slurry"
red_slurry.icon = "__Crystarion__/graphics/items/red-slurry.png"
red_slurry.base_color = { 0.9, 0.6, 0.5 }
red_slurry.flow_color = { 1.0, 0.9, 0.9 }

local blue_slurry = table.deepcopy(data.raw["fluid"]["water"])
blue_slurry.name = "crystarion-blue-slurry"
blue_slurry.icon = "__Crystarion__/graphics/items/blue-slurry.png"
blue_slurry.base_color = { 0.3, 0.7, 0.9 }
blue_slurry.flow_color = { 0.8, 1.0, 1.0 }

local green_slurry = table.deepcopy(data.raw["fluid"]["water"])
green_slurry.name = "crystarion-green-slurry"
green_slurry.icon = "__Crystarion__/graphics/items/green-slurry.png"
green_slurry.base_color = { 0.4, 0.6, 0.5 }
green_slurry.flow_color = { 0.9, 1.0, 0.8 }

local yellow_mixture = table.deepcopy(data.raw["fluid"]["water"])
yellow_mixture.name = "crystarion-yellow-mixture"
yellow_mixture.icon = "__Crystarion__/graphics/items/yellow-mixture.png"
yellow_mixture.base_color = { 0.8, 0.9, 0.6 }
yellow_mixture.flow_color = { 1.0, 1.0, 0.9 }

local purple_mixture = table.deepcopy(data.raw["fluid"]["water"])
purple_mixture.name = "crystarion-purple-mixture"
purple_mixture.icon = "__Crystarion__/graphics/items/purple-mixture.png"
purple_mixture.base_color = { 0.8, 0.5, 0.8 }
purple_mixture.flow_color = { 1.0, 0.8, 1.0 }

data:extend({
    crushed_crystal,
    crystal,
    crystal_ore,
    crystal_slurry,
    crystal_green,
    crystal_blue,
    crystal_red,
    crystal_magenta,
    crystal_cyan,
    crystal_yellow,
    red_slurry,
    blue_slurry,
    green_slurry,
    yellow_mixture,
    purple_mixture
})
