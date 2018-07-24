class StaticPagesController < ApplicationController
  before_action :show_categogies, only: [:home, :about, :contact]

  def home; end

  def about; end

  def contact; end

  def detail; end

  def shoes; end
end
