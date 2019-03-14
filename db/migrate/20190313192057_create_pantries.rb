class CreatePantries < ActiveRecord::Migration[5.2]
  def change
    create_table :pantries do |t|
      t.reference :user_id
      t.reference :ingredient_id
      t.boolean :in_stock
      t.boolean :grocerylist
      t.integer :amount
      t.string :unit 

      t.timestamps
    end
  end
end
