Feature: Users can type in location convenient for them to eat if they choose to eat out
    As a user
    So that I want to figure out which restaurant to eat
    I want to select location near where is convenient for me to eat
    
    Scenario: Type in a valid address
        Given I’m on the eat out page
        When I type in the valid location near where is convenient for me to eat
        Then I can see a list of recommended restaurants which are within 1 mile of the location I select

    Scenario: Type in an invalid address
        Given I’m on the eat out page
        When I type in a location that is not valid
        Then I should see an error information telling me no results

    Scenario: Not provide any address
        Given I’m on the eat out page
        When I don’t type in any location 
        And I click the Search button
        Then I should see a message telling me to give the location