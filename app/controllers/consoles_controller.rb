class ConsolesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @consoles = policy_scope(Console)
    @consoles = Console.where(brand: params[:console][:brand]) if (params[:console].present? && params[:console][:brand].present?)
    @consoles = Console.where(model: params[:console][:model]) if (params[:console].present? && params[:console][:model].present?)

    # @consoles = Console.where.not(latitude: nil, longitude: nil)

    @markers = @consoles.map do |console|
       {
         lat: console.latitude,
         lng: console.longitude,
         icon: ActionController::Base.helpers.asset_path('Mario_pixel.png'),
         infoWindow: { content: render_to_string(partial: "/consoles/shared/map_box", locals: { console: console }) }
       }
    end
  end

  def show
    @console = Console.find(params[:id])
    @booking = Booking.new
    authorize @console
  end

  def new
    @brands = Console.distinct.pluck(:brand)
    @models = Console.distinct.pluck(:model)
    @console = Console.new
    authorize @console
  end

  def create
    @console = Console.new(console_params)
    @console.user = current_user
    authorize @console
    if @console.save
      redirect_to consoles_path
    else
      render :new
    end
  end

  def edit
    @console = Console.find(params[:id])
    authorize @console
  end

  def update
    @console = Console.find(params[:id])
    authorize @console
    if @console.update(console_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def console_params
    params.require(:console).permit(:brand, :model, :number_of_pads, :description, :address, :price, :photo)
  end
end
