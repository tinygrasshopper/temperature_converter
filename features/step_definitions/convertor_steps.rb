Given(/^I am on the home page$/) do
  visit(root_url)
end
When(/^I enter (\d+) degrees (celcius|fahrenheit) in the original temperature$/) do |degrees, type|
  fill_in 'measurement', with: degrees
  select type, from: 'from'
end
When(/^I convert the temperature to (celcius|fahrenheit)$/) do |type|
  select type, from: 'to'
  click_button 'convert'
end
Then(/^I should see the converted result as (\d.+)/) do |degrees|
  expect(find('.result')).to be(degrees)
end