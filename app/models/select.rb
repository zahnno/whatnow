class Select < ActiveRecord::Base
	has_one :event

	geocoded_by :location

	def retrieve
		
		Event.near(location).first
	end

end
