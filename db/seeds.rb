products = 10.times do |x|
  Product.create({name: "book#{x+1}", count: "1".to_i, status: "在庫中"})
end