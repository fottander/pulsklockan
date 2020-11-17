Feature: Add product admin

  Background:
    Given the following admins exists
      | email         | password | password_confirmation |
      | info@admin.se | 123456   | 123456                |

    Given the following brands exists
      | name   | description     |
      | Garmin | Garmin från USA |

    Given the following categories exists
      | name              | description       | id  |
      | Pulsklockor       | Pulsklockor       | 199 |
      | Aktivitetsarmband | Aktivitetsarmband | 198 |
      | Smarta klockor    | Smarta klockor    | 197 |
      | Pulsmätare        | Pulsmätare        | 196 |
      | Grunkor           | Grunkor           | 19  |

  Scenario: I add a product as an admin
    Given I am logged in as admin "info@admin.se"
    Given I am on the administrations page
    And I click "Add/edit products"
    Then I should see "Add or edit products on this page"
    And I click "Add product"
    Then I should see "Add products"
    And I fill in "Name" with "Garmin 235"
    And I select "Garmin" from "Brand"
    And I select "Pulsklockor" from "Primary category"
    And I select "Aktivitetsarmband" from "Secondary category"
    And I select "Smarta klockor" from "Third category"
    And I click "Add"
    Then I should see "Product was successfully added"
    And I should see "Add or edit products on this page"
    And I should see "Garmin 235"
    And I click "Edit"
    And I fill in "Name" with "Garmin 600"
    And I attach file
    And I select "NetOnNet" from "Butik Netonnet namn"
    And I fill in "Butik Netonnet länk" with "https://www.netonnet.se/art/telefoner/smartwatch/apple-watch/apple-watch-series-6-gps-40mm-space-gray-aluminium-case-with-black-sport-band-regular/1014608.13980/"
    And I check active box
    And I click "Edit"
    Then I should see "Product edited"
    And I click "Cancel"
    Then I should see "Garmin 600"
    And I click "Pulsklockor"
    Then I should see "Garmin 600"
    And I click "Pulsmätare"
    Then I should not see "Garmin 600"
