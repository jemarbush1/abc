Feature: Verify home page is displayed correctly. Write gherkin to verify that when you visit puppies URL, you see logo and left menu correctly. If you see both of them, your test passes.

  Scenario: Verify that when you visit puppies URL, you see logo and left menu correctly
    Given the puppies URL is entered correctly
    And the home page is displayed
    Given the puppy adoption logo is displayed
    And left menu options are present
    Then access is okay
    And full access to site is available
