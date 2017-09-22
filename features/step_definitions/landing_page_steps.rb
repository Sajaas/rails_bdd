Given(/^the following articles exists$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end

When(/^I am on the landing page$/) do
  visit root_path
end

When(/^I click "([^"]*)"$/) do |link|
  click_link_or_button link
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end
