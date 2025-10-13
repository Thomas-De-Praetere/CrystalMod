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
    --Other Volcan stuff
    create_deco("vulcanus-dune-decal"),
    create_deco("vulcanus-sand-decal"),
    create_deco("crater-small"),
    create_deco("crater-large"),
    create_deco("tiny-rock-cluster"),
    create_deco("vulcanus-rock-decal-large"),
    create_deco("waves-decal"),
    -- Volcan flank stuff
    create_deco("veins"),
    create_deco("split-gill-dying-1x1"),
    create_deco("split-gill-dying-2x2"),
    create_deco("brown-hairy-grass"),
    create_deco("brown-carpet-grass"),
    create_deco("brown-asterisk-mini"),
    create_deco("brown-asterisk"),
})
