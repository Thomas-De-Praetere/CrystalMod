local helper = require("__Crystarion__.helper")

local item = table.deepcopy(data.raw["ammo"]["firearm-magazine"])
item.name = "crystarion-shard"
item.icons = helper.alternate(
    { icon = "__base__/graphics/icons/firearm-magazine.png" },
    helper.icons.planet
)
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
    name = "crystarion-shard",
    main_product = "crystarion-shard",
    ingredients = {
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-shard", amount = 2 }
    },
    energy_required = 1
}

data:extend({ item, recipe })
