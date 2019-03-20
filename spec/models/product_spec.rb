require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "商品(product)的規格" do

    let(:product) { Product.create!( :name => "book" ) }

    it "新建一個商品時，有name，預設數量==1，商品狀態為在庫中" do
      expect(product.name).to eq("book")
      expect(product.count) == (1)
      expect(product.name) == ("在庫中")
    end

    it "當商品數量為零時，商品狀態為已售完" do
      product.sell(1)
      expect(product.status).to eq("已售完")
    end
  end
end
