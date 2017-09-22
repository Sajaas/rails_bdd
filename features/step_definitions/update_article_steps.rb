Given(/^the following article exists$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end