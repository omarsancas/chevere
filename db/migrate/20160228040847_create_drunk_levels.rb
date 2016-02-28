class CreateDrunkLevels < ActiveRecord::Migration
  def change
    create_table :drunk_levels do |t|
      t.string :name
      t.string :description
      t.string :icon

      t.timestamps null: false
    end
  end
end
