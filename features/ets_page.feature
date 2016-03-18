Feature: ETS page
  As a ETS
  So that I can see all professor webcast requests
  I want to see a list of all professor requests
  
  Given the following requests exist:
    | professor |  building  | room  | layout  | date requested      |
    | prof1     |  build1    | room1 | layout1 | 2007-01-18 06:10:17 |
    | prof2     |  build2    | room2 | layout2 | 2007-01-18 07:10:17 |
    | alex      |  Barrows   | 215   | layout1 | 2007-01-18 07:10:18 |
    | alex      |  Barrows   | 101   | asdf    | 2007-01-18 04:10:17 |
  Given I am on the ETS pagego

  Scenario: see all requests
    Then I should see a "prof1"
    And I should see a "prof2"
    
  Scenario: sort by professor
    And I click on "Professor"
    Then I should see "prof1" before "prof2"
    
  Scenario: sort by building and room
    And I click on "Building"
    Then I should see "Barrows" before "build2"
    And I should see "101" before "215"
    
  Scenario: sort by layout
    And I click on "Layout"
    Then I should see "asdf" before "layout1"
    
  Scenario: sory by date added
    And I click on "Date Submitted"
    Then I should see "2007-01-18 04:10:17" before "2007-01-18 06:10:17"