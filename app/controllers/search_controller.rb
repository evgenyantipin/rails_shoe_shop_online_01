class SearchController < ApplicationController
  def index
    @shoes =
      Shoe.search(params[:term]).sorted
          .page(params[:page]).per Settings.product_new
  end
end
