class EventsController < ApplicationController
before_filter :load_select

  

	def show 
		@events = Event.where(nil)
		@events = @events.category(@select.interest)
		@events = @events.size(@select.group_size)
	end



private

	def load_select
		@select = Select.find(params[:id])
	end

end
