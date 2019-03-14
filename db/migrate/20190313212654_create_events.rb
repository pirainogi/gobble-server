class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :category
      t.reference :user_id

      t.timestamps
    end
  end
end
