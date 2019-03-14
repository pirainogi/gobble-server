class CreateShopevents < ActiveRecord::Migration[5.2]
  def change
    create_table :shopevents do |t|
      t.references :event
      t.references :ingredient
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end
end
