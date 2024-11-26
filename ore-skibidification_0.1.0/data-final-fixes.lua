local machine = data.raw["assembling-machine"]["cryogenic-plant"]

if machine then
    machine.effect_receiver = { 
        base_effect = {productivity = 0.5}, 
    }
end

local recipe1= data.raw["recipe"]["fluoroketone"]
local recipe2=data.raw["recipe"]["fluoroketone-cooling"]
if recipe1 then
    recipe1.allow_productivity = false
end
if recipe2 then
    recipe1.allow_productivity = false
end