class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :imgurl
      t.text :instructions
      t.integer :preptime
      t.string :dishType
      t.string :sourceUrl
      t.integer :servings
      t.boolean :whole30
      t.boolean :keto
      t.boolean :dairyFree
      t.boolean :glutenFree
      t.boolean :vegan
      t.boolean :vegetarian
      t.boolean :healthy

      t.timestamps
    end
  end
end
