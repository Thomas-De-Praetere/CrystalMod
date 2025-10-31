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
    local c_target = table.deepcopy(target);
    c_target.scale = 0.75
    c_target.shift = { 0, 4 }

    local c_source1 = table.deepcopy(source1);
    c_source1.scale = 0.5
    c_source1.shift = { -8, -8 }

    local c_source2 = table.deepcopy(source2);
    c_source2.scale = 0.5
    c_source2.shift = { 8, -8 }

    return { c_target, c_source1, c_source2, }
end

function helper.icon_1_to_1(source, target)
    local c_target1 = table.deepcopy(target);
    c_target1.scale = 0.5
    c_target1.shift = { -8, 8 }

    local c_target2 = table.deepcopy(target);
    c_target2.scale = 0.5
    c_target2.shift = { 8, 8 }

    local c_source = table.deepcopy(source);
    c_source.scale = 0.75
    c_source.shift = { 0, -4 }

    return { c_source, c_target1, c_target2 }
end

function helper.icon_1_to_2(source, target1, target2)
    local c_source = table.deepcopy(source);
    c_source.scale = 0.75
    c_source.shift = { 0, -4 }

    local c_target1 = table.deepcopy(target1);
    c_target1.scale = 0.5
    c_target1.shift = { -8, 8 }

    local c_target2 = table.deepcopy(target2);
    c_target2.scale = 0.5
    c_target2.shift = { 8, 8 }

    return { c_source, c_target1, c_target2 }
end

function helper.alternate(main, special)
    local c_special = table.deepcopy(special);
    c_special.scale = 0.28
    c_special.shift = { 8, 8 }
    return { main, c_special }
end

helper.crystal_tint = {
    red = { 1, 0.8, 0.8 },
    green = { 0.8, 1, 0.8 },
    blue = { 0.8, 0.8, 1 },
    magenta = { 1, 0.8, 1 },
    cyan = { 0.8, 1, 1 },
    yellow = { 1, 1, 0.8 },
    white = { 1, 1, 1 },
}

local ITEM_LOCATION = "__Crystarion__/graphics/items/"
local FLUID_LOCATION = "__Crystarion__/graphics/fluids/"
local icon_table = {
    crushed_crystal = { icon = ITEM_LOCATION .. "crushed_crystal.png", icon_size = 64 },
    crystal_ore = { icon = ITEM_LOCATION .. "crystal_ore.png", icon_size = 64 },
    crystal = { icon = ITEM_LOCATION .. "crystal.png", icon_size = 64, tint = helper.crystal_tint.white },
    crystal_green = { icon = ITEM_LOCATION .. "crystal_shard.png", icon_size = 64, tint = helper.crystal_tint.green },
    crystal_blue = { icon = ITEM_LOCATION .. "crystal_shard.png", icon_size = 64, tint = helper.crystal_tint.blue },
    crystal_red = { icon = ITEM_LOCATION .. "crystal_shard.png", icon_size = 64, tint = helper.crystal_tint.red },
    crystal_magenta = { icon = ITEM_LOCATION .. "crystal_shard.png", icon_size = 64, tint = helper.crystal_tint.magenta },
    crystal_cyan = { icon = ITEM_LOCATION .. "crystal_shard.png", icon_size = 64, tint = helper.crystal_tint.cyan },
    crystal_yellow = { icon = ITEM_LOCATION .. "crystal_shard.png", icon_size = 64, tint = helper.crystal_tint.yellow },
    crystal_slurry = { icon = FLUID_LOCATION .. "slurry.png", icon_size = 64 },
    red_slurry = { icon = FLUID_LOCATION .. "red-slurry.png", icon_size = 64 },
    blue_slurry = { icon = FLUID_LOCATION .. "blue-slurry.png", icon_size = 64 },
    green_slurry = { icon = FLUID_LOCATION .. "green-slurry.png", icon_size = 64 },
    yellow_mixture = { icon = FLUID_LOCATION .. "yellow-mixture.png", icon_size = 64 },
    purple_mixture = { icon = FLUID_LOCATION .. "purple-mixture.png", icon_size = 64 },
    plasma = { icon = FLUID_LOCATION .. "plasma.png", icon_size = 64 },
    planet = { icon = "__Crystarion__/graphics/planet/planet-icon.png", icon_size = 64 },
}
function helper.icons(key)
    return table.deepcopy(icon_table[key])
end

return helper
