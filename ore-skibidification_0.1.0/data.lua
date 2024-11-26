local recipe2 = {
  type = "recipe",
  name = "ore-skibidification",
  icon = "__ore-skibidification__/graphics/icons/recipe/ore-skibidi.png",
  category = "crushing",
  subgroup = "space-processing",
  enabled = false,
  energy_required = 1,
  allowed_effects = {
    "productivity"
},
  icons = {  -- Poprawne przypisanie
    {
      icon = "__ore-skibidification__/graphics/icons/recipe/ore-skibidi.png",
      icon_size = 64,  -- Możesz dostosować rozmiar ikony
      tint = {r = 1, g = 0, b = 0, a = 0.3}  -- Kolorowanie ikony
    }
  },
  ingredients = {
    {type = "item", name = "iron-ore", amount = 2}
  },
  results = {
    {type = "item", name = "copper-ore", amount = 2}
  },
  main_product = ""
}

data:extend{recipe2}

table.insert(data.raw["technology"]["rocket-silo"].effects, {type = "unlock-recipe", recipe = "ore-skibidification"})
