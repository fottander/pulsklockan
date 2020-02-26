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
