class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :set_locale
  before_action :show_categogies, :show_promotions, :show_trademark

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def show_categogies
    @categories_in_user = Category.order created_at: :desc
    @categories_in_admin = Category.order(created_at: :desc).page(params[:page])
                           .per Settings.paginates_per
  end

  def show_promotions
    cm = Discount.all.order(percent: :desc).pluck :shoe_id
    @promotion = Shoe.limit(Settings.product_promotion).where id: cm
  end

  def show_trademark
    @categories = Category.order :trademark
  end

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = t "require_login"
    redirect_to login_url
  end

  def load_user
    @user = User.find_by id: params[:id]

    return if @user
    flash[:danger] = t("something")
    redirect_back fallback_location: root_path
  end

  def load_category
    @category = Category.find_by id: params[:id]

    return if @category
    flash[:danger] = t("something")
    redirect_back fallback_location: root_path
  end
end
