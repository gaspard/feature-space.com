Feature: Parse Cards

  Scenario: Parse a basic cards file
    Given the fixture file "some-cards.cards"
    And I parse the cards file
    Then the list should contain
      | id           | content         | solution           |
      | c-cards-id-0 | Question 1      | Answer paragraph1. |
      | c-cards-id-1 | Second question | Second answer.     |