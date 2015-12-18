class SelectsController < ApplicationController

def new
	@select = Select.new
	@group = ["Solo", "Couple", "Group"]
	@select_interest = ["Theatre", "Film", "Art", "Dining", "Volunteer", "Adventure", "Sports"]
	@cost = ["Free", "$", "$$", "$$$"]
end

def create
	@select = Select.new(select_params)
	
	if @select.save
		redirect_to select_path(@select)
	end
end

def show
	@select = Select.find(params[:id])
	@select.reverse_geocode
	@the_one = @select.retrieve 
end

def location_bar
	
end


private

	def select_params
 		params.require(:select).permit(:group_size, :interest, :location, :cost, :latitude, :longitude)
	end

end
