local helper = require("__Crystarion__.helper")

local function create_enemy(size, absorption, type, multiple, to_spawn)
    local spawn_array = { { 0, 0 } }
    if multiple then
        spawn_array = { { 0, 1 }, { 0, -1 } }
    end

    local unit = table.deepcopy(data.raw["unit"][size .. "-" .. type])
    unit.name = "crystarion-" .. size .. "-" .. type
    unit.dying_trigger_effect = {
        type = "create-entity",
        check_buildability = true,
        find_non_colliding_position = true,
        entity_name = to_spawn,
        offsets = spawn_array,
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
    create_enemy("small", 4, "biter", false, "crystarion-resource-small"),
    create_enemy("medium", 20, "biter", true, "crystarion-biter-small"),
    create_enemy("big", 80, "biter", true, "crystarion-biter-medium"),
    create_enemy("behemoth", 400, "biter", true, "crystarion-biter-big"),
    create_enemy("small", 4, "spitter", false, "crystarion-resource-small"),
    create_enemy("medium", 20, "spitter", false, "crystarion-resource-medium"),
    create_enemy("big", 80, "spitter", false, "crystarion-resource-big"),
    create_enemy("behemoth", 400, "spitter", false, "crystarion-resource-behemoth"),
})
