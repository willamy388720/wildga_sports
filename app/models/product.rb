class Product < ApplicationRecord
  has_one_attached :image

  scope :news_promotions, -> { where(promotion: true).limit(4).order('updated_at desc') }
end
