class Admin::CategoriesController < AdminController
  before_action :load_category, only: [:destroy, :edit, :update]

  def index
    store_location
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:info] = t("add_success")
      redirect_to admin_categories_url
    else
      render :new
    end
  end

  def edit
    @category = Category.find_by id: params[:id]
  end

  def update
    if @category.update_attributes category_params
      flash[:success] = t("page_edit")
      redirect_back_or admin_categories_url
    else
      render :edit
    end
  end

  private

  def category_params
    params.require(:category).permit :name, :trademark, :publisher, :status
  end
end
