class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[ new create]

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.new(review_params) # Associe la revue au restaurant
    if @review.save
      redirect_to restaurant_path(@review.restaurant), notice: "The review was successfully added", status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
