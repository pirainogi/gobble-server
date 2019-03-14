class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :profile_pic
      t.text :bio
      t.string :allergies
      t.string :diet

      t.timestamps
    end
  end
end
