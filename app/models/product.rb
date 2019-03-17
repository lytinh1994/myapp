class Product < ApplicationRecord
  has_one_attached :image

  validates :sku, presence: true, uniqueness: true
end
