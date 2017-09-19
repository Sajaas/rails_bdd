Given(/^I visit the "([^"]*)" page$/) do |landing|
  visit root_path
end

When(/^I click "([^"]*)" link$/) do |link_name|
  click_link_or_button link_name
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |title, content|
  fill_in title, with: content
end

When(/^I click "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^I should be on "([^"]*)" page$/) do |new_article_page|
  expect(page).to have_current_path new_article_page
end