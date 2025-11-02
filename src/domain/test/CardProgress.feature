Feature: Card Progress

  Scenario: compute recall time
    Given a card evaluation
      | day | state  | recall |
      | 0   | Again  | 0      |
      | 1   | Hard   | 2      |
      | 2   | Good   | 5      |
      | 3   | Easy:0 | 9      |
      | 4   | Easy:1 | 16     |
      | 5   | Easy:2 | 29     |
    Then the recall times should match