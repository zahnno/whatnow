class EventsController < ApplicationController

def index
	
end

def show
	@events = Event.allevents
end


end
