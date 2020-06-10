class ReviewsController < ApplicationController
  before_action :set_place, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.guest = current_user
    @review.place = @place
    authorize(@review)
    if @review.save!
      redirect_to place_path(@place), notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
    authorize(@place, :post?)
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
