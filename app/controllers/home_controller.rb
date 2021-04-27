class HomeController < ApplicationController
  def index
    @promotions = Product.with_attached_image.news_promotions
  end
end
