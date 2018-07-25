class ShoesController < ApplicationController
  before_action :show_categogies, only: [:index, :show]

  def index
    @shoes = Shoe.page(params[:page]).per Settings.paginates_per
  end

  def show; end
end
