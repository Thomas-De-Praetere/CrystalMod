local dirt = table.deepcopy(data.raw['tile']['dirt-1'])
dirt.name = "crystarion-dirt"
dirt.autoplace = {
    probability_expression = 'crystarion_dirt'
}


function create_tile(prefix, postfix)
    local snow = table.deepcopy(data.raw['tile'][prefix .. '-' .. postfix])
    snow.name = "crystarion-" .. prefix .. '-' .. postfix
    snow.autoplace = {
        probability_expression = 'crystarion_' .. prefix .. '_' .. postfix
    }

    return snow
end

local ice = table.deepcopy(data.raw['tile']['ice-smooth'])
ice.name = "crystarion-ice"
ice.autoplace = {
    probability_expression = 'crystarion_ice'
}

data:extend({
    dirt,
    create_tile("snow", "flat"),
    create_tile("snow", "crests"),
    create_tile("snow", "lumpy"),
    create_tile("snow", "patchy"),
    create_tile("grass", "1"),
    create_tile("grass", "2"),
    create_tile("grass", "3"),
    ice,
})
