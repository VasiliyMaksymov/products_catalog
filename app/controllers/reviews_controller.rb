class ReviewsController < ApplicationController

  def index
    @review = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:msg, :product_id, :user_id)
  end
end
