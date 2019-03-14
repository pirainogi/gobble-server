class CreatePrepevents < ActiveRecord::Migration[5.2]
  def change
    create_table :prepevents do |t|
      t.references :event
      t.references :recipe

      t.timestamps
    end
  end
end
