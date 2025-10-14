local crystal_rock_huge = table.deepcopy(data.raw["simple-entity"]["huge-volcanic-rock"])
crystal_rock_huge.name = "crystarion-rock-huge"
crystal_rock_huge.minable.results = {
    { type = "item", name = "crystarion-crushed-crystal", amount_min = 25, amount_max = 50 },
    { type = "item", name = "crystarion-crystal", amount_min = 2, amount_max = 5 },
    { type = "item", name = "crystarion-crystal-red", amount_min = 5, amount_max = 10 },
    { type = "item", name = "crystarion-crystal-green", amount_min = 5, amount_max = 10 },
    { type = "item", name = "crystarion-crystal-blue", amount_min = 12, amount_max = 25 }
}
crystal_rock_huge.autoplace.control = "crystarion-rocks"
crystal_rock_huge.autoplace.probability_expression = "crystarion_rock_huge"

local crystal_rock_big = table.deepcopy(data.raw["simple-entity"]["big-volcanic-rock"])
crystal_rock_big.name = "crystarion-rock-big"
crystal_rock_big.minable.results = {
    { type = "item", name = "crystarion-crushed-crystal", amount_min = 15, amount_max = 30 },
    { type = "item", name = "crystarion-crystal", amount_min = 1, amount_max = 1 },
    { type = "item", name = "crystarion-crystal-red", amount_min = 2, amount_max = 5 },
    { type = "item", name = "crystarion-crystal-green", amount_min = 2, amount_max = 5 },
    { type = "item", name = "crystarion-crystal-blue", amount_min = 6, amount_max = 10 }
}
crystal_rock_big.autoplace.control = "crystarion-rocks"
crystal_rock_big.autoplace.probability_expression = "crystarion_rock_big"

local ice_rock_h = table.deepcopy(data.raw["simple-entity"]["lithium-iceberg-huge"])
ice_rock_h.name = "crystarion-rock-ice-huge"
ice_rock_h.minable.results = {
    { type = "item", name = "ice", amount_min = 25, amount_max = 50 }
}
ice_rock_h.autoplace.control = "crystarion-rocks"
ice_rock_h.autoplace.probability_expression = "crystarion_rock_ice_huge"

local ice_rock_b = table.deepcopy(data.raw["simple-entity"]["lithium-iceberg-big"])
ice_rock_b.name = "crystarion-rock-ice-big"
ice_rock_b.minable.results = {
    { type = "item", name = "ice", amount_min = 15, amount_max = 30 }
}
ice_rock_b.autoplace.control = "crystarion-rocks"
ice_rock_b.autoplace.probability_expression = "crystarion_rock_ice_big"

data:extend({
    crystal_rock_huge,
    crystal_rock_big,
    ice_rock_h,
    ice_rock_b,
})
