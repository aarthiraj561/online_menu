class RestaurantsController < ApplicationController

  def welcome
    @restaurant = Restaurant.first
    @locations = @restaurant.locations
  end

  def get_menu_items
    if params[:location_id].present? && params[:day].present?
      @location = Location.find(params[:location_id])
      @menu_items = Location.find(params[:location_id]).menu.get_day_menu(params[:day])
    else
      redirect_to root_url, notice: "Please select branch and day."
    end
  end

  def search_menu_items
    if params[:query]
      @menu_items = Menu.get_menu_items(params[:query])
    else
      @menu_items = Menu.all
    end

    respond_to do |format|
      format.json { render json: @menu_items }
    end
  end

  def search_locations
    @menu = Menu.where(:item => params[:menu]).includes(:location)
  end

  # def new_location
  #   @restaurant = Restaurant.first
  #   @restaurant.locations.build(:restaurant_id => @restaurant.id)
  #   # respond_with @restaurant
  # end

  # def create_locations
  #   @restaurant = Restaurant.first
  #   if @restaurant.update_attributes(restaurant_params)
  #     flash[:success] = "Created/Updated Locations"
  #     redirect_to locations_path
  #   else
  #     flash[:alert] = @restaurant.errors.full_messages.first
  #     redirect_to edit_locations_path
  #   end
  # end

  # private
  # def restaurant_params
  #   params.require(:restaurant).permit(:name, locations_attributes: [:name, :address])
  # end

end
