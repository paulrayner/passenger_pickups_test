Feature: Today's Arrivals

  Scenario: Load page successfully
    When I go to Today's Arrivals
    Then I should be on the Today's Arrivals page

  Scenario: Display multiple arrivals, but only today's
    Given the following arrivals:
      | Name    | Flight  | From | Date     | Time   |
      | Richard | UA 6858 | ABQ  | today    | 2:41pm |
      | Jane    | UA 828  | BOI  | tomorrow | 3:54pm |
      | Paul    | UA 6175 | BIS  | today    | 5:50pm |
    When I go to Today's Arrivals
    Then I should see the following:
      | Name    | Flight  | From | Scheduled Time | Status  | Actual Time |
      | Richard | UA 6858 | ABQ  | 2:41pm         | On Time | 2:41pm      |
      | Paul    | UA 6175 | BIS  | 5:20pm         | Delayed | 6:04pm      |