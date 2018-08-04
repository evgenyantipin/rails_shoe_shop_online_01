class ShoesController < ApplicationController
  before_action :load_shoe, only: :show
  def index
    @shoes = Shoe.page(params[:page]).per Settings.paginates_per
  end

  def show
    @shoe = Shoe.find_by id: params[:id]

    if @shoe
      flash.now[:danger] = t "out_of_stock" if @shoe.quantity.zero?
      @related = Shoe.limit(Settings.product_new).related @shoe.category
      return
    else
      flash[:danger] = t "not_find"
      redirect_to root_url
    end
  end
end
