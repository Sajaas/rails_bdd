Given(/^I visit the "([^"]*)" page$/) do |landing|
  visit root_path
end

When(/^I click "([^"]*)" link$/) do |link_name|
  click_link_or_button link_name
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

When(/^I click "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^I should be on "([^"]*)" page$/) do |new_article_page|
  page.current_url == new_article_page
end