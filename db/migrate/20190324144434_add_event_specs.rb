class AddEventSpecs < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :eventType, :string
    add_column :events, :name, :string 
  end
end
