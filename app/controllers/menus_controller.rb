class MenusController < ApplicationController
	def new
		@menu = Menu.new(:location_id => params[:location_id])		
	end

	def create
		@menu = Menu.create(menu_params)
		if @menu
			redirect_to menus_path(:location_id => params[:menu][:location_id]), notice: "Menu successfully created."
		else
			flash[:alert] = @menu.errors.full_messages.first
			redirect_to root_url
		end
	end

	def index
		@location = Location.find(params[:location_id])
		@menu_list = @location.menus
	end

	private
	def menu_params
		params.require(:menu).permit(:item, :type_of, :day, :location_id)
	end
end
