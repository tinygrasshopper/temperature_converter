Feature: Conversion

  Scenario: It should convert from celsius to fahrenheit
    Given I am on the home page
    And I enter 100 degrees celsius in the original temperature
    When I convert the temperature to fahrenheit
    Then I should see the converted result as 212

  Scenario: It should convert from fahrenheit to celsius
    Given I am on the home page
    And I enter 100 degrees fahrenheit in the original temperature
    When I convert the temperature to celsius
    Then I should see the converted result as 37.77


