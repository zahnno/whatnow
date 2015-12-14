class SelectsController < ApplicationController

def new
	@select = Select.new
end

def create
	@select = Select.new(select_params)
end


private

	def select_params
 		params.require(:select).permit(:group_size, :interest, :location, :time, :cost)
	end

end
