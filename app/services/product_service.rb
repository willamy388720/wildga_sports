class ProductService
  def initialize(product, old_price)
    @product = product
    @old_price = old_price
  end

  def charge
    add_promotion
  end

  private

  def add_promotion
    return unless @old_price > @product.price

    @product.update(
      promotion: true,
      pecent_promotion: percent_promotion.round(2)
    )
  end

  def percent_promotion
    discount = @old_price - @product.price
    (discount * 100) / @old_price
  end
end
