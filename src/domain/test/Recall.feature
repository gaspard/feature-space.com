Feature: Recall

  Scenario: Next recall
    Given stacks
      # now = 1000, dayLength = 100, Hard = +100, Good = +300, Easy = +600,
      | stackId | id    | timestamp | state | recall |
      | stack1  | card1 | 200       | Hard  | 300    |
      | stack1  | card2 | 200       | Good  | 500    |
      | stack1  | card3 | 1000      | Good  | 1300   |
      | stack2  | card4 | 1100      | Good  | 1400   |
      | stack2  | card5 |           |       |        |
      | stack2  | card6 |           |       |        |
      | stack2  | card7 | 300       | Good  | 600    |
      | stack2  | card8 |           |       |        |
    Then the next recall for 5 cards should be
      | id    |
      | card1 |
      | card2 |
      | card5 |
      | card6 |
      | card7 |

  Scenario: Next card
    Given stacks
      # now = 1000, dayLength = 100, Hard = +100, Good = +300, Easy = +600,
      | stackId | id    | timestamp | state | recall |
      | stack1  | card1 | 200       | Hard  | 300    |
      | stack1  | card2 | 200       | Good  | 500    |
      | stack1  | card3 | 1000      | Good  | 1300   |
      | stack2  | card4 | 1100      | Good  | 1400   |
      | stack2  | card5 |           |       |        |
      | stack2  | card6 |           |       |        |
      | stack2  | card7 | 300       | Good  | 600    |
      | stack2  | card8 |           |       |        |
    Then the next cards for 5 cards should be
      | id    | eval  | toRecall | stackCount |
      | card1 | Again | 6        | 5          |
      | card2 | Good  | 6        | 5          |
      | card5 | Again | 5        | 4          |
      | card6 | Hard  | 5        | 4          |
      | card7 | Good  | 4        | 3          |
      | card1 | Again | 3        | 2          |
      | card5 | Hard  | 3        | 2          |
      | card1 | Hard  | 2        | 1          |
      | none  |       | 1        | 0          |