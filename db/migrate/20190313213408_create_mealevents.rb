class CreateMealevents < ActiveRecord::Migration[5.2]
  def change
    create_table :mealevents do |t|
      t.references :event
      t.references :recipe

      t.timestamps
    end
  end
end
