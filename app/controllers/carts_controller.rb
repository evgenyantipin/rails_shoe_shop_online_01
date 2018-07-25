class CartsController < ApplicationController
  before_action :show_categogies, only: [:view_cart]

  def view_cart; end

  def payment; end

  def bill; end
end
