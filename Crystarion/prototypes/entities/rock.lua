local entity = table.deepcopy(data.raw["simple-entity"]["big-rock"])

entity.minable.results = {
    {
        type = "item",
        name = "crystarion-crushed-crystal",
        amount_min = 25,
        amount_max = 50
    },
    {
        type = "item",
        name = "crystarion-crystal",
        amount_min = 2,
        amount_max = 5
    },
    {
        type = "item",
        name = "crystarion-crystal-red",
        amount_min = 5,
        amount_max = 10
    },
    {
        type = "item",
        name = "crystarion-crystal-green",
        amount_min = 5,
        amount_max = 10
    },
    {
        type = "item",
        name = "crystarion-crystal-blue",
        amount_min = 12,
        amount_max = 25
    }
}

data:extend({
    entity
})
