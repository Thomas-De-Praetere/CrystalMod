local helper = require("__Crystarion__.helper")

local unit = table.deepcopy(data.raw["unit"]["small-biter"])
unit.name = "crystarion-biter"
unit.dying_trigger_effect = {
    type = "create-entity",
    check_buildability = false,
    entity_name = "crystarion-resource",
}
unit.vision_distance = 10
unit.absorptions_to_join_attack = { crystarion_resonance = 4 }
unit.distraction_cooldown = 50
unit.min_pursue_time = helper.seconds() * 10
unit.max_pursue_distance = 20
data:extend({ unit })
