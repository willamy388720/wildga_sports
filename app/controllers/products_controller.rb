class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to products_path, success: 'Produto adicionado com sucesso'
    else
      render :new
    end
  end

  private

  def params_product
    params.require(:product).permit(:description, :price, :image)
  end
end
