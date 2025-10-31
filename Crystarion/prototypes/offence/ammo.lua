local helper = require("__Crystarion__.helper")

local item = table.deepcopy(data.raw["ammo"]["firearm-magazine"])
item.name = "crystarion-crystal-ammo"

item.icon = "__Crystarion__/graphics/items/magazine.png"
item.pictures = {
    layers = {
        {
            size = 64,
            filename = "__Crystarion__/graphics/items/magazine.png",
            scale = 0.5,
            mipmap_count = 4
        },
        {
            draw_as_light = true,
            size = 64,
            filename = "__Crystarion__/graphics/items/magazine-light.png",
            scale = 0.5
        }
    }
}

item.ammo_type = {
    action = {
        {
            type = "direct",
            action_delivery = {
                {
                    type = "instant",
                    source_effects = {
                        {
                            type = "create-explosion",
                            entity_name = "explosion-gunshot",
                            only_when_visible = true
                        }
                    },
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "explosion",
                            offsets = { { 0, 1 } },
                            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
                            only_when_visible = true
                        },
                        {
                            type = "damage",
                            damage = { amount = 6, type = "explosion" }
                        },
                        {
                            type = "activate-impact",
                            deliver_category = "bullet"
                        }
                    }
                }
            }
        }
    }
}

local recipe = {
    type = "recipe",
    name = "crystarion-crystal-ammo",
    main_product = "crystarion-crystal-ammo",
    ingredients = {
        { type = "item", name = "crystarion-crystal-splinter", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-ammo", amount = 2 }
    },
    energy_required = 1
}

data:extend({ item, recipe })
