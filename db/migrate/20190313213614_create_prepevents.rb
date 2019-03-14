class CreatePrepevents < ActiveRecord::Migration[5.2]
  def change
    create_table :prepevents do |t|
      t.reference :event_id
      t.reference :recipe_id

      t.timestamps
    end
  end
end
