class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :imgurl
      t.string :aisle

      t.timestamps
    end
  end
end
