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

  Scenario: Generate JSON files for all stack files
    Given a clean "json-pages" fixtures directory
    When I generate JSON files for all stacks
    Then the json file "dist/stacks/chemistry-quiz-id.json" should exist
    And the json file "dist/stacks/physics-quiz-id.json" should exist
    And the json file "dist/L1/stacks-toc.json" should exist
    And the json file "dist/L2/stacks-toc.json" should exist
    And the json file "dist/stacks-toc.json" should exist

  Scenario: Verify JSON files contain valid stack data
    Given a clean "json-pages" fixtures directory
    When I generate JSON files for all stacks
    Then the json file "dist/stacks/advanced-cards-id.json" should contain
      | json path  | value             |
      | info.id    | advanced-cards-id |
      | info.kind  | cards             |
      | info.level | pro               |
    And the json file "dist/stacks/physics-quiz-id.json" should contain
      | json path                 | value           |
      | info.id                   | physics-quiz-id |
      | info.kind                 | quiz            |
      | info.level                | regular         |
      | info.count                | 3               |
      | cards.0.stackId           | physics-quiz-id |
      | cards.0.options.0.content | Kinetic energy  |


  Scenario: Verify JSON files contain valid toc data
    Given a clean "json-pages" fixtures directory
    When I generate JSON files for all stacks
    Then the json toc file "dist/stacks-toc.json" should contain
      | json path | value                       |
      | 1.id      | advanced-cards-id           |
      | 1.title   | Advanced Mathematics Cards  |
      | 1.kind    | cards                       |
      | 1.level   | pro                         |
      | 1.course  | Advanced Calculus           |
      | 1.chapter | Derivatives and Limits      |
      | 1.tags    | calculus,derivatives,limits |


  Scenario: Verify JSON files contain valid toc data
    Given a clean "json-pages" fixtures directory
    When I generate JSON files for all stacks
    Then the json toc file "dist/L1/stacks-toc.json" should contain
      | json path | value                  |
      | 0.id      | chemistry-quiz-id      |
      | 0.title   | Organic Chemistry Quiz |

