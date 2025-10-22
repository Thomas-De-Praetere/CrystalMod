local planet_map_gen = require("__Crystarion__/prototypes/planets/crystarion-map-gen")
local gleba = data.raw['planet']['gleba']

local crystarion_asteroids = table.deepcopy(data.raw['planet']['gleba'].asteroid_spawn_definitions)
local nauvis_crystarion_asteroids = table.deepcopy(data.raw['space-connection']['nauvis-fulgora'].asteroid_spawn_definitions)

local crystarion = {
    type = "planet",
    name = "crystarion-planet",
    subgroup = "planets",
    order = "d[crystarion]",
    gravity_pull = 10,
    orbit = {
        parent = {
            type = "space-location",
            name = "star"
        },
        distance = 30,
        orientation = 0.9
    },
    asteroid_spawn_definitions = crystarion_asteroids,
    icon = "__Crystarion__/graphics/planet/planet-icon.png",
    icon_size = 64,
    starmap_icon = "__Crystarion__/graphics/planet/planet.png",
    starmap_icon_size = 256,

    map_gen_settings = planet_map_gen.crystarion(),
    --TODO change this to energy or smth
    pollutant_type = "crystarion_resonance",
    solar_power_in_space = 400,
    surface_properties = {
        ["day-night-cycle"] = 3 * minute,
        ["solar-power"] = 100,
        -- apparently robot drain multiplier is equal to 100 * gravity / pressure, so this gives us 2x drain as desired
        -- this is not documented from what I could find; credit to factorio discord.
        gravity = 10,
        pressure = 1000
    }
}

local crystarion_connection = {
    type = "space-connection",
    name = "crystarion-nauvis",
    subgroup = "planet-connections",
    from = "nauvis",
    to = "crystarion-planet",
    asteroid_spawn_definitions = nauvis_crystarion_asteroids,
    -- no need for icon since __space-age__/data-updates.lua in automatically generates icons for space connections
    length = 15000
}

PlanetsLib.borrow_music(gleba, crystarion)
PlanetsLib:extend({ crystarion })

data:extend({ crystarion_connection })
