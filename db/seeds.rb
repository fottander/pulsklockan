Category.delete_all
Brand.delete_all

Category.create(
  name: "Pulsklockor",
  id: 199
)

Brand.create(
  name: "Garmin",
  id: 199
)

puts "Created #{Category.count} categories"
puts "Created #{Brand.count} brands"
