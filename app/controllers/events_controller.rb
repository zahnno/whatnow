class EventsController < ApplicationController
before_filter :load_event

  


	def show 
		
		@events = Event.where(nil)
		@events = @events.category(@select.interest)
		@events = @events.grpsize(@select.group_size).order('random()').limit(1)
		
 	end




private

	def load_event
		@event = Event.find(params[:id])
	end

end
