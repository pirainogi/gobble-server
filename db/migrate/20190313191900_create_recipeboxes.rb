class CreateRecipeboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipeboxes do |t|
      t.reference :user_id
      t.reference :recipe_id

      t.timestamps
    end
  end
end
