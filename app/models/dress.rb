class Dress < ActiveRecord::Base

	has_many :lineitems

   belongs_to :dress_style
   
   has_many :comments, :dependent => :destroy
   
   validates :size, presence: true
   validates :colour, presence: true
   
   def average_stars
   		comments.average(:stars)
   	end
   	
   	def self.search(query)
   		where("colour LIKE?", "%#{query}%")
   	end
end
