class AddDrunkLevelRefToGuests < ActiveRecord::Migration
  def change
    add_reference :guests, :drunk_level, index: true
    add_foreign_key :guests, :drunk_levels
  end
end
