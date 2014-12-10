Given(/^I'm on the homepage$/) do
  visit 'http://localhost:3000/'
end

Then(/^I should see Cook at Home button and Eat Out Button$/) do
  assert page.has_content?('Cook at Home')
  assert page.has_content?('Eat Out')
end

When(/^I choose to cook at home$/) do
  # click_button('Cook at Home')
  # visit 'http://localhost:3000/foods'
  click_link('Cook at Home')
end

Then(/^I can see a table of calories of typical food ingredients$/) do

  assert page.has_xpath?('//table//td//img')
  # assert page.has_content?('Search Food and Recipes')
  # assert page.has_content?('calories')

end

Then(/^I can select maximum amount of calorie I want to intake$/) do
  assert page.has_content?('Calories Needed')
end

When(/^I choose to eat out$/) do
  # visit 'http://localhost:3000/restaurants'
  click_link('Eat Out')
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
  fill_in 'Address', :with => 'china town'
  click_button('Search')
end

Then(/^I can see a list of recommended restaurants which are within (\d+) mile of the location I select$/) do |arg1|
  assert page.has_content?('china town')
  assert page.has_xpath?('//table/tr')
end

When(/^I type in a location that is not valid$/) do
  fill_in 'Address', :with => 'ascdsvaw dsfwafcdsaf'
  click_button('Search')
end

Then(/^I should see an error information telling me no results$/) do
  assert page.has_content?('Invalid')
end

When(/^I don’t type in any location$/) do
  fill_in 'Address', :with => ''
end

When(/^I click the Search button$/) do
  click_button('Search')
end

Then(/^I should see a message telling me to give the location$/) do
  assert page.has_content?('Invalid')
end

Given(/^I'm on the cook at home page$/) do
  visit 'http://localhost:3000/foods'
end

When(/^I give the valid number of calories I want to intake$/) do
  fill_in 'Calories Needed', :with => "300"
  click_button 'Search for Recipe'
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
  click_button 'Search for Recipe'
end



Then(/^I should see an error message telling me the available range of calories$/) do
  # assert page.has_css?('div.field_with_errors')
  assert page.has_content?('Invalid')
end

When(/^I don’t type in the number of calories$/) do
  fill_in 'Calories Needed', :with => ""
end

When(/^I press Search button$/) do
  click_button 'Search for Recipe'
end

Then(/^I should see an error message telling me to type in the number of calories\.$/) do
  # assert page.has_css?('div.field_with_errors')
  assert page.has_content?('Invalid')
end


Given(/^I'm the recipes search results page$/) do
  visit 'http://localhost:3000/foods'
  fill_in 'Calories Needed', :with => '300'
  click_button 'Search for Recipe'
end

When(/^I click a specific recipe$/) do
  find(:xpath, "//tr[1]/td[1]/*").click
  save_and_open_page
end

Then(/^I should see the detailed instructions of the recipe$/) do
  assert page.has_content?('Recipe Detail')
  assert page.has_content?('Cooking Instruction') 
end

When(/^I click the back button$/) do
  click_link('Back')
end

Then(/^I can type in the new amout of calories needed$/) do
  assert page.has_xpath?('//table//td//img')
end

Given(/^I'm on the restaurants search results page$/) do
  visit 'http://localhost:3000/restaurants'
  fill_in 'Address', :with => 'china town'
  click_button('Search')
end

When(/^I click Back button$/) do
  click_link('Back')
end

Then(/^I can type in a new address$/) do
  assert page.has_content?('Search Restaurants')
  assert page.has_content?('Search')
  assert page.has_content?('Back')
end






