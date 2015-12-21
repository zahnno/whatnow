class Event < ActiveRecord::Base
	has_many :selects

	scope :category, -> (category) { where category: category }
	scope :grpsize, -> (grpsize) { where grpsize: grpsize }
	scope :cost, -> (cost) { where cost: cost }

	geocoded_by :address
	after_validation :geocode

	def retrieve		
		# Event.near(location).category(interest).grpsize(group_size).sample
	end
end
