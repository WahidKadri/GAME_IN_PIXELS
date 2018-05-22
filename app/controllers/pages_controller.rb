class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @console = Console.new
    authorize @console
  end
end
