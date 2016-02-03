class Event < ActiveRecord::Base
	has_many :selects

	scope :category, -> (category) { where category: category }
	scope :grpsize, -> (grpsize) { where grpsize: grpsize }
	scope :cost, -> (cost) { where cost: cost }
	scope :is_close, -> (is_close) { where is_close: is_close}

	geocoded_by :address
	after_validation :geocode

	def retrieve		
		Event.near(address)
	end

end

