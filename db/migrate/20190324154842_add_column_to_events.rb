class AddColumnToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :eventEnd, :datetime
    rename_column :events, :date, :eventStart
    remove_column :events, :eventLength
  end
end
