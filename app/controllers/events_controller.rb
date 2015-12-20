class EventsController < ApplicationController


  


	def show 
		
 	end

 	def retrieve
 		@events = Event.where(nil)
		@events = @events.category(@select.interest)
		@event = @events.grpsize(@select.group_size).order('random()').limit(1)
	end

end
