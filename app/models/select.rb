class Select < ActiveRecord::Base
	has_one :event

	geocoded_by :location

	after_validation :geocode

	def retrieve
		
		Event.near(location).category(interest).grpsize(group_size).sample

	end
end
