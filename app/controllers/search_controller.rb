class SearchController < ApplicationController
  def index
    @shoes =
      if params[:term].present?
        Shoe.search(params[:term]).sorted
            .page(params[:page]).per Settings.product_new
      else
        Shoe.none.page(params[:page])
      end
  end
end
