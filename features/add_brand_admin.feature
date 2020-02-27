Feature: Add brand admin

  Background:
    Given the following admins exists
      | email         | password | password_confirmation |
      | info@admin.se | 123456   | 123456                |

  Scenario: I add a brand as an admin
    Given I am logged in as admin "info@admin.se"
    Given I am on the administrations page
    And I click "Add/edit brands"
    Then I should see "Add or edit brands on this page"
    And I click "Add brand"
    Then I should see "Add brands"
    And I fill in "Name" with "Garmin"
    And I fill in "Description" with "Garmin är ett amerikanskt märke"
    And I fill in "Extra info" with "Garmin kan också"
    And I click "Add"
    Then I should see "Brand was successfully added"
    And I should see "Add or edit brands on this page"
    And I should see "Garmin"
    And I click "Edit"
    And I fill in "Name" with "Apple"
    And I click "Edit"
    Then I should see "Brand edited"
    And I click "Cancel"
    Then I should see "Apple"
