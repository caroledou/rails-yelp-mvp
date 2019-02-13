class Admin::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end


end
