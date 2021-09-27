class AddIdsToRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipe_ingredients, :recipe, foreign_key: true
    add_reference :recipe_ingredients, :ingredients, foreign_key: true
  end
end
