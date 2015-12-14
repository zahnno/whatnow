class SelectsController < ApplicationController

def new
end

def create
	select = Select.create(select_params)
end


private

	def select_params
 		params.require(:project).permit(:group_size, :interest, :location, :time, :cost)
	end

end
