class CreateGuestRequests < ActiveRecord::Migration
  def change
    create_table :guest_requests do |t|

      t.timestamps null: false
    end
  end
end
