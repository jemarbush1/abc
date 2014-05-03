Feature: Adopting one, two, and three puppy(s). Write gherkin scenario for adopting process for one puppy, two, and three puppy(s).

  Scenario Outline: Adopting process for three puppies
    Given I am on the puppy adoption site
    Given there are a selection of puppies to adopt from
    And I view the puppy details
    When I select puppy "<name>"
    When I adopt "<number>" puppy(s)
    Then I click the Complete the Adoption button
    And I enter "<owner name>" in the name field
    And I enter "<address>" in the address field
    And I enter "<email>" in the email field
    And I select "<order pay type>" from the pay options
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

  Examples:

    | name | number | owner name | address | email | order pay type |
    | brook | 1 | Peter Piper | 123 high st | PeterPiper@yahoo.com | Credit Card |
    | Hanna | 2 | Peter Pan  | 456 high st  | PeterPan@yahoo.com | Check         |
    | Maggie Mae | 3 | Peter Parker | 789 high st | PeterParker@yahoo.com | Western Union |

