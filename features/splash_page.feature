Feature: display collection of videos on splash page

  As a professor
  So that I can sign in to the ETS recording request system
  I want to see vides of ETS recordings and a log in button

  Scenario: splash page with demo videos
    # Change the video titles when necessary.
    Given I am on the home page
    When I follow the "Configuring Courses" video thumbnail
    Then I should see a video titled "Configuring Courses"
    When I follow the "Organizing Courses" video thumbnail
    Then I should see a video titled "Organizing Courses"
    When I follow the "Editing Webcasts" video thumbnail
    Then I should see a video titled "Editing Webcasts"

  Scenario: login to admin dashboard
    Given I am on the home page
    When I follow "Sign In"
    And I fill in the "Username" field with "user"
    And I fill in the "Password" field with "password"
    And I press "LOGIN"
    # More steps to be once admin pages are set-up.