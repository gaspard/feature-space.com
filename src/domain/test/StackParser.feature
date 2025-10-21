Feature: Stack Parser

  Scenario: Parse stack frontmatter from cards file
    Given a "some-cards.cards" file content
    When I parse the stack
    Then the stack info should contain
      | field   | value        |
      | id      | cards-id     |
      | title   | Cards title  |
      | kind    | Cards        |
      | level   | Regular      |
      | course  | CourseTitle  |
      | chapter | ChapterTitle |
      | tags    | tag1,tag2    |

  Scenario: Parse stack frontmatter from quiz file
    Given a "some-quiz.quiz" file content
    When I parse the stack
    Then the stack info should contain
      | field   | value               |
      | id      | quiz-id             |
      | title   | QuizTitle           |
      | kind    | Quiz                |
      | level   | Regular             |
      | course  | CourseTitle         |
      | chapter | ChapterTitle        |
      | tags    | quiz-tag1,quiz-tag2 |
