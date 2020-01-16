Given(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given("I click {string}") do |button|
  click_link_or_button button
end

Then(/^show me the page$/) do
 save_and_open_page
end

Given("the following categories exists") do |table|
  table.hashes.each do |hash|
    create(:category, hash)
  end
end

Given("the following brands exists") do |table|
  table.hashes.each do |hash|
    create(:brand, hash)
  end
end
