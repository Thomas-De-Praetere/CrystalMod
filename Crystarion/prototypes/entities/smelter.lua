local helper = require("__Crystarion__.helper")

local icons = helper.alternate(
        { icon = "__Crystarion__/graphics/icons/smelter.png" },
        helper.icons("planet")
)

local fluid_box = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[2])
fluid_box.pipe_connections[1].position = { -0.5, 0.5 }

local entity = table.deepcopy(data.raw["furnace"]["stone-furnace"])
entity.crafting_categories = { "crystarion-smelter-category" }
entity.name = "crystarion-furnace"
entity.minable = { mining_time = 0.2, result = "crystarion-furnace" }
entity.icons = icons
entity.fluid_boxes = { fluid_box }

entity.graphics_set.animation.layers[1].filename = "__Crystarion__/graphics/entity/smelter/smelter.png"

local item = table.deepcopy(data.raw["item"]["stone-furnace"])
item.name = "crystarion-furnace"
item.place_result = "crystarion-furnace"
item.icons = icons

local recipe = {
    type = "recipe",
    name = "crystarion-furnace",
    main_product = "crystarion-furnace",
    ingredients = {
        { type = "item", name = "stone", amount = 5 },
    },
    results = {
        { type = "item", name = "crystarion-furnace", amount = 1 }
    },
    energy_required = 0.5,
    enabled = false,
}

data:extend({ entity, item, recipe })
