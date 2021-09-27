class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.recipe_id belongs_to
      t.ingredient_id belongs_to 

      t.timestamps
    end
  end
end
