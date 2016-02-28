class AddEventRefToGuests < ActiveRecord::Migration
  def change
    add_reference :guests, :event, index: true
    add_foreign_key :guests, :events
  end
end
