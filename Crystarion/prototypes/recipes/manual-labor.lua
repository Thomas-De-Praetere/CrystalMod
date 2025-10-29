local helper = require("__Crystarion__.helper")

function destabilize(name, input, input_icon, output, output_amount)
    return {
        type = "recipe",
        name = "crystarion-destabilize-" .. name,
        main_product = output,
        icons = helper.icon_1_to_1(
            helper.icons[input_icon],
            { icon = "__base__/graphics/icons/" .. output .. ".png" }
        ),
        ingredients = {
            { type = "item", name = input, amount = 1 },
            { type = "item", name = "ice", amount = 1 }
        },
        results = {
            { type = "item", name = output, amount = output_amount }
        },
        energy_required = 1
    }
end

data:extend({
    destabilize("crystal", "crystarion-crystal", "crystal", "coal", 3),
    destabilize("crystal-red", "crystarion-crystal-red", "crystal_red", "copper-ore", 1),
    destabilize("crystal-green", "crystarion-crystal-green", "crystal_green", "stone", 1),
    destabilize("crystal-blue", "crystarion-crystal-blue", "crystal_blue", "iron-ore", 1)
})
