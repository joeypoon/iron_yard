class ProductPagesController < ApplicationController

  before_action do
    @products = (1..300).to_a
  end

  def index
  end

  def show
    @product = params[:id]
  end
end
