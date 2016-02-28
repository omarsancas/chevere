class Product < ActiveRecord::Base
  has_many :guest_request
  has_many :guest, through: :guest_request
end
