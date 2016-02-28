class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :cover_photo
      t.datetime :start_time
      t.string :place

      t.timestamps null: false
    end
  end
end
