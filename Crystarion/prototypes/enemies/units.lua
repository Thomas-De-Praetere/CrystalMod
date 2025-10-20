local unit = table.deepcopy(data.raw["unit"]["small-biter"])
unit.name = "crystarion-biter"
unit.dying_trigger_effect = {
    type = "create-entity",
    check_buildability = false,
    entity_name = "crystarion-resource",
}
data:extend({ unit })
