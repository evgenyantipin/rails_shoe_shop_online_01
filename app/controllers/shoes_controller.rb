class ShoesController < ApplicationController
  before_action :show_categogies, only: [:index, :show]

  def index
    @shoes = Shoe.page(params[:page]).per Settings.paginates_per
  end

  def show
    @shoe = Shoe.find_by id: params[:id]

    if @shoe
      @related = Shoe.related(@shoe.category)
      return
    else
      flash[:danger] = t "not_find"
      redirect_to root_url
    end
  end
end
