class EventsController < ApplicationController
before_filter :load_event

  

	def show 
		
	end



private

	def load_event
		@event = Event.find(params[:id])
	end

end
