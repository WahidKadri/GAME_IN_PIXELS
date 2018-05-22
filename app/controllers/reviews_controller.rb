class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    # @console = @booking.console
    @review = @booking.reviews.new
    # @booking = Booking.find_by(user_id: current_user)
    authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])


    # @console = Console.find(params[:console_id])
    @review = Review.new(review_params)
    @review.booking = @booking
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

