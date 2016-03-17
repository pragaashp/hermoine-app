Feature: professor page
  As a professor
	So that I can request a webcast for my classes.
	I want to see a list of my classes and be able to click on them to request a webcast
	
 Scenario: crate a new webcast for a class
    Given I am on the professor request page 
    Then I should see a "Create new webcast request"

 Scenario: Edit a webcast for a class
    Given I am on the professor request page
    And I have at least one class
    Then I should see a "Edit class"
