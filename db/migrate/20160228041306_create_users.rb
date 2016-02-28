class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthday
      t.string :gender
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :avatar

      t.timestamps null: false
    end
  end
end
