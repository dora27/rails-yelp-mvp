class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def edit
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
    redirect_to(restaurants_path)
  end
end



