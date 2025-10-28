local helper = require("__Crystarion__.helper")

function create_tile(element)
    local expression = helper.replace(element, "-", "_")

    local snow = table.deepcopy(data.raw['tile'][element])
    snow.name = "crystarion-" .. element
    snow.autoplace = {
        probability_expression = 'crystarion_' .. expression,
        local_expressions = {}
    }
    snow.order = "b[tile]-a[crystarion]-a[deco]"
    snow.absorptions_per_second = { crystarion_resonance = 0.000025 }

    return snow
end

local ice_smooth = create_tile("ice-smooth")
local ice_rough = create_tile("ice-rough")

local collision_mask = { layers = {
    resource = true,
    floor = true,
    rail = true,
} }

ice_smooth.collision_mask = collision_mask
ice_rough.collision_mask = collision_mask

data:extend({
    create_tile("snow-flat"),
    create_tile("snow-crests"),
    create_tile("snow-lumpy"),
    create_tile("snow-patchy"),
    create_tile("volcanic-cracks-hot"),
    create_tile("volcanic-folds"),
    create_tile("volcanic-ash-cracks"),
    create_tile("volcanic-pumice-stones"),
    ice_smooth,
    ice_rough,
})
