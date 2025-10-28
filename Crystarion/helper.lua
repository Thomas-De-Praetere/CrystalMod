local helper = {}

function helper.seconds()
    return 60
end

function helper.minutes()
    return helper.seconds() * 60
end

function helper.replace(word, from, to)
    return string.gsub(word, from, to)
end

function helper.icon_2_to_1(source1, source2, target)
    return {
        { icon = target,  icon_size = 64, scale = 0.75, shift = { 0, 4 } },
        { icon = source1, icon_size = 64, scale = 0.5, shift = { -8, -8 } },
        { icon = source2, icon_size = 64, scale = 0.5, shift = { 8, -8 } }
    }
end

function helper.icon_1_to_1(source, target)
    return {
        { icon = source, icon_size = 64, scale = 0.75, shift = { 0, -4 } },
        { icon = target, icon_size = 64, scale = 0.5, shift = { -8, 8 } },
        { icon = target, icon_size = 64, scale = 0.5, shift = { 8, 8 } }
    }
end

function helper.icon_1_to_2(source, target1, target2)
    return {
        { icon = source,  icon_size = 64, scale = 0.75, shift = { 0, -4 } },
        { icon = target1, icon_size = 64, scale = 0.5, shift = { -8, 8 } },
        { icon = target2, icon_size = 64, scale = 0.5, shift = { 8, 8 } }
    }
end

function helper.alternate(main, special)
    return {
        { icon = main,    icon_size = 64 },
        { icon = special, icon_size = 64, scale = 0.25, shift = { 8, 8 } }
    }
end

local ITEM_LOCATION = "__Crystarion__/graphics/items/"
local FLUID_LOCATION = "__Crystarion__/graphics/fluids/"
helper.icons = {
    crushed_crystal = ITEM_LOCATION .. "crushed_crystal.png",
    crystal_ore = ITEM_LOCATION .. "crystal_ore.png",
    crystal = ITEM_LOCATION .. "crystal.png",
    crystal_green = ITEM_LOCATION .. "crystal-green.png",
    crystal_blue = ITEM_LOCATION .. "crystal-blue.png",
    crystal_red = ITEM_LOCATION .. "crystal-red.png",
    crystal_magenta = ITEM_LOCATION .. "crystal-magenta.png",
    crystal_cyan = ITEM_LOCATION .. "crystal-cyan.png",
    crystal_yellow = ITEM_LOCATION .. "crystal-yellow.png",

    crystal_slurry = FLUID_LOCATION .. "slurry.png",
    red_slurry = FLUID_LOCATION .. "red-slurry.png",
    blue_slurry = FLUID_LOCATION .. "blue-slurry.png",
    green_slurry = FLUID_LOCATION .. "green-slurry.png",
    yellow_mixture = FLUID_LOCATION .. "yellow-mixture.png",
    purple_mixture = FLUID_LOCATION .. "purple-mixture.png",
    plasma = FLUID_LOCATION .. "plasma.png",

    planet = "__Crystarion__/graphics/planet/planet-icon.png"
}

return helper
