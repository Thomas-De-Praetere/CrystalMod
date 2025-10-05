local dirt = table.deepcopy(data.raw['tile']['dirt-1'])
dirt.name = "crystarion-dirt"
dirt.autoplace = {
    probability_expression = 'crystarion_dirt'
}

local snow = table.deepcopy(data.raw['tile']['snow-flat'])
snow.name = "crystarion-snow"
snow.autoplace = {
    probability_expression = 'crystarion_snow'
}

local ice = table.deepcopy(data.raw['tile']['ice-smooth'])
ice.name = "crystarion-ice"
ice.autoplace = {
    probability_expression = 'crystarion_ice'
}

data:extend({
    dirt,
    snow,
    ice,
})
