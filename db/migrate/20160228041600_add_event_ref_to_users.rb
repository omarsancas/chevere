class AddEventRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :event, index: true
    add_foreign_key :users, :events
  end
end
