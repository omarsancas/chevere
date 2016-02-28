class GuestRequest < ActiveRecord::Base
  belongs_to :product
  belongs_to :guest
end
