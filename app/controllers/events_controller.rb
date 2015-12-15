class EventsController < ApplicationController
before_filter :load_select
	def show 
		@events = Event.all
	end

private

	def load_select
		@select = Select.find(params[:id])
	end
end
