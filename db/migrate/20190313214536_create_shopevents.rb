class CreateShopevents < ActiveRecord::Migration[5.2]
  def change
    create_table :shopevents do |t|
      t.reference :event_id
      t.reference :ingredient_id
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end
end
