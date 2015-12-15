class Select < ActiveRecord::Base
	has_one :event
	geocoded_by :location

	after_validation :geocode
end
