local damaging_recipe_name = {
    ["crystarion-destabilize-crystal"] = 1,
    ["crystarion-destabilize-crystal-red"] = 1,
    ["crystarion-destabilize-crystal-green"] = 1,
    ["crystarion-destabilize-crystal-blue"] = 1
}
function handle_craft(event)
    if damaging_recipe_name[event.recipe.name] ~= nil then
        local player_index = event.player_index
        local player = game.players[player_index]
        if player.character then
            player.character.damage(5, "enemy", "physical")
        end
    end
end

script.on_event(defines.events.on_player_crafted_item, handle_craft)
