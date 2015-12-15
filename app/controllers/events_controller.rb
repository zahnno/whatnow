class EventsController < ApplicationController

	def show
		@events = Event.all
	end
end
