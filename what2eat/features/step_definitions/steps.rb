Given(/^I'm on the homepage$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose to cook at home$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can see a table of calories of typical food ingredients$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can select maximum amount of calorie I want to intake$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose to eat out$/) do
  click_button('Eat out')
end

Then(/^I can select location near where is convenient for me to eat$/) do
  page.should have_content("where to eat?")
  page.should have_button('Search')
  page.should have_button('Back')
end

#########################################################

Given(/^I’m on the eat out page$/) do
  visit 'http://localhost:3000/eat_out'
end

When(/^I type in the valid location near where is convenient for me to eat$/) do
  fill_in 'address', :with => '3827 walnut street'
  click_button('Search')
end

Then(/^I can see a list of recommended restaurants which are within (\d+) mile of the location I select$/) do |arg1|
  page.should have_content('3827 walnut street')
  page.should have_xpath('//table/tr')
  # page.should have_button('Back')
end

When(/^I type in a location that is not valid$/) do
  fill_in 'address', :with => '9937 walnut street'
  click_button('Search')
end

Then(/^I should see an error information telling me no results$/) do
  page.should have_content('9937 walnut street')
  page.should have_content('Address invalid, no results found')
  # page.should have_button('Back')
end

When(/^I don’t type in any location$/) do
  fill_in 'address', :with => ''
  click_button('Search')
end

Then(/^I should see a message telling me to give the location$/) do
  page.should have_content('Please type the valid address')
  # page.should have_button('Back')
end

#########################################################

Given(/^I'm on the cook at home page$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I give the valid number of calories I want to intake$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a list of recipes that meet the requirements$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I give the number of calories that is either too large or too small$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see an error message telling me the available range of calories$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I don’t type in the number of calories$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I press Search button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see an error message telling me to type in the number of calories\.$/) do
  pending # express the regexp above with the code you wish you had
end
