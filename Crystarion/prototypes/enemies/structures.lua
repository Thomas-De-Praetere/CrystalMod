local spawner = table.deepcopy(data.raw["unit-spawner"]["biter-spawner"])

spawner.name = "crystarion-spawner"
spawner.absorptions_per_second = { crystarion_resonance = { absolute = 20, proportional = 0.01 } }
spawner.result_units = { { "crystarion-biter", { { 0.0, 0.3 }, { 0.35, 0 } } }, }
spawner.autoplace.control = "crystarion_spawner"
spawner.autoplace.probability_expression = "crystarion_spawner"
spawner.spawn_decorations_on_expansion = false
spawner.spawn_decoration = {}

data:extend({ spawner })