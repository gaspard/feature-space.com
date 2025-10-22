Feature: Recall

  Scenario: Next recall
    Given stacks
      # now = 1000
      | stackId | id    | recall |
      | stack1  | card1 | 300    |
      | stack1  | card2 | 200    |
      | stack1  | card3 | 1300   |
      | stack2  | card4 | 1400   |
      | stack2  | card5 |        |
      | stack2  | card6 |        |
      | stack2  | card7 | 600    |
      | stack2  | card8 |        |
    Then the next recall for 5 cards should be
      | id    |
      | card1 |
      | card2 |
      | card5 |
      | card6 |
      | card7 |