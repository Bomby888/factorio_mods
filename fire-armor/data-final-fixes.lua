local cryogenic_plant = data.raw["assembling-machine"]["cryogenic-plant"]

if cryogenic_plant then
  -- Dodaj wbudowaną produktywność
  cryogenic_plant.base_productivity = 0.5 -- 20% wbudowanej produktywności

  -- Opcjonalnie zmień prędkość przetwarzania
  --cryogenic_plant.crafting_speed = 1.75
end