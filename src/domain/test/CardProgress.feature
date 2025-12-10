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

  Scenario: compute recall time with sample
    Given a card evaluation with sample
      | day | state  | recall |
      | 0   | Again  | 0      |
      | 1   | Hard   | 1.83   |
      | 2   | Good   | 5.07   |
      | 3   | Easy:0 | 9.50   |
      | 4   | Easy:1 | 15.39  |
      | 5   | Easy:2 | 28.03  |
    Then the recall times should match with 0.1 sigma

  Scenario: compute recall time with sample
    Given a card evaluation with sample
      | day | state  | recall |
      | 0   | Again  | 0      |
      | 1   | Hard   | 1.65   |
      | 2   | Good   | 5.13   |
      | 3   | Easy:0 | 10.01  |
      | 4   | Easy:1 | 14.78  |
      | 5   | Easy:2 | 27.06  |
    Then the recall times should match with 0.2 sigma

  Scenario: compute recall time with sample
    Given a card evaluation with sample
      | day | state  | recall |
      | 0   | Again  | 0      |
      | 1   | Hard   | 1.48   |
      | 2   | Good   | 5.20   |
      | 3   | Easy:0 | 10.51  |
      | 4   | Easy:1 | 14.17  |
      | 5   | Easy:2 | 26.09  |
    Then the recall times should match with 0.3 sigma

  Scenario: compute recall time with sample
    Given a card evaluation with sample
      | day | state  | recall |
      | 0   | Again  | 0      |
      | 1   | Hard   | 1.31   |
      | 2   | Good   | 5.27   |
      | 3   | Easy:0 | 11.01  |
      | 4   | Easy:1 | 13.56  |
      | 5   | Easy:2 | 25.12  |
    Then the recall times should match with 0.4 sigma

  Scenario: compute recall time with sample
    Given a card evaluation with sample
      | day | state  | recall |
      | 0   | Again  | 0      |
      | 1   | Hard   | 1.14   |
      | 2   | Good   | 5.33   |
      | 3   | Easy:0 | 11.52  |
      | 4   | Easy:1 | 12.95  |
      | 5   | Easy:2 | 24.14  |
    Then the recall times should match with 0.5 sigma