class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

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
      redirect_to dashboards_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
 # raise
    if params[:booking][:status].present?
      @booking.update(status: params[:booking][:status])
      redirect_to dashboards_path, notice: "bookings updated"
    else
      if @booking.update(booking_params)
        redirect_to dashboards_path
      else
        render :new
      end
    end
  end



 private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
