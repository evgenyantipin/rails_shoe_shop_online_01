class Admin::UsersController < AdminController
  before_action :logged_in_user, only: [:index, :edit, :destroy]
  before_action :load_user, only: [:edit]
  def index; end

  def edit; end

  private

  def load_user
    @user = User.find_by id: params[:id]

    return if @user
    flash[:danger] = t("something")
    redirect_to admin_path
  end

  def destroy
    if @user.destroy
      flash[:success] = t("del_user")
    else
      flash[:danger] = t("error")
    end
    redirect_to admin_users_url
  end
end
