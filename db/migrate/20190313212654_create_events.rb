class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :eventStart
      t.datetime :eventEnd
      t.string :category
      t.references :user

      t.timestamps
    end
  end
end
