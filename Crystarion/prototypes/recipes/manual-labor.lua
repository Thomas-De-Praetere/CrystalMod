function destabilize(name, input, output, output_amount)
    return {
        type = "recipe",
        name = "crystarion-destabilize-" .. name,
        main_product = output,
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
    destabilize("crystal", "crystarion-crystal", "coal", 3),
    destabilize("crystal-red", "crystarion-crystal-red", "copper-ore", 1),
    destabilize("crystal-green", "crystarion-crystal-green", "stone", 1),
    destabilize("crystal-blue", "crystarion-crystal-blue", "iron-ore", 1)
})
