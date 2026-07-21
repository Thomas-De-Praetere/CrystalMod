-- locale projectile crystarion-projectile
-- locale projectile crystarion-projectile-actual
-- locale ammo crystarion-crystal-shell
-- locale recipe crystarion-crystal-shell
-- locale ammo-category crystarion-cannon-shell

local item_sounds = require("__base__.prototypes.item_sounds")

local action_delivery = {
    type = "instant",
    target_effects = {
        {
            type = "create-entity",
            entity_name = "big-explosion"
        },
        {
            type = "nested-result",
            action = {
                type = "area",
                radius = 4,
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "damage",
                            damage = { amount = 300, type = "explosion" }
                        },
                        {
                            type = "create-entity",
                            entity_name = "explosion"
                        }
                    }
                }
            }
        },
        {
            type = "create-entity",
            entity_name = "medium-scorchmark-tintable",
            check_buildability = true
        },
        {
            type = "invoke-tile-trigger",
            repeat_count = 1
        },
        {
            type = "destroy-decoratives",
            from_render_layer = "decorative",
            to_render_layer = "object",
            include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
            include_decals = false,
            invoke_decorative_trigger = true,
            decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
            radius = 2 -- large radius for demostrative purposes
        }
    }
}

local projectile = {
    type = "projectile",
    name = "crystarion-projectile",
    flags = { "not-on-map" },
    hidden = true,
    acceleration = 0,
    action = {
        {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "damage",
                        damage = { amount = 180, type = "physical" }
                    },
                    {
                        type = "create-entity",
                        entity_name = "explosion"
                    }
                }
            }
        },
        {
            type = "direct",
            action_delivery = action_delivery
        },
        {
            type = "cluster",
            cluster_count = 5,
            distance = 4,
            distance_deviation = 3,
            action_delivery = {
                type = "projectile",
                projectile = "crystarion-projectile-actual",
                direction_deviation = 3.14,
                starting_speed = 0.5,
                starting_speed_deviation = 0.5
            }
        }
    },
    animation = {
        filename = "__base__/graphics/entity/bullet/bullet.png",
        draw_as_glow = true,
        width = 3,
        height = 50,
        priority = "high"
    }
}

local projectile_actual = {
    type = "projectile",
    name = "crystarion-projectile-actual",
    flags = { "not-on-map" },
    hidden = true,
    acceleration = 0,
    action = {
        type = "direct",
        action_delivery = {
            type = "instant",
            target_effects = {
                {
                    type = "damage",
                    damage = { amount = 180, type = "physical" }
                },
                {
                    type = "create-entity",
                    entity_name = "explosion"
                }
            }
        }
    },
    final_action = {
        type = "direct",
        action_delivery = {
            type = "instant",
            target_effects = {
                {
                    type = "create-entity",
                    entity_name = "big-explosion"
                },
                {
                    type = "nested-result",
                    action = {
                        type = "area",
                        radius = 4,
                        action_delivery = {
                            type = "instant",
                            target_effects = {
                                {
                                    type = "damage",
                                    damage = { amount = 300, type = "explosion" }
                                },
                                {
                                    type = "create-entity",
                                    entity_name = "explosion"
                                }
                            }
                        }
                    }
                },
                {
                    type = "create-entity",
                    entity_name = "medium-scorchmark-tintable",
                    check_buildability = true
                },
                {
                    type = "invoke-tile-trigger",
                    repeat_count = 1
                },
                {
                    type = "destroy-decoratives",
                    from_render_layer = "decorative",
                    to_render_layer = "object",
                    include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
                    include_decals = false,
                    invoke_decorative_trigger = true,
                    decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
                    radius = 2 -- large radius for demostrative purposes
                }
            }
        }
    },
    animation = {
        filename = "__base__/graphics/entity/bullet/bullet.png",
        draw_as_glow = true,
        width = 3,
        height = 50,
        priority = "high"
    }
}

local ammo = {
    type = "ammo",
    name = "crystarion-crystal-shell",
    icon = "__base__/graphics/icons/explosive-cannon-shell.png",
    ammo_category = "crystarion-cannon-shell",
    ammo_type = {
        target_type = "position",
        clamp_position = true,
        action = {
            type = "direct",
            action_delivery = {
                type = "projectile",
                projectile = "crystarion-projectile",
                starting_speed = 1,
                inherit_speed = true,
                source_effects = {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                }
            }
        }
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-c[explosive]",
    inventory_move_sound = item_sounds.ammo_large_inventory_move,
    pick_sound = item_sounds.ammo_large_inventory_pickup,
    drop_sound = item_sounds.ammo_large_inventory_move,
    stack_size = 100,
    weight = 20 * 1000
}

local category = {
    type = "ammo-category",
    name = "crystarion-cannon-shell",
    icon = "__base__/graphics/icons/ammo-category/cannon-shell.png",
    subgroup = "ammo-category"
}

local recipe_ammo = {
    type = "recipe",
    name = "crystarion-crystal-shell",
    main_product = "crystarion-crystal-shell",
    categories = { "crafting", "crystarion-energiser-category" },
    ingredients = {
        { type = "item", name = "crystarion-crystal-splinter-stable", amount = 20 },
        { type = "item", name = "steel-plate", amount = 1 },
    },
    results = {
        { type = "item", name = "crystarion-crystal-shell", amount = 1 }
    },
    energy_required = 8,
    enabled = false,
}
data:extend({ projectile, projectile_actual, ammo, category, recipe_ammo })