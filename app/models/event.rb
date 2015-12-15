class Event < ActiveRecord::Base
	has_many :selects

	scope :category, -> (category) { where category: category }
	scope :grpsize, -> (grpsize) { where grpsize: grpsize }
	scope :cost, -> (cost) { where cost: cost }
end
