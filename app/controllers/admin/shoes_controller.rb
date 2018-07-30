class Admin::ShoesController < AdminController
  def index; end

  def edit
    @shoe = Shoe.find_by id: params[:id]
  end
end
