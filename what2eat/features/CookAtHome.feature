Feature: Users can select needed amount of calories they want to intake if they choose to cook meals at home
    As a user
    So that I want to figure out what to cook at home
    I want to select needed amount of calorie to intake

    Scenario: Type in a valid number of calories
        Given I'm on the cook at home page
        When I give the valid number of calories I want to intake
        Then I should see a list of recipes that meet the requirements

    Scenario: Type in an invalid number of calories
        Given I'm on the cook at home page
        When I give the number of calories that is less or equal to zero
        Then I should see an error message telling me the available range of calories

    Scenario: Not provide the number of calories
        Given I'm on the cook at home page
        When I don’t type in the number of calories
        And I press Search button
        Then I should see an error message telling me to type in the number of calories.

    Scenario: See the details of recipes
        Given I'm the recipes search results page
        When I click a specific recipe
        Then I should see the detailed instructions of the recipe

    Scenario: Back to the calories selection page
        Given I'm the recipes search results page
        When I click the back button
        Then I can type in the new amout of calories needed


