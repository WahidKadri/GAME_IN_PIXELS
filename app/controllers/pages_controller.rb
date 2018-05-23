class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @brands = Console.distinct.pluck(:brand)
    @models = Console.distinct.pluck(:model)
    @console = Console.new
    authorize @console
  end
end
