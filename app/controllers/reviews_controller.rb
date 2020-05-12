class ReviewsController < ApplicationController
  def new
    @shelter = Shelter.find(params[:id])
  end

  def create
    shelter = Shelter.find(params[:id])
    review = shelter.reviews.create!(review_params)

    redirect_to "/shelters/#{shelter.id}"
  end

  def edit
    @review = Review.find(params[:review_id])
  end

  def update
    @review = Review.find(params[:review_id])
    @review.update(review_params)

    redirect_to "/shelters/#{@review.shelter_id}"
  end

  private
  def review_params
    params.permit(:title, :rating, :content, :image)
  end
end
