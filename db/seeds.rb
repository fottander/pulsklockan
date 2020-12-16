Product.delete_all
Category.delete_all
Brand.delete_all
Admin.delete_all

Admin.create(
  email: "info@admin.se",
  password: "123456",
  id: 99999
)

puts "Created #{Admin.count} admins"
puts "Created #{Category.count} categories"
puts "Created #{Brand.count} brands"
puts "Created #{Product.count} products"
