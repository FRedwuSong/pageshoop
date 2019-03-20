class OrderProduct < ApplicationRecord
  validate :product_must_exist
  belongs_to :order
  belongs_to :product

  private
  def product_must_exist
    product = Product.find(product_id)
    if !product.is_alive?
      order.errors.messages[:product]= ["商品庫存已⽤完, 整份訂單失敗"]
      raise ActiveRecord::Rollback
    end
  end
end
