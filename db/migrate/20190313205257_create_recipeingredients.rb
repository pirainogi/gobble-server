class CreateRecipeingredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipeingredients do |t|
      t.reference :recipe_id
      t.reference :ingredient_id
      t.string :unit
      t.integer :amount

      t.timestamps
    end
  end
end
