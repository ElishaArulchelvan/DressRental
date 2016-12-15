class DressStyle < ActiveRecord::Base

    has_many :dresses, dependent: :destroy
	
	validates :style, presence: true
	
end
