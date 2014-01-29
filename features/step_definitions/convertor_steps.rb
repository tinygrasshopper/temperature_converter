Given(/^I am on the home page$/) do
  visit(root_url)
end
When(/^I enter (\d+) degrees (celsius|fahrenheit) in the original temperature$/) do |degrees, type|
  fill_in 'from_degrees', with: degrees
  select type, from: 'from_unit'
end
When(/^I convert the temperature to (celsius|fahrenheit)$/) do |type|
  select type, from: 'to_unit'
  click 'convert'
end
Then(/^I should see the converted result as (\d.+)/) do |degrees|
  expect(find('.result')).to be(degrees)
end