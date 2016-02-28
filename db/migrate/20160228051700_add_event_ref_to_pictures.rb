class AddEventRefToPictures < ActiveRecord::Migration
  def change
    add_reference :pictures, :event, index: true
    add_foreign_key :pictures, :events
  end
end
