-- locale land-mine crystarion-land-mine
-- locale item crystarion-land-mine
-- locale recipe crystarion-land-mine

local helper = require("__Crystarion__.helper")

local entity = table.deepcopy(data.raw["land-mine"]["land-mine"])
entity.name = "crystarion-land-mine"
entity.icons = helper.alternate(
        { icon = "__base__/graphics/icons/land-mine.png" },
        helper.icons("planet")
)
entity.flags = {
    "placeable-player",
    "placeable-enemy",
    "player-creation",
    "not-on-map"
}
entity.minable = { mining_time = 0.5, result = "crystarion-land-mine" }
entity.action = {
    type = "direct",
    action_delivery = {
        type = "instant",
        source_effects = {
            {
                type = "nested-result",
                affects_target = true,
                action = {
                    type = "area",
                    radius = 4,
                    force = "enemy",
                    action_delivery = {
                        type = "instant",
                        target_effects = {
                            {
                                type = "damage",
                                damage = { amount = 150, type = "explosion" }
                            },
                            {
                                type = "create-sticker",
                                sticker = "stun-sticker"
                            }
                        }
                    }
                }
            },
            {
                type = "create-entity",
                entity_name = "explosion"
            },
            {
                type = "damage",
                damage = { amount = 250, type = "explosion" }
            }
        }
    }
}

local item = table.deepcopy(data.raw["item"]["land-mine"])
item.name = "crystarion-land-mine"
item.icons = helper.alternate(
        { icon = "__base__/graphics/icons/land-mine.png" },
        helper.icons("planet")
)
item.place_result = "crystarion-land-mine"

local recipe = {
    type = "recipe",
    name = "crystarion-land-mine",
    main_product = "crystarion-land-mine",
    ingredients = {
        { type = "item", name = "crystarion-crystal-splinter", amount = 20 }
    },
    results = {
        { type = "item", name = "crystarion-land-mine", amount = 1 }
    },
    energy_required = 0.5,
    enabled = false,
}

data:extend({ entity, item, recipe })
