-- locale item crystarion-projectile-turret
-- locale entity crystarion-projectile-turret
-- locale recipe crystarion-projectile-turret

local item = table.deepcopy(data.raw["item"]["rocket-turret"])
item.name = "crystarion-projectile-turret"
item.place_result = "crystarion-projectile-turret"

local entity = table.deepcopy(data.raw["ammo-turret"]["rocket-turret"])
entity.name = "crystarion-projectile-turret"
entity.minable = { mining_time = 0.2, result = "crystarion-projectile-turret" }

entity.attack_parameters = {
    type = "projectile",
    ammo_category = "crystarion-cannon-shell",
    cooldown = 30,
    projectile_creation_distance = 1,
    projectile_center = { 0, 0 },
    min_range = 15,
    range = 36,
    threatening_asteroid_penalty = -20,
    sound = {
        switch_vibration_data =
        {
            filename = "__base__/sound/fight/tank-cannon.bnvib",
        },
        game_controller_vibration_data =
        {
            low_frequency_vibration_intensity = 0.9,
            duration = 200
        },
        variations = sound_variations("__base__/sound/fight/tank-cannon", 5, 0.57),
        priority = 64
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
        { type = "item", name = "crystarion-crystal",                 amount = 5 },
        { type = "item", name = "advanced-circuit",                   amount = 4 },
        { type = "item", name = "steel-plate",                        amount = 20 },
        { type = "item", name = "iron-gear-wheel",                    amount = 20 }
    },
    results = {
        { type = "item", name = "crystarion-projectile-turret", amount = 1 }
    },
    energy_required = 8,
    enabled = false,
}

data:extend({ item, entity, recipe })
