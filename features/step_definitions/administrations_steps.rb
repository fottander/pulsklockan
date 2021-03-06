Given(/^I am on the admin login page$/) do
  visit new_admin_session_path
end

Given(/^I am on the administrations page$/) do
  visit authenticated_root_path
end

Given("the following admins exists") do |table|
  table.hashes.each do |hash|
    create(:admin, hash)
  end
end

Given("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("I am logged in as admin {string}") do |email|
  admin = Admin.find_by(email: email)
  login_as(admin, scope: :admin)
end

Then(/^I select "([^"]*)" from "([^"]*)"$/) do |option, choices|
  select option, from: choices
end

Then(/^I attach file$/) do
  attach_file('product[avatar]', "#{Rails.root}/spec/images/hello.jpeg", visible: false)
end

Then(/^I attach brand file$/) do
  attach_file('brand[avatar]', "#{Rails.root}/spec/images/hello.jpeg", visible: false)
end

Then(/^I attach category file$/) do
  attach_file('category[avatar]', "#{Rails.root}/spec/images/hello.jpeg", visible: false)
end

Then("I check active box") do
  check 'product_active'
end
