Feature: Homepage

  Background:
    Given the following categories exists
      | id | name        |
      | 1  | Pulsklockor |
    Given the following brands exists
      | id | name        |
      | 1  | Garmin      |
    Given the following products exists
      | id | name                  | brand_id |
      | 1  | Garmin Forerunner 235 | 1        |

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
    Then I should see "Här nedan hittar du alla Pulsklockor"
    And I should see "hello Pulsklockor"

  Scenario: I click my through to a brand and a product
    Given I am on the homepage
    And I click "Alla Garmin"
    Then I should see "Här nedan hittar du alla Garmin produkter"
    And I click "Garmin Forerunner 235"
    Then I should see "hello Garmin Forerunner 235"
