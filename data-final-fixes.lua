if settings.startup["electric-furnace-as-assembling-machine-all-furnaces"].value then
  for recipe_name, recipe in pairs(data.raw.recipe) do
    if string.find(recipe_name, "recycling") and recipe.hidden then
      recipe.hidden = false
      recipe.hide_from_player_crafting = true
    end
  end
end
