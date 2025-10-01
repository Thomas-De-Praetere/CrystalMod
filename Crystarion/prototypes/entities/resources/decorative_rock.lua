local crystal_rock = table.deepcopy(data.raw["simple-entity"]["huge-rock"])
crystal_rock.name = "crystarion-rock"
crystal_rock.minable.results = {
    { type = "item", name = "crystarion-crushed-crystal", amount_min = 25, amount_max = 50 },
    { type = "item", name = "crystarion-crystal", amount_min = 2, amount_max = 5 },
    { type = "item", name = "crystarion-crystal-red", amount_min = 5, amount_max = 10 },
    { type = "item", name = "crystarion-crystal-green", amount_min = 5, amount_max = 10 },
    { type = "item", name = "crystarion-crystal-blue", amount_min = 12, amount_max = 25 }
}
crystal_rock.autoplace.control = "crystarion-rocks"

local ice_rock = table.deepcopy(data.raw["simple-entity"]["lithium-iceberg-huge"])
ice_rock.name = "crystarion-rock-ice"
ice_rock.minable.results = {
    { type = "item", name = "ice", amount_min = 25, amount_max = 50 }
}
ice_rock.autoplace.control = "crystarion-rocks"

data:extend({
    crystal_rock,
    ice_rock,
})
