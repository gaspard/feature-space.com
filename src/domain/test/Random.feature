Feature: Random

  Scenario: with a seed
    Given a random generator with seed 123
    Then the random generator should produce the following numbers
      | number |
      | 0.013  |
      | 0.647  |

  Scenario: with another seed
    Given a random generator with seed 789
    Then the random generator should produce the following numbers
      | number |
      | 0.736  |
      | 0.483  |

  Scenario: float to seed
    Given float numbers to use as seed
      | float | seed       |
      | 123.0 | 1079951360 |
      | 789.0 | 1082697728 |
    Then the float numbers should match the seed