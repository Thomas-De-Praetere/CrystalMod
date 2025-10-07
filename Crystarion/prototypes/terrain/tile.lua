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

data:extend({
    dirt,
    create_tile("snow", "flat"),
    create_tile("snow", "crests"),
    create_tile("snow", "lumpy"),
    create_tile("snow", "patchy"),
    create_tile("ice", "smooth"),
    create_tile("ice", "rough"),
})
