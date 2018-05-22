class ReviewsController < ApplicationController

  def new
    @review = Review.new
    authorize @review
    @console = Console.find(params[:console_id])
  end

  def create
    @console = Console.find(params[:console_id])
    @review = Review.new(review_params)
    @review.console = @console
    authorize @review
    if @review.save
      redirect_to consoles_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end

