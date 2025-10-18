Feature: Parse Quiz

  Scenario: Parse a basic quiz file
    Given the fixture file "some-quiz.quiz"
    And I parse the quiz file
    Then the list should contain
      | id          | content         | solution         |
      | q-quiz-id-0 | Quiz question 1 | Detail answer 1. |
      | q-quiz-id-1 | Quiz question 2 | Detail answer 2. |