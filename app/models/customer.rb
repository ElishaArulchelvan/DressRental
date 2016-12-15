class Customer < ActiveRecord::Base
   
	has_secure_password
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	has_many :comments
	has_many :orders
	validates :email, presence: true
	validates :name, presence: true
	validates :password, presence: true
	#validates :email, uniqueness: true
  
end
