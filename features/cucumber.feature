@regression
Feature: Withdraw Money from an ATM Machine

  @functional_test
  Scenario: Successful withdrawal from an account
    Given I have deposited $80 in my Checking Account
    When I request $20 from an ATM Machine
    Then I should receive $20
    And I will have a Checking Account balance of $60

  Scenario: Overdraw from an account
    Given I have deposited $80 in my Savings Account
    When I request $100 from an ATM Machine
    Then I should receive an Insufficient Funds error message
    And I will have a Checking Account balance of $80

  Scenario: Successful withdrawal from a checking account
    Given I have deposited $100 in my Checking Account
    When I request $20 from an ATM Machine
    Then I should receive $20