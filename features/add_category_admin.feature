Feature: Add category admin

  Background:
    Given the following admins exists
      | email         | password | password_confirmation |
      | info@admin.se | 123456   | 123456                |

  Scenario: I add a category as an admin
    Given I am logged in as admin "info@admin.se"
    Given I am on the administrations page
    And I click "Add/edit categories"
    Then I should see "Add or edit categories on this page"
    And I click "Add category"
    Then I should see "Add categories"
    And I fill in "Name" with "Pulsklockor"
    And I fill in "Description" with "Pulsklockor finns i många varianter"
    And I click "Add"
    Then I should see "Category was successfully added"
    And I should see "Add or edit categories on this page"
    And I should see "Pulsklockor"
    And I click "Edit"
    And I fill in "Name" with "Aktivitetsarmband"
    And I click "Edit"
    Then I should see "Category edited"
    And I click "Cancel"
    Then I should see "Aktivitetsarmband"
