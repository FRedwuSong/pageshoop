class Product < ApplicationRecord
  has_many :order_products
  has_many :orders, through: :order_products

  def status
    if is_alive?
      "在庫中"
    else
      "已售完"
    end
  end
end
