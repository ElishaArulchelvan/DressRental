class Cart < ActiveRecord::Base

	has_many :lineitems
	
	def add_dress(dress_id)
		current_item = lineitems.find_by_dress_id(dress_id)
		if current_item
			current_item.quantity +=1
		else
			current_item = lineitems.new(dress_id: dress_id)
			current_item.quantity = 1
		end
			current_item
	end
end
