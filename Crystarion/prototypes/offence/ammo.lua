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
            filename = "__Crystarion__/graphics/items/magazine_light.png",
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
                            damage = { amount = 8, type = "physical" }
                        },
                        {
                            type = "activate-impact",
                            deliver_category = "bullet"
                        },
                        {
                            type = "nested-result",
                            action = {
                                type = "area",
                                radius = 2.0,
                                action_delivery = {
                                    type = "instant",
                                    target_effects = {
                                        {
                                            type = "damage",
                                            damage = { amount = 4, type = "explosion" }
                                        }
                                    }
                                }
                            }
                        },
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
        { type = "item", name = "crystarion-crystal-splinter", amount = 10 }
    },
    results = {
        { type = "item", name = "crystarion-crystal-ammo", amount = 1 }
    },
    energy_required = 0.5
}

data:extend({ item, recipe })
