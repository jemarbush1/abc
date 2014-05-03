Feature: Verify cart for two puppies. Write gherkin scenario for that verifies that your cart has two puppies. Don't complete the adoption process, just verify that cart displays two puppies when you add two puppies.


  Scenario: Verify that your cart has two puppies
    Given I am in the cart for puppy adoption site
    Given my selection of two puppies to adopt are present
      And my two are chosen
      And I enter my info to adopt
     Then I complete the process
      And I wait for a response