class Event < ActiveRecord::Base
	has_many :selects

	scope :category, -> (category) { where category: category }
	scope :size, -> (size) { where size: size }
	scope :cost, -> (cost) { where cost: cost }
end
