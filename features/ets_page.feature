Feature: ETS page
  As a ETS
  So that I can see all professor webcast requests
  I want to see a list of all professor requests
  
Background: requests have been added to the ets database
  
  Given the following requests exist:
     | professor |  building  | room  | layout  | date requested      | timeslot       |
     | prof1     |  build1    | room1 | layout1 | 2007-01-18 06:10:17 | 9:00AM -10:AM  |
     | prof2     |  build2    | room2 | layout2 | 2007-01-18 07:10:17 | 9:00AM -10:AM  |
     | prof3     |  build2    | room2 | layout1 | 2007-01-18 08:10:17 | 10:00AM -11:AM |
     | Bob      |  Barrows   | 215   | layout1 | 2007-01-18 09:10:18 | 9:00AM -10:AM  |
     | Bob      |  Barrows   | 101   | asdf    | 2007-01-18 01:10:17 | 9:00AM -10:AM  |
    And I go to the ETS page

Scenario: basic
  Then I should see a table named "Requests"
  And I should see a column named "Professor"
  And I should see a column named "Building"
  And I should see a column named "Room"
  And I should see a column named "Layout"
  And I should see a column named "Date Requested"
  
Scenario: see all features
   Then I should see a button named "Search"
   And I should see a field named "Professor"
   And I should see a field named "Room"
   And I should see a field named "Building"
  
Scenario: search by room
  When I fill in "Building" with "Build2"
  And I fill in "Room" with "Room2"
  When I click on "Search"
  Then I should see a table with 2 entries
  And I should see "prof2" before "prof3"

Scenario: search by professor
  When I fill in "Professor" with "Bob"
  And I click on "Search"
  Then I should see a table with 2 entries
  And I should not see "prof1"
  And I should not see "prof2"
  And I should not see "prof3"

Scenario: search by room and professor
  When I fill in "Professor" with "Fox"
  And I fill in "Building" with "Barrows"
  And I fill in "Room" with "215"
  And I fill in "Professor" with "Bob"
  And I click on "Search"
  Then I should see "Bob"
  And I should not see "prof1"
  And I should not see "prof2"
  And I should not see "prof3"
  And I should not see "101"
  
Scenario: see delete button
  Then I should see "Delete" button

Scenario: delete request 1
  When I click on "Delete" for request "1"
  Then I should not see "1"

Scenario: see approve/deny button
  Then I should see "Approve" button
  And I should see "Deny" button
  
Scenario: when approve
  When I click on "Approve" for request "2"
  Then request "2" status should be "Approved"
  
Scenario: when deny
  When I click on "Deny" for request "3"
  Then request "3" status should be "Denied"
  
  
  
# Scenario: see all requests
#   Then I should see a "prof1"
#   And I should see a "prof2"
  
# Scenario: sort by professor
#   And I click on "Professor"
#   Then I should see "prof1" before "prof2"
  
# Scenario: sort by building and room
#   And I click on "Building"
#   Then I should see "Barrows" before "build2"
#   And I should see "101" before "215"
  
# Scenario: sort by layout
#   And I click on "Layout"
#   Then I should see "asdf" before "layout1"
  
# Scenario: sort by date added
#   And I click on "Date Submitted"
#   Then I should see "2007-01-18 04:10:17" before "2007-01-18 06:10:17"