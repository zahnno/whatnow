class Select < ActiveRecord::Base
	has_one :event

	geocoded_by :location

	after_validation :geocode


	reverse_geocoded_by :latitude, :longitude, :address => :location

	def retrieve
		Event.near(location).category(interest).grpsize(group_size).cost(cost).sample
	end

	def get_meetup_events
		params = { category: '1',
	      city: 'toronto',
	      country: 'CA',
	      status: 'upcoming',
	      format: 'json',
	      page: '50'}
	    meetup_api = MeetupApi.new
	    events = meetup_api.open_events(params)
		
	end
end
