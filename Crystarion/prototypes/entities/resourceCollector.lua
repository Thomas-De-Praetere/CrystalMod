local entity = table.deepcopy(data.raw["agricultural-tower"]["agricultural-tower"])
entity.name = "crystarion-collector"
entity.surface_conditions = {}

local item = table.deepcopy(data.raw["item"]["agricultural-tower"])
item.name = "crystarion-collector"
item.place_result = "crystarion-collector"

local recipe = {
    type = "recipe",
    name = "crystarion-collector",
    main_product = "crystarion-collector",
    ingredients = {
        { type = "item", name = "iron-plate",         amount = 6 },
        { type = "item", name = "copper-plate",       amount = 3 },
        { type = "item", name = "electronic-circuit", amount = 3 },
        { type = "item", name = "battery",            amount = 2 },
        { type = "item", name = "crystarion-crystal", amount = 1 }
    },
    results = {
        { type = "item", name = "crystarion-collector", amount = 1 }
    },
    energy_required = 5
}

local resource = table.deepcopy(data.raw["tree"]["tree-01"])
resource.minable =
{
    mining_particle = "wooden-particle",
    mining_time = 0.55,
    result = "crystarion-crystal-ore",
    count = 4,
    mining_trigger =
    {
        {
            type = "direct",
            action_delivery =
            {
                {
                    type = "instant",
                    target_effects = leaf_sound_trigger
                }
            }
        }
    }
}

data:extend({ entity, item, recipe, resource })
