class MarketController < ApplicationController
  def index
    @products = Product.order(:review_count)
  end
end
