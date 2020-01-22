Category.delete_all
Brand.delete_all

Category.create(
  name: "Pulsklockor",
  id: 199
)

Category.create(
  name: "Aktivitetsarmband",
  id: 198
)

Category.create(
  name: "Smarta klockor",
  id: 197
)

Category.create(
  name: "Pulsmätare",
  id: 196
)

Category.create(
  name: "Bäst i test",
  id: 195
)

Brand.create(
  name: "Garmin",
  id: 199
)

Brand.create(
  name: "Suunto",
  id: 198
)

Brand.create(
  name: "Apple",
  id: 197
)

Brand.create(
  name: "Fitbit",
  id: 196
)

Brand.create(
  name: "Polar",
  id: 195
)

puts "Created #{Category.count} categories"
puts "Created #{Brand.count} brands"
