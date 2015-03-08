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

  def new
    @restaurant = Restaurant.new
    3.times{ @restaurant.locations.build }
    3.times{}
  end

end
