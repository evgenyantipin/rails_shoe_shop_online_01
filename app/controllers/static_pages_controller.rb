class StaticPagesController < ApplicationController
  def home
    @shoes = Shoe.limit(Settings.product_shoe).order price: :DESC
    @new = Shoe.limit(Settings.product_new).order updated_at: :DESC
  end

  def about; end

  def contact; end

  def detail; end

  def shoes; end
end
