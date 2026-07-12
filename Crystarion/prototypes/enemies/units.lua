-- locale unit crystarion-small-biter
-- locale unit crystarion-medium-biter
-- locale unit crystarion-big-biter
-- locale unit crystarion-behemoth-biter
-- locale unit crystarion-small-spitter
-- locale unit crystarion-medium-spitter
-- locale unit crystarion-big-spitter
-- locale unit crystarion-behemoth-spitter

require("__Crystarion__.graphics.entity.unit.update-biter-look")
local helper = require("__Crystarion__.helper")
local grey_mask = { 0.38, 0.54, 0.81 }

local function create_enemy(size, absorption, type, only_resource, to_spawn_unit, to_spawn_resource, tint1, tint2)
    local spawn_array = { { 0, 1 }, { 0, -1 } }

    local unit = table.deepcopy(data.raw["unit"][size .. "-" .. type])
    unit.name = "crystarion-" .. size .. "-" .. type
    unit.buildable_entities = { "crystarion-spawner" }

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

    make_crystarion_look(unit, tint1, tint2)

    local corpse = table.deepcopy(data.raw["corpse"][size .. "-" .. type .. "-corpse"])
    corpse.name = "crystarion-" .. size .. "-" .. type .. "-corpse"
    make_crystarion_corpse_look(corpse, tint1, tint2)

    unit.corpse = corpse.name

    data:extend({ unit, corpse })
end

local function create_enemy_boom(size, absorption, type, to_spawn, radius, damage, tint1, tint2)
    local spawn_array = { { 0, 0 } }

    local unit = table.deepcopy(data.raw["unit"][size .. "-" .. type])
    unit.name = "crystarion-" .. size .. "-" .. type

    unit.buildable_entities = { "crystarion-spawner" }
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

    make_crystarion_spitter_look(unit, tint1, tint2)

    local corpse = table.deepcopy(data.raw["corpse"][size .. "-" .. type .. "-corpse"])
    corpse.name = "crystarion-" .. size .. "-" .. type .. "-corpse"
    make_crystarion_spitter_corpse_look(corpse, tint1, tint2)

    unit.corpse = corpse.name

    data:extend({ unit, corpse })
end

create_enemy(
    "small",
    4,
    "biter",
    true,
    nil,
    "crystarion-resource-small",
    grey_mask,
    helper.crystal_tint.white
)
create_enemy(
    "medium",
    20,
    "biter",
    false,
    "crystarion-small-biter",
    "crystarion-resource-medium",
    grey_mask,
    helper.crystal_tint.green
)
create_enemy(
    "big",
    80,
    "biter",
    false,
    "crystarion-medium-biter",
    "crystarion-resource-big",
    grey_mask,
    helper.crystal_tint.yellow
)
create_enemy(
    "behemoth",
    400,
    "biter",
    false,
    "crystarion-big-biter",
    "crystarion-resource-behemoth",
    grey_mask,
    helper.crystal_tint.red
)
create_enemy_boom(
    "small",
    4,
    "spitter",
    "crystarion-resource-small",
    1,
    5,
    grey_mask,
    helper.crystal_tint.white
)
create_enemy_boom(
    "medium",
    20,
    "spitter",
    "crystarion-resource-medium",
    2,
    10,
    grey_mask,
    helper.crystal_tint.green
)
create_enemy_boom(
    "big",
    80,
    "spitter",
    "crystarion-resource-big",
    4,
    15,
    grey_mask,
    helper.crystal_tint.yellow
)
create_enemy_boom(
    "behemoth",
    400,
    "spitter",
    "crystarion-resource-behemoth",
    6,
    25,
    grey_mask,
    helper.crystal_tint.red
)
