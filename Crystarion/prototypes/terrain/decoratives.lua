local helper = require("__Crystarion__.helper")


function create_deco(element)
    local expression = helper.replace(element, "-", "_")

    local snow = table.deepcopy(data.raw['optimized-decorative'][element])
    snow.name = "crystarion-" .. element
    snow.autoplace = {
        probability_expression = 'crystarion_' .. expression,
        local_expressions = {}
    }
    snow.order = "b[decorative]-a[crystarion]-a[deco]"

    return snow
end

data:extend({
    create_deco("brown-hairy-grass"),
    create_deco("brown-carpet-grass"),
    create_deco("brown-asterisk-mini"),
    create_deco("brown-asterisk"),
})
