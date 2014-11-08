Feature: Users can choose to eat out or cook meals at home
    As a user 
    So that I want to figure out what to eat
    I want to choose between eat out and cook meals at home

    Scenario: choose between eat out and cook meals at home
        Given I'm on the homepage
        Then I should see Cook at Home button and Eat Out Button

    Scenario: Choose to cook at home
        Given I'm on the homepage
        When I choose to cook at home
        Then I can see a table of calories of typical food ingredients
        Then I can select maximum amount of calorie I want to intake 

    Scenario: Choose to eat out
        Given I'm on the homepage
        When I choose to eat out
        Then I can select location near where is convenient for me to eat


