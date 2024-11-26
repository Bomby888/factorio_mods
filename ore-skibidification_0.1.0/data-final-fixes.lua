local machine = data.raw["assembling-machine"]["cryogenic-plant"]

if machine then
    machine.effect_receiver = { 
        base_effect = {productivity = 0.5}, 
    }
end
