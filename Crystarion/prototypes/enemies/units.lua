local helper = require("__Crystarion__.helper")

local function create_enemy(size, absorption, type)
    local unit = table.deepcopy(data.raw["unit"][size .. "-" .. type])
    unit.name = "crystarion-" .. size .. "-" .. type
    unit.dying_trigger_effect = {
        type = "create-entity",
        check_buildability = true,
        find_non_colliding_position = true,
        entity_name = "crystarion-resource-" .. size,
    }
    unit.vision_distance = 10
    unit.absorptions_to_join_attack = { crystarion_resonance = absorption }
    unit.distraction_cooldown = 50
    unit.min_pursue_time = helper.seconds() * 10
    unit.max_pursue_distance = 20
    return unit
end

-- biters multiply
-- spitters do not attack but create worms.


data:extend({
    create_enemy("small", 4, "biter"),
    create_enemy("medium", 20, "biter"),
    create_enemy("big", 80, "biter"),
    create_enemy("behemoth", 400, "biter"),
    create_enemy("small", 4, "spitter"),
    create_enemy("medium", 20, "spitter"),
    create_enemy("big", 80, "spitter"),
    create_enemy("behemoth", 400, "spitter"),
})
