-- locale item crystarion-projectile-turret
-- locale entity crystarion-projectile-turret
-- locale recipe crystarion-projectile-turret
-- locale projectile crystarion-projectile
-- locale ammo crystarion-cannon-shell
-- locale ammo-category crystarion-cannon-shell
-- locale recipe crystarion-cannon-shell

local item_sounds = require("__base__.prototypes.item_sounds")
--local helper = require("__Crystarion__.helper")

local item = table.deepcopy(data.raw["item"]["rocket-turret"])
item.name = "crystarion-projectile-turret"
item.place_result = "crystarion-projectile-turret"

local entity = table.deepcopy(data.raw["ammo-turret"]["rocket-turret"])
entity.name = "crystarion-projectile-turret"
entity.minable = { mining_time = 0.2, result = "crystarion-projectile-turret" }

entity.attack_parameters = {
    type = "projectile",
    ammo_category = "crystarion-cannon-shell",
    cooldown = 120,
    projectile_creation_distance = 1,
    projectile_center = { 0, 0 },
    min_range = 15,
    range = 36,
    threatening_asteroid_penalty = -20,
    sound = {
        variations = sound_variations("__space-age__/sound/ammo/rocket-turret-launcher", 7, 0.7, volume_multiplier("main-menu", 1.8)),
        aggregation = { max_count = 4, remove = true, count_already_playing = true },
    },
    projectile_creation_offsets = {
        util.by_pixel(34, 25 - 32),
        util.by_pixel(-34, 25 - 32),
        util.by_pixel(31, 30 - 32),
        util.by_pixel(-31, 30 - 32),
        util.by_pixel(27, 35 - 32),
        util.by_pixel(-27, 35 - 32),
        -- 32 px is the rocket projectile height, so we need to subtract it from the y offset
    }
}

local recipe = {
    type = "recipe",
    name = "crystarion-projectile-turret",
    main_product = "crystarion-projectile-turret",
    categories = { "crafting", "crystarion-energiser-category" },
    ingredients = {
        { type = "item", name = "crystarion-crystal-splinter-stable", amount = 10 },
        { type = "item", name = "crystarion-crystal", amount = 5 },
        { type = "item", name = "advanced-circuit", amount = 4 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 20 }
    },
    results = {
        { type = "item", name = "crystarion-projectile-turret", amount = 1 }
    },
    energy_required = 8,
    enabled = false,
}

local projectile = {
    type = "projectile",
    name = "crystarion-projectile",
    flags = {"not-on-map"},
    hidden = true,
    acceleration = 0,
    action =
    {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            target_effects =
            {
                {
                    type = "damage",
                    damage = {amount = 180, type = "physical"}
                },
                {
                    type = "create-entity",
                    entity_name = "explosion"
                }
            }
        }
    },
    final_action =
    {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            target_effects =
            {
                {
                    type = "create-entity",
                    entity_name = "big-explosion"
                },
                {
                    type = "nested-result",
                    action =
                    {
                        type = "area",
                        radius = 4,
                        action_delivery =
                        {
                            type = "instant",
                            target_effects =
                            {
                                {
                                    type = "damage",
                                    damage = {amount = 300, type = "explosion"}
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
    animation =
    {
        filename = "__base__/graphics/entity/bullet/bullet.png",
        draw_as_glow = true,
        width = 3,
        height = 50,
        priority = "high"
    }
}

local ammo =  {
    type = "ammo",
    name = "crystarion-cannon-shell",
    icon = "__base__/graphics/icons/explosive-cannon-shell.png",
    ammo_category = "crystarion-cannon-shell",
    ammo_type =
    {
        target_type = "position",
        clamp_position = true,
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "projectile",
                projectile = "crystarion-projectile",
                starting_speed = 1,
                inherit_speed = true,
                source_effects =
                {
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
    weight = 20*1000
}

local category = {
    type = "ammo-category",
    name = "crystarion-cannon-shell",
    icon = "__base__/graphics/icons/ammo-category/cannon-shell.png",
    subgroup = "ammo-category"
}

local recipe_ammo = {
    type = "recipe",
    name = "crystarion-cannon-shell",
    main_product = "crystarion-cannon-shell",
    categories = { "crafting", "crystarion-energiser-category" },
    ingredients = {
        { type = "item", name = "crystarion-crystal-splinter-stable", amount = 20 },
        { type = "item", name = "steel-plate", amount = 1 },
    },
    results = {
        { type = "item", name = "crystarion-cannon-shell", amount = 1 }
    },
    energy_required = 8,
    enabled = false,
}

data:extend({ item, entity, recipe, projectile, ammo, category, recipe_ammo })