data:extend({
    {
      type = "recipe-category",
      name = "no-productivity-cooling" 
    }
  })
  local recipes_to_update = {"fluoroketone", "fluoroketone-cooling"}

  for _, recipe_name in pairs(recipes_to_update) do
    local recipe = data.raw.recipe[recipe_name]
    if recipe then
      recipe.category = "no-productivity-cooling" -- Przypisanie do nowej kategorii
    end
  end