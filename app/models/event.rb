class Event < ActiveRecord::Base
	has_many :selects

	scope :category, -> (category) { where category: category }
end
