class PagesController < ApplicationController
  def home
    @console = Console.new
    authorize @console
  end
end
