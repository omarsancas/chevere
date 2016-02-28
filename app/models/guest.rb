class Guest < ActiveRecord::Base
  has_many :guest_request
  has_many :products, through: :guest_request
end
