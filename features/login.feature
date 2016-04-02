Feature: Login and authentication via CalNet.

  As a user
  So that I can log in
  I want to click on the login button on the splash page and to be redirected to a login pages
	
 Scenario: login to admin dashboard
    Given I am on the home page
    When I follow "Sign In"
    # And I fill in the "Username" field with "user"
    # And I fill in the "Password" field with "password"
    # And I press "LOGIN"
    And I am logged into calnet with username "naathaan"
    # More steps to be once admin pages are set-up.