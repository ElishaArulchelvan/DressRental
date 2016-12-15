class Lineitem < ActiveRecord::Base

	belongs_to :cart
	belongs_to :dress
	belongs_to :orders
	
end
