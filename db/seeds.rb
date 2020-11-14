Product.delete_all
Category.delete_all
Brand.delete_all
Admin.delete_all

Admin.create(
  email: "info@admin.se",
  password: "123456",
  id: 99999
)

Category.create(
  name: "Pulsklockor",
  description: "Pulsklockor används främst för att...",
  id: 199
)

Category.create(
  name: "Aktivitetsarmband",
  description: "Aktivitetsarmband används främst för att...",
  id: 198
)

Category.create(
  name: "Smarta klockor",
  description: "Smarta klockor används främst för att...",
  id: 197
)

Category.create(
  name: "Pulsmätare",
  description: "Pulsmätare används främst för att...",
  id: 196
)

Category.create(
  name: "Bäst i test",
  description: "Här hittar du alla produkter som fått bäst i test...",
  id: 195
)

Brand.create(
  name: "Garmin",
  description: "Garmin är ett av de främsta märkena...",
  id: 199
)

Brand.create(
  name: "Suunto",
  description: "Suunto är ett av de främsta märkena...",
  id: 198
)

Brand.create(
  name: "Apple",
  description: "Apple är ett av de främsta märkena...",
  id: 197
)

Brand.create(
  name: "Fitbit",
  description: "Fitbit är ett av de främsta märkena...",
  id: 196
)

Brand.create(
  name: "Polar",
  description: "Polar är ett av de främsta märkena...",
  id: 195
)

Product.create(
  name: "Garmin Forerunner 555",
  brand_id: "199",
  primary_category_id: "199",
  secondary_category_id: "198",
  third_category_id: "197",
  height: 10.1,
  width: 10.1,
  depth: 10.1,
  weight: 100.1,
  battery: "Battiritden är 3 h...",
  display: "Retina",
  touch_screen: "true",
  water_res: "10atm",
  memory: "32gb",
  os_compatible: "Android and OS",
  bluetooth: "true",
  wi_fi: "true",
  apps: "yes appstore",
  nfc: "true",
  voice_control: "true",
  music: "true",
  gps: "true",
  heart_rate: "true",
  barometer: "true",
  sleep_tracking: "true",
  calories: "true",
  steps: "true",
  oxygen: "true",
  golf: "true",
  cycling: "true",
  swimming: "true",
  active: "true",
  id: 195
)

puts "Created #{Admin.count} admins"
puts "Created #{Category.count} categories"
puts "Created #{Brand.count} brands"
puts "Created #{Product.count} products"
