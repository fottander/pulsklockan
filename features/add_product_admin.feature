Feature: Add product admin

  Background:
    Given the following admins exists
      | email         | password | password_confirmation |
      | info@admin.se | 123456   | 123456                |

    Given the following brands exists
      | name   | description     |
      | Garmin | Garmin från USA |

  Scenario: I add a product as an admin
    Given I am logged in as admin "info@admin.se"
    Given I am on the administrations page
    And I click "Add/edit products"
    Then I should see "Add or edit products on this page"
    And I click "Add product"
    Then I should see "Add products"
    And I fill in "Name" with "Garmin 235"
    And I fill in "Description" with "Garmin 235 finns i många varianter"
    And I fill in "Price" with "235"
    And I select "Garmin" from "Brand"
    And I click "Add"
    Then I should see "Product was successfully added"
    And I should see "Add or edit products on this page"
    And I should see "Garmin 235"
    And I click "Edit"
    And I fill in "Name" with "Garmin 600"
    And I fill in "Price" with "55.5"
    And I click "Edit"
    Then I should see "Product edited"
    And I click "Cancel"
    Then I should see "Garmin 600"
