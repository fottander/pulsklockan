Given(/^I am on the admin login page$/) do
  visit new_admin_session_path
end

Given("the following admins exists") do |table|
  table.hashes.each do |hash|
    create(:admin, hash)
  end
end

Given("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end
