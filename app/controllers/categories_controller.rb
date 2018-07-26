class CategoriesController < ApplicationController
  def show
    @category = Category.find_by id: params[:id]

    if @category
      @related = Shoe.related(@category.id).page(params[:page])
                     .per Settings.paginates_per
      return
    else
      flash[:danger] = t "not_find"
      redirect_to root_url
    end
  end
end
