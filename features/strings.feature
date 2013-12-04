Feature: Manipulating Strings

  Scenario: Selecting a single character from a string
    Given "this is a string" is a simple string
    When I select the 4 character
    Then I will have "s"

  Scenario: Selecting a range within a string
    Given "this is a string" is a simple string
    When I select 6 characters starting with the 4 character
    Then I will have "s is a"

  Scenario: Downcase a String
    Given "THIS IS A STRING" is a simple string
    When I downcase the string
    Then I will have "this is a string"

  Scenario: Upcase a String
    Given "this is a string" is a simple string
    When I upcase the string
    Then I will have "THIS IS A STRING"

  Scenario: Lstrip a String
    Given "       this is a string" is a simple string
    When I Lstrip the string
    Then I will have "this is a string"

  Scenario: Rstrip a String
    Given "this is a string      " is a simple string
    When I Rstrip the string
    Then I will have "this is a string"

  Scenario: Strip a String
    Given "           this is a string      " is a simple string
    When I Strip the string
    Then I will have "this is a string"

  Scenario: length of a String
    Given "this is a string" is a simple string
    When I length the string
    Then I will have "16"

  Scenario: Is a String empty
    Given "" is a simple string
    When I check if empty the string
    Then I will have "true"

  Scenario: String includes
    Given "this is a string" is a simple string
    When I see if it includes the string "is"
    Then I will have "true"