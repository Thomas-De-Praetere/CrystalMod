local LOCATION = "__Crystarion__/graphics/fluids/"
local BASE_FLUID = data.raw["fluid"]["water"]

local crystal_slurry = table.deepcopy(BASE_FLUID)
crystal_slurry.name = "crystarion-crystal-slurry"
crystal_slurry.icon = LOCATION .. "slurry.png"
crystal_slurry.base_color = { 0.5, 0.7, 0.8 }
crystal_slurry.flow_color = { 0.7, 1.0, 1.0 }

local red_slurry = table.deepcopy(BASE_FLUID)
red_slurry.name = "crystarion-red-slurry"
red_slurry.icon = LOCATION .. "red-slurry.png"
red_slurry.base_color = { 0.9, 0.6, 0.5 }
red_slurry.flow_color = { 1.0, 0.9, 0.9 }

local blue_slurry = table.deepcopy(BASE_FLUID)
blue_slurry.name = "crystarion-blue-slurry"
blue_slurry.icon = LOCATION .. "blue-slurry.png"
blue_slurry.base_color = { 0.3, 0.7, 0.9 }
blue_slurry.flow_color = { 0.8, 1.0, 1.0 }

local green_slurry = table.deepcopy(BASE_FLUID)
green_slurry.name = "crystarion-green-slurry"
green_slurry.icon = LOCATION .. "green-slurry.png"
green_slurry.base_color = { 0.4, 0.6, 0.5 }
green_slurry.flow_color = { 0.9, 1.0, 0.8 }

local yellow_mixture = table.deepcopy(BASE_FLUID)
yellow_mixture.name = "crystarion-yellow-mixture"
yellow_mixture.icon = LOCATION .. "yellow-mixture.png"
yellow_mixture.base_color = { 0.8, 0.9, 0.6 }
yellow_mixture.flow_color = { 1.0, 1.0, 0.9 }

local purple_mixture = table.deepcopy(BASE_FLUID)
purple_mixture.name = "crystarion-purple-mixture"
purple_mixture.icon = LOCATION .. "purple-mixture.png"
purple_mixture.base_color = { 0.8, 0.5, 0.8 }
purple_mixture.flow_color = { 1.0, 0.8, 1.0 }

local plasma = table.deepcopy(BASE_FLUID)
plasma.name = "crystarion-plasma"
plasma.icon = LOCATION .. "plasma.png"
plasma.base_color = { 0.4, 1.0, 1.0 }
plasma.flow_color = { 0.7, 1.0, 1.0 }
plasma.max_temperature = 5000
plasma.default_temperature = 15
plasma.auto_barrel = false
plasma.heat_capacity = "0.2kJ"

data:extend({
    crystal_slurry,
    red_slurry,
    blue_slurry,
    green_slurry,
    yellow_mixture,
    purple_mixture,
    plasma
})
