class Order < ApplicationRecord
  after_create :sell
  has_many :order_products
  validates_presence_of :products
  has_many :products, through: :order_products

  def sell
    products = self.products
    products.each do |product|
      product.sell
      product.sold_out
    end
  end
end
