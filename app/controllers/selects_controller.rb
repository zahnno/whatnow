class SelectsController < ApplicationController
before_filter :load_events

layout false, only: [:show]

#Creating select filters/scopes
def new
	@select = Select.new
	@group = ["Solo", "Couple", "Group"]
	@select_interest = ["Theatre", "Film", "Art", "Dining", "Volunteer", "Adventure", "Sports"]
	@cost = ["Free", "$", "$$", "$$$"]
	Event.destroy_all
end

#Select events based on user choice, calling yelp api in Select model
def create
	@select = Select.new(select_params)
	@select.reverse_geocode
	@events = @select.allevents
	@event = @select.retrieve

	respond_to do |format|
		format.html do
			if @select.save
				if request.xhr?
					render @event, locals: {events: @events}
				else 
					redirect_to events_path(@events)
				end
			end
		end
	end	
end

#Location convert to display address
def location_bar
	result = Geocoder.search("#{params['latitude']},#{params['longitude']}")
	address = result.first.data["formatted_address"]
	render html: address
end


private

	def select_params
 		params.require(:select).permit(:group_size, :interest, :location, :cost, :latitude, :longitude)
	end

	def load_events
		@events = Event.all
	end

end


