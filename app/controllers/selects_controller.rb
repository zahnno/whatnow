class SelectsController < ApplicationController
before_filter :load_events

def new
	@select = Select.new
	@group = ["Solo", "Couple", "Group"]
	@select_interest = ["Theatre", "Film", "Art", "Dining", "Volunteer", "Adventure", "Sports"]
	@cost = ["Free", "$", "$$", "$$$"]
end

def create
	@select = Select.new(select_params)
	@select.reverse_geocode
	@event = @select.retrieve

	respond_to do |format|
		format.html do
			if @select.save
				if request.xhr?
					render @event
				else 
					redirect_to events_path(@events)
				end
			end
		end
	end	
end

def index 
	@select = Select.new(select_params)
	@select.save
	@events = @events.category(@select.interest)
	@event = @events.grpsize(@select.group_size).order('random()').limit(1)
	

	if @select.save
		
		redirect_to select_path(@select)

	respond_to do |format|
		format.html do
				if request.xhr?
					render @event
				else 
					redirect_to events_path(@events)
				end
		end
	end
<<<<<<< HEAD

=======
>>>>>>> b97695e43d1f6d5aee51517726b8f2cd4a7ccaa2
	end
end

def show
	@select = Select.find(params[:id])

	@events = @select.get_meetup_events 

	@select.reverse_geocode

	@the_one = @select.retrieve 
end

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


