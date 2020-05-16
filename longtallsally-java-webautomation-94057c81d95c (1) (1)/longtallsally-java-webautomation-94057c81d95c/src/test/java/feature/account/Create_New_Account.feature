@regressiontest @rundaily @account
Feature: Create an account
  As a new customer
  I want to be able to create account
  So that I log in with the created account

  Scenario Outline: "<scenarioId>" (Create_New_Account: "<testRailId>") Create an account with an un-exist email address for "<locale>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    Then User clicks My Account link before login
    And User logs in as a new customer from my account page based on locale "<locale>"
    And User clicks my details page
    And User enters name, lastname and phones
    Then User clicks My Account link after login
    And User clicks My Address Book link
    And User adds address details on my account page based on locale "<locale>"
    Then User clicks My Account link after login
    And User clicks my payment details page
    And User clicks new payment card button
    And User adds new payment card details
    When User submits add payment card button
    Then User should create an account successfully

    @c3806
    Examples:
      | testRailId | scenarioId | locale |
      | @c3806     | 1          | uk     |

    @c3927
    Examples:
      | testRailId | scenarioId | locale |
      | @c3927     | 2          | us     |

    @c3928
    Examples:
      | testRailId | scenarioId | locale |
      | @c3928     | 3          | nl-en  |

    @c4180
    Examples:
      | testRailId | scenarioId | locale |
      | @c4180     | 4          | de-en  |

    @c4181
    Examples:
      | testRailId | scenarioId | locale |
      | @c4181     | 5          | fr-en  |

    @c4182
    Examples:
      | testRailId | scenarioId | locale |
      | @c4182     | 6          | ie     |

    @c4183
    Examples:
      | testRailId | scenarioId | locale |
      | @c4183     | 7          | ca     |

    @c4184
    Examples:
      | testRailId | scenarioId | locale |
      | @c4184     | 8          | nl     |

    @c4185
    Examples:
      | testRailId | scenarioId | locale |
      | @c4185     | 9          | de     |

    @c4186
    Examples:
      | testRailId | scenarioId | locale |
      | @c4186     | 10         | fr     |

    @c4187
    Examples:
      | testRailId | scenarioId | locale |
      | @c4187     | 11         | eu     |

    @c4188
    Examples:
      | testRailId | scenarioId | locale |
      | @c4188     | 12         | au     |

    @c4189
    Examples:
      | testRailId | scenarioId | locale |
      | @c4189     | 13         | nz     |

    @c4190
    Examples:
      | testRailId | scenarioId | locale |
      | @c4190     | 14         | int    |