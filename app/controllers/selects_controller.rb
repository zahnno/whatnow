class SelectsController < ApplicationController

def new
	@select = Select.new
	@group = ["Solo", "Couple", "Group"]
	@select_interest = ["Theatre", "Film", "Art", "Dining", "Volunteer", "Adventure"]
end

def create
	@select = Select.new(select_params)
	if @select.save
	redirect_to event_path(@select)
end
end


private

	def select_params
 		params.require(:select).permit(:group_size, :interest, :location, :time, :cost)
	end

end
