Feature: Homepage

  Background:
    Given the following categories exists
      | id | name        |
      | 1  | Pulsklockor |
    Given the following brands exists
      | id | name        |
      | 1  | Garmin      |

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
    Then I should see "Här nedan hittar du alla pulsklockor"
    And I should see "hello Pulsklockor"

  Scenario: I click my through to a brand
    Given I am on the homepage
    And I click "Alla Garmin"
    Then I should see "Här nedan hittar du alla Garmin produkter"
