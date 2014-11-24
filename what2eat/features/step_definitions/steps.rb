Given(/^I'm on the homepage$/) do
  visit 'http://localhost:3000/'
end

Then(/^I should see Cook at Home button and Eat Out Button$/) do
  assert page.has_content?('Cook at Home')
  assert page.has_content?('Eat Out')
end

When(/^I choose to cook at home$/) do
  click_button 'Cook at Home'
end

Then(/^I can see a table of calories of typical food ingredients$/) do

  # assert page.has_xpath?('//table')
  assert page.has_content?('Search Food and Recipes')
  # assert page.has_content?('calories')

end

Then(/^I can select maximum amount of calorie I want to intake$/) do
  assert page.has_content?('Please input the number of calories to intake')
end

When(/^I choose to eat out$/) do
  click_button('Eat Out')
end

Then(/^I can select location near where is convenient for me to eat$/) do
  assert page.has_content?('Search Restaurants')
  assert page.has_content?('Search')
  assert page.has_content?('Back')
end

Given(/^I’m on the eat out page$/) do
  visit 'http://localhost:3000/restaurants'
end

When(/^I type in the valid location near where is convenient for me to eat$/) do
  fill_in 'Address', :with => '3827 walnut street'
  click_button('Search')
end

Then(/^I can see a list of recommended restaurants which are within (\d+) mile of the location I select$/) do |arg1|
  assert page.has_content?('3827 walnut street')
  assert page.has_xpath?('//table/tr')
end

When(/^I type in a location that is not valid$/) do
  fill_in 'Address', :with => '9937 walnut street'
  click_button('Search')
end

Then(/^I should see an error information telling me no results$/) do
  assert page.has_content?('9937 walnut street')
  assert page.has_content?('Address invalid, no results found')
end

When(/^I don’t type in any location$/) do
  fill_in 'Address', :with => ''
  click_button('Search')
end

When(/^I click the Search button$/) do
  click_button('Search')
end

Then(/^I should see a message telling me to give the location$/) do
  assert page.has_content?('Please type the valid address')
end

Given(/^I'm on the cook at home page$/) do
  visit 'http://localhost:3000/foods'
end

When(/^I give the valid number of calories I want to intake$/) do
  fill_in 'Calories Needed', :with => "300"
  click_button 'Search'
end

Then(/^I should see a list of recipes that meet the requirements$/) do
  assert page.has_content?('Search results')
  assert page.has_xpath?('//table//tr')
end

# When(/^I give the number of calories that is either too large or too small$/) do
#   fill_in 'Maximum Calori', :with => "-10"
#   click_button 'Search'
# end

When(/^I give the number of calories that is less or equal to zero$/) do
  fill_in 'Calories Needed', :with => "-10"
  click_button 'Search'
end



Then(/^I should see an error message telling me the available range of calories$/) do
  # assert page.has_css?('div.field_with_errors')
  assert page.has_content?('Please input calorie value larger than 0')
end

When(/^I don’t type in the number of calories$/) do
  fill_in 'Calories Needed', :with => ""
end

When(/^I press Search button$/) do
  click_button 'Search'
end

Then(/^I should see an error message telling me to type in the number of calories\.$/) do
  # assert page.has_css?('div.field_with_errors')
  assert page.has_content?('Please input calorie value larger than 0')
end
