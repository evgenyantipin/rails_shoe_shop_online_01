class Admin::CategoriesController < AdminController
  def index; end

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
      redirect_to admin_users_url
    else
      render :edit
    end
  end

  def destroy
    if @category.destroy
      flash[:success] = t("delete")
    else
      flash[:danger] = t("error")
    end
    redirect_back fallback_location: root_path
  end

  private

  def category_params
    params.require(:category).permit :name, :trademark, :publisher
  end
end
