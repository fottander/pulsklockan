Feature: Homepage

  Background:
    Given the following categories exists
      | id | name        |
      | 1  | Pulsklockor |

  Scenario: I visit the homepage and see some content
    Given I am on the homepage
    Then I should see "Välkommen till pulsklockan"

  Scenario: I see some categories
    Given I am on the homepage
    Then I should see "Id: 1"
    And I should see "Kategori: Pulsklockor"
