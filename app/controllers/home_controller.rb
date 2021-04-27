class HomeController < ApplicationController
  def index
    @promotions = Product.where(id: [1,2,3])
  end
end
