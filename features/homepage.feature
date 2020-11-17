Feature: Homepage

  Background:
    Given the following categories exists
      | id | name        |
      | 1  | Pulsklockor |
    Given the following brands exists
      | id | name        | description    |
      | 1  | Garmin      | Denna Garmin.. |
    Given the following products exists
      | id | name                  | brand_id | active | primary_category_id |
      | 1  | Garmin Forerunner 235 | 1        | true   | 1                   |

  Scenario: I visit the homepage and see some content
    Given I am on the homepage
    Then I should see "Alla pulsklockor, aktivitetsarmband och smartklockor på ett och samma ställe"

  Scenario: I see some categories
    Given I am on the homepage
    Then I should see "Id: 1"
    Then I should see "Kategori: Alla Pulsklockor"

  Scenario: I click my through to a category
    Given I am on the homepage
    And I click "Alla Pulsklockor"
    Then I should see "Alla Pulsklockor"
    And I should see "Just nu hittar du 1 av marknadens mest populära Pulsklockor"

  Scenario: I click my through to a brand and a product
    Given I am on the homepage
    And I click "Alla Garmin"
    Then I should see "Alla Garmin produkter"
    And I should see "Här hittar du 1 av nätets mest populära Garmin produkter"
    And I click "Garmin Forerunner 235"
    Then I should see "Garmin Forerunner 235"
