Category.delete_all
Brand.delete_all

Category.create(
  name: "Pulsklockor",
  id: 199
)

Brand.create(
  id: 199,
  name: 'Garmin'
)

puts "Created #{Brand.count} brands"
puts "Created #{Category.count} categories"
