class Admin::UsersController < AdminController
  before_action :logged_in_user, only: [:index, :destroy]
  before_action :load_user, only: [:destroy]

  def index
    @users = User.user("user").page(params[:user_page])
                 .per Settings.per_page
    @admins = User.user("admin").page(params[:admin_page])
                  .per Settings.per_page
    @employees = User.user("employee").page(params[:employee_page])
                     .per Settings.per_page
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:info] = t("add_success")
      redirect_to admin_users_url
    else
      render :new
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = t("delete_success")
    else
      flash[:danger] = t("delete_fail")
    end
    redirect_back fallback_location: root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :birth_date, :phone,
      :email, :address, :password, :password_confirmation, :picture, :role)
          .merge!(activated: "1")
  end
end
