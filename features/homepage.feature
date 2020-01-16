Feature: Homepage

  Background:
    Given the following categories exists
      | id | name        |
      | 1  | Pulsklockor |

  Scenario: I visit the homepage and see some content
    Given I am on the homepage
    Then I should see "Alla pulsklockor, aktivitetsarmband och smartklockor på ett och samma ställe"

  Scenario: I see some categories
    Given I am on the homepage
    Then I should see "Id: 1"
    Then show me the page
    Then I should see "Kategori: Pulsklockor"

  Scenario: I click my through to a category
    Given I am on the homepage
    And I click 'Alla Pulsklockor'
    Then I should see 'Här nedan hittar du alla pulsklockor'
