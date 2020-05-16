@rundaily @webmain
Feature: Service message check
  As a customer
  I want to be able to click service message link and turn back to the homepage
  So when the customer clicks service message link, the related page should open

  Scenario Outline: "<scenarioId>" (Service_Message: "<testRailId>") Click service message link on the homepage and check the related page for "<locale>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    And User clicks the service message link "<serviceMessage>"
    When The user navigates the previous page
    Then The page should turn back to the homepage successfully

    @c6395
    Examples:
      | testRailId | scenarioId | locale | serviceMessage      |
      | @c6395     | 1          | uk     | firstServiceMessage |

    @c6396
    Examples:
      | testRailId | scenarioId | locale | serviceMessage      |
      | @c6396     | 2          | us     | firstServiceMessage |

    @c6397
    Examples:
      | testRailId | scenarioId | locale | serviceMessage      |
      | @c6397     | 3          | de-en  | firstServiceMessage |

    @c6398
    Examples:
      | testRailId | scenarioId | locale | serviceMessage      |
      | @c6398     | 4          | de     | firstServiceMessage |

    @c6399
    Examples:
      | testRailId | scenarioId | locale | serviceMessage      |
      | @c6399     | 5          | au     | firstServiceMessage |