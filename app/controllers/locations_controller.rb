class LocationsController < ApplicationController
	def new
		@location = Location.new(:restaurant_id => params[:restaurant_id])
	end

	def create
		@location = Location.new(location_params)
		if @location.save
			redirect_to locations_path(:restaurant_id => params[:location][:restaurant_id]), notice: "Branch successfully created."
		else
			flash[:alert] = @location.errors.full_messages.first
			redirect_to locations_path(:restaurant_id => params[:location][:restaurant_id] )
		end
	end

	def index
		@restaurant = Restaurant.find(params[:restaurant_id])
		@locations = @restaurant.locations
	end

	private
	def location_params
		params.require(:location).permit(:name, :address, :restaurant_id)
	end

end
