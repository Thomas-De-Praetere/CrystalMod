-- locale recipe crystarion-cannon-shell
-- locale recipe crystarion-explosive-cannon-shell
-- locale recipe crystarion-uranium-cannon-shell
-- locale recipe crystarion-explosive-uranium-cannon-shell
-- locale ammo crystarion-cannon-shell
-- locale ammo crystarion-explosive-cannon-shell
-- locale ammo crystarion-uranium-cannon-shell
-- locale ammo crystarion-explosive-uranium-cannon-shell


-- creates alternate recipe to make cannon shells compatible with the projectile turret. It mainly
-- removes the explosion on impact
function create(shell)
    --Create new item for shell
    local item = table.deepcopy(data.raw["ammo"][shell])
    local new_item_name = "crystarion-" .. shell
    item.name = new_item_name
    item.ammo_category = "crystarion-cannon-shell"

    --Create the new projectile, but remove the collision_box
    local old_projectile_name = item.ammo_type.action.action_delivery.projectile
    local projectile = table.deepcopy(data.raw["projectile"][old_projectile_name])
    local new_projectile_name = "crystarion-" .. old_projectile_name
    projectile.name = new_projectile_name
    projectile.collision_box = nil
    local original_effect = projectile.action.action_delivery.target_effects
    projectile.action.action_delivery.target_effects = {
        {
            type = "nested-result",
            action = {
                type = "area",
                radius = 2,
                action_delivery = {
                    type = "instant",
                    target_effects = original_effect
                }
            }
        },
    }

    --rewire the new projectile
    item.ammo_type.action.action_delivery.projectile = new_projectile_name

    --recipe
    local recipe = {
        type = "recipe",
        name = new_item_name,
        enabled = false,
        energy_required = 2,
        ingredients = {
            { type = "item", name = shell, amount = 1 },
            { type = "item", name = "electronic-circuit", amount = 1 }
        },
        results = { { type = "item", name = new_item_name, amount = 1 } }
    }

    data:extend({ item, recipe, projectile })
end

create("cannon-shell")
create("explosive-cannon-shell")
create("uranium-cannon-shell")
create("explosive-uranium-cannon-shell")