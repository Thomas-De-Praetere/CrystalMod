local spawner = table.deepcopy(data.raw["unit-spawner"]["biter-spawner"])

spawner.name = "crystarion-spawner"
spawner.absorptions_per_second = { crystarion_resonance = { absolute = 20, proportional = 0.01 } }

spawner.autoplace.control = "crystarion_spawner"
spawner.autoplace.probability_expression = "crystarion_spawner"
spawner.spawn_decorations_on_expansion = false
spawner.spawn_decoration = {}

spawner.result_units = {
    { "crystarion-small-biter", { { 0.0, 0.3 }, { 0.6, 0.0 } } },
    { "crystarion-medium-biter", { { 0.2, 0.0 }, { 0.6, 0.3 }, { 0.7, 0.1 } } },
    { "crystarion-big-biter", { { 0.5, 0.0 }, { 1.0, 0.4 } } },
    { "crystarion-behemoth-biter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
    { "crystarion-small-spitter", { { 0.25, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
    { "crystarion-medium-spitter", { { 0.4, 0.0 }, { 0.7, 0.3 }, { 0.9, 0.1 } } },
    { "crystarion-big-spitter", { { 0.5, 0.0 }, { 1.0, 0.4 } } },
    { "crystarion-behemoth-spitter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
}

data:extend({ spawner })