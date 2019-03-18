class CreateRecipeingredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipeingredients do |t|
      t.references :recipe
      t.references :ingredient
      t.string :unit
      t.string :amount

      t.timestamps
    end
  end
end
