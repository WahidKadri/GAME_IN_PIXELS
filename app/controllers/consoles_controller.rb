class ConsolesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @consoles = policy_scope(Console)
  end

  def show
    @console = Console.find(params[:id])
    authorize @console
  end

  def new
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

  private

  def console_params
    params.require(:console).permit(:brand, :model, :number_of_pads, :description, :address, :price, :photo)
  end
end
