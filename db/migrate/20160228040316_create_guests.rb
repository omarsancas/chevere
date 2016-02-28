class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :profile_picture
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
