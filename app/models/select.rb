class Select < ActiveRecord::Base
	has_one :event

	geocoded_by :location

	after_validation :geocode


	reverse_geocoded_by :latitude, :longitude, :address => :location

	def retrieve
		Event.near(location).category(interest).grpsize(group_size).cost(cost).sample
	end

	# def get_meetup_events
	# 	params = { category: '1',
	#       city: 'toronto',
	#       country: 'CA',
	#       status: 'upcoming',
	#       format: 'json',
	#       page: '20'}
	#     meetup_api = MeetupApi.new
	#     events = meetup_api.open_events(params)
	#     result = events['results'].first
	#     event1 = Event.create(
	#     	name: result['name'], 
	#     	# address: [result['venue']['address_1'], result['venue']['city']], 
	#     	address: "Toronto, ON",
	#     	eventtime: result['time'], 
	#     	phone: result['venue']['phone'], 
	#     	cost: result['fee'], 
	#     	link: result['event_url'], 
	#     	photo: result['photo_url'],
	#     	category: "Art",
	#     	grpsize: "Group",
	#     	cost: "Free"
	#     	)

	# end

	def eventbrite_events
		@eb = EventbriteAPI.new
		@event1 = @eb.events(id: 12390429)
		byebug
	end
end
