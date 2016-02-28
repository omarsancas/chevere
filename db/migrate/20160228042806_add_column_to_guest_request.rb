class AddColumnToGuestRequest < ActiveRecord::Migration
  def change
    add_column :guest_requests, :guest_id, :integer
    add_column :guest_requests, :product_id, :integer
    add_column :guest_requests, :quantity, :integer
  end
end
