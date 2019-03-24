class ChangeEventsSpecs < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :category, :integer, using: 'category::integer'
    rename_column :events, :category, :eventLength
  end
end
