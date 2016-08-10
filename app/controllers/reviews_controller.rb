class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_review, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def update
    if @review.update(review_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to restaurant_path(@restaurant)
  end

  private

    def find_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:content, :rating, :restaurant_id)
    end
end
