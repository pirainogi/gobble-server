class CreateRecipeboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipeboxes do |t|
      t.references :user
      t.references :recipe

      t.timestamps
    end
  end
end
