class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update]

  def index
    @products = Product.with_attached_image.all
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to products_path, success: 'Produto adicionado com sucesso!'
    else
      render :new
    end
  end

  def edit; end

  def update
    old_price = @product.price
    if @product.update(params_product)
      ProductService.new(@product, old_price).charge
      redirect_to product_path(@product), success: 'Produto atualizado com sucesso!'
    else
      render :edit
    end
  end

  private

  def set_product
    @product = Product.with_attached_image.find(params[:id])
  end

  def params_product
    params.require(:product).permit(:description, :price, :image, :about)
  end
end
