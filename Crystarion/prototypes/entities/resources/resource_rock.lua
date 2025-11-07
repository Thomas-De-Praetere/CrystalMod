local function create_resource(size, results, pictures_type, pictures_name)
    local resource_ore = table.deepcopy(data.raw["simple-entity"]["big-rock"])
    resource_ore.name = "crystarion-resource-" .. size
    resource_ore.type = "plant"
    resource_ore.growth_ticks = 1
    resource_ore.agricultural_tower_tint = {
        primary = { r = 0.9, g = 1.0, b = 0.9, a = 1.0 },
        secondary = { r = 0.8, g = 0.9, b = 1.0, a = 1.0 },
    }
    resource_ore.minable = {
        mining_particle = "stone-particle",
        mining_time = 0.5,
        results = { { type = "item", name = "crystarion-crystal-ore", amount = results } },
    }
    resource_ore.collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } }
    resource_ore.selection_box = { { -0.7, -0.7 }, { 0.7, 0.7 } }
    local grey_mask = { 0.38, 0.54, 0.81 }

    resource_ore.pictures = table.deepcopy(data.raw[pictures_type][pictures_name]).pictures
    for i, pic in ipairs(resource_ore.pictures) do
        pic.tint = grey_mask
    end
    return resource_ore
end

data:extend({
    create_resource("small", 2, "optimized-decorative", "small-rock"),
    create_resource("medium", 4, "optimized-decorative", "medium-rock"),
    create_resource("big", 6, "simple-entity", "big-rock"),
    create_resource("behemoth", 10, "simple-entity", "huge-rock"),
})
