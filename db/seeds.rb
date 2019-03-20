products = 10.times do |x|
  Product.create({name: "book#{x+1}", count: "1".to_i, is_alive: true})
end