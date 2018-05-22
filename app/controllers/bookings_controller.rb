class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
    @console = Console.find(params[:console_id])
  end

  def create
    @console = Console.find(params[:console_id])
    @booking = Booking.new(booking_params)
    @booking.console = @console
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

 private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
