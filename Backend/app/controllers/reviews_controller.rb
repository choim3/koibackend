class ReviewsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create]

  def index
      reviews = Review.all
      render json: reviews
  end

  def show
    review = Review.find_by(id:params[:id])
    render json: review
  end

  def create
    review = Review.create(review_params)
    render json: review
  end

  private

  def review_params
    params.permit(:rating, :user_id, :menu_item_id)
  end
end
