Feature: Users can select maximum amount of calories they want to intake if they choose to cook meals at home
    As a user
    So that I want to figure out what to cook at home
    I want to select maximum amount of calorie to intake

    Scenario: Type in a valid number of calories
        Given I'm on the cook at home page
        When I give the valid number of calories I want to intake
        Then I should see a list of recipes that meet the requirements

    Scenario: Type in an invalid number of calories
        Given I'm on the cook at home page
        When I give the number of calories that is either too large or too small
        Then I should see an error message telling me the available range of calories

    Scenario: Not provide the number of calories
        Given I'm on the cook at home page
        When I don’t type in the number of calories
        And I press Search button
        Then I should see an error message telling me to type in the number of calories.
