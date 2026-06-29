-- locale unit crystarion-small-biter
-- locale unit crystarion-medium-biter
-- locale unit crystarion-big-biter
-- locale unit crystarion-behemoth-biter
-- locale unit crystarion-small-spitter
-- locale unit crystarion-medium-spitter
-- locale unit crystarion-big-spitter
-- locale unit crystarion-behemoth-spitter

local helper = require("__Crystarion__.helper")

local function create_enemy(size, absorption, type, only_resource, to_spawn_unit, to_spawn_resource)
    local spawn_array = { { 0, 1 }, { 0, -1 } }

    local unit = table.deepcopy(data.raw["unit"][size .. "-" .. type])
    unit.name = "crystarion-" .. size .. "-" .. type

    if only_resource then
        unit.dying_trigger_effect = {
            type = "create-entity",
            check_buildability = true,
            find_non_colliding_position = true,
            entity_name = to_spawn_resource,
            offsets = { { 0, 0 } },
        }
    else
        unit.dying_trigger_effect = {
            type = "nested-result",
            action = {
                type = "direct",
                action_delivery = {
                    {
                        type = "instant",
                        source_effects = {
                            {
                                type = "create-entity",
                                check_buildability = true,
                                find_non_colliding_position = true,
                                entity_name = to_spawn_unit,
                                offsets = spawn_array,
                            },
                            {
                                type = "create-entity",
                                check_buildability = true,
                                find_non_colliding_position = true,
                                entity_name = to_spawn_resource,
                                offsets = { { 0, 0 } },
                            },
                        },
                    }
                }
            }
        }
    end

    unit.vision_distance = 40
    unit.absorptions_to_join_attack = { crystarion_resonance = absorption }
    unit.distraction_cooldown = 300
    unit.min_pursue_time = helper.minutes()
    unit.max_pursue_distance = 100
    return unit
end

local function create_enemy_boom(size, absorption, type, to_spawn, radius, damage)
    local spawn_array = { { 0, 0 } }

    local unit = table.deepcopy(data.raw["unit"][size .. "-" .. type])
    unit.name = "crystarion-" .. size .. "-" .. type
    unit.dying_trigger_effect = {
        type = "nested-result",
        action = {
            type = "direct",
            action_delivery = {
                {
                    type = "instant",
                    source_effects = {
                        {
                            type = "create-entity",
                            entity_name = "explosion",
                            offsets = { { 0, 1 } },
                            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
                            only_when_visible = true
                        },
                        {
                            type = "nested-result",
                            action = {
                                type = "area",
                                radius = radius,
                                action_delivery = {
                                    type = "instant",
                                    target_effects = {
                                        {
                                            type = "damage",
                                            damage = { amount = damage, type = "explosion" }
                                        }
                                    }
                                }
                            }
                        },
                        {
                            type = "create-entity",
                            check_buildability = true,
                            find_non_colliding_position = true,
                            entity_name = to_spawn,
                            offsets = spawn_array,
                        },
                    },
                }
            }
        }
    }
    unit.vision_distance = 40
    unit.absorptions_to_join_attack = { crystarion_resonance = absorption }
    unit.distraction_cooldown = 300
    unit.min_pursue_time = helper.minutes()
    unit.max_pursue_distance = 100
    return unit
end



-- biters multiply
-- spitters do not attack but create worms.


data:extend({
    create_enemy("small", 4, "biter", true, nil, "crystarion-resource-small"),
    create_enemy("medium", 20, "biter", false, "crystarion-small-biter", "crystarion-resource-medium"),
    create_enemy("big", 80, "biter", false, "crystarion-medium-biter", "crystarion-resource-big"),
    create_enemy("behemoth", 400, "biter", false, "crystarion-big-biter", "crystarion-resource-behemoth"),
    create_enemy_boom("small", 4, "spitter", "crystarion-resource-small", 1, 5),
    create_enemy_boom("medium", 20, "spitter", "crystarion-resource-medium", 2, 10),
    create_enemy_boom("big", 80, "spitter", "crystarion-resource-big", 4, 15),
    create_enemy_boom("behemoth", 400, "spitter", "crystarion-resource-behemoth", 6, 25),
})
