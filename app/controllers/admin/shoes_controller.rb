class Admin::ShoesController < AdminController
  before_action :load_shoe, only: [:destroy, :edit, :update]

  def index
    @shoes = Shoe.sorted.page(params[:page]).per Settings.paginates_per
    store_location
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new shoe_params
    if @shoe.save
      flash[:info] = t("add_success")
      redirect_to admin_shoes_url
    else
      render :new
    end
  end

  def edit
    # byebug
    @shoe = Shoe.find_by id: params[:id]
  end

  def update
    if @shoe.update_attributes shoe_params
      flash[:success] = t("page_edit")
      redirect_back_or admin_shoes_url
    else
      render :edit
    end
  end

  def destroy
    if @shoe.destroy
      flash[:success] = t("delete")
    else
      flash[:danger] = t("error")
    end
    redirect_back fallback_location: root_path
  end

  private

  def shoe_params
    params.require(:shoe).permit :name, :quantity, :price, :description,
      :category_id, :img_url
  end
end
