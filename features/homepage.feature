Feature: Homepage

  Background:
    Given the following categories exists
      | id | name        |
      | 1  | Pulsklockor |
    Given the following brands exists
      | id | name   |
      | 2  | Garmin |

  Scenario: I visit the homepage and see some content
    Given I am on the homepage
    Then I should see "Alla pulsklockor, aktivitetsarmband och smartklockor på ett och samma ställe"

  Scenario: I see some categories and brands
    Given I am on the homepage
    Then I should see "Id: 1"
    And I should see "Kategori: Pulsklockor"
    And I should see "Märke: Garmin"

  Scenario: I click my way through categories and brands pages
    Given I am on the homepage
    And I click "Pulsklockor" within button-section
    Then I should see "Nedan ser du alla pulsklockor"
