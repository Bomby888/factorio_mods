local machine = data.raw["assembling-machine"]["cryogenic-plant"]
if machine then
    machine.effect_receiver = { 
        base_effect = {productivity = 0.5}, 
    }
    if settings.startup["cryo-plant-module-nerf"].value then
        machine.module_slots=4
    end
    table.insert(machine.crafting_categories, "no-productivity-cooling")
end

local recipe1= data.raw["recipe"]["fluoroketone-cooling"]

if recipe1 then
    recipe1.allowed_effects={
        "speed","consumption","polution"
    }
    recipe1.ingredients = {
        {type="fluid",name = "fluoroketone-hot", amount=15}
    }
    recipe1.results = {
        {type="fluid", name= "fluoroketone-cold", amount = 10}
    }
    
end
