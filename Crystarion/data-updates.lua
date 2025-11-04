local furnaces = data.raw["furnace"]
local fluid_box = data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes[2]
for i,furnace in ipairs(furnaces) do
    --if furnace.fluid_boxes == nil or furnace.fluid_boxes == {} then
        furnace.fluid_boxes.add(table.deepcopy(fluid_box))
    --end
end