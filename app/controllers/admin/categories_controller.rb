class Admin::CategoriesController < AdminController
  def index; end

  def edit
    @category = Category.find_by id: params[:id]
  end
end
