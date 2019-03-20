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

  def sell
    self.count = self.count - 1
  end

  def sold_out
    self.is_alive = false if self.count == 0
  end
end
