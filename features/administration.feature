Feature: Administrations

  Background:
    Given the following admins exists
      | email         | password | password_confirmation |
      | info@admin.se | 123456   | 123456                |

  Scenario: I log in to the administratons area
    Given I am on the admin login page
    Then I should see "Log in"
    And I fill in "Email" with "info@admin.se"
    And I fill in "Password" with "123456"
    And I click "Log in"
    Then I should see "Welcome to administrations!"

  Scenario: I log out from administrations
      Given I am logged in as admin "info@admin.se"
      And I am on the administrations page
      Then I should see "Welcome to administrations!"
      And I click "Log out"
      Then I should see "Signed out successfully"
