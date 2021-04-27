class HomeController < ApplicationController
  def index
    @promotions = Product.news_promotions
  end
end
