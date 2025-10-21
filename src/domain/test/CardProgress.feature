Feature: Card Progress

  Scenario: compute recall time
    Given a card evaluation
      | day | state  | recall |
      | 0   | Again  | 0      |
      | 1   | Hard   | 2      |
      | 2   | Good   | 5      |
      | 3   | Easy:1 | 9      |
      | 4   | Easy:2 | 28     |
      | 5   | Easy:3 | 59     |
    Then the recall times should match