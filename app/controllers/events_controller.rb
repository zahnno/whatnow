class EventsController < ApplicationController
<<<<<<< HEAD
before_filter :load_select

def index
	@events = @select.last.allevents
end

def show
	@event = Event.find(params[:id])
end

private 

def load_select
		@select = Select.all
end

end
