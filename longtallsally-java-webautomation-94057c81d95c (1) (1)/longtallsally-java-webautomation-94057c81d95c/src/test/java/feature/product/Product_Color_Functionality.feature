@rundaily @product
Feature: Check product color functions
  As a user
  I want to be able to see and select product color
  So the color should be able to select and save as selected color in the shopping bag

  Scenario Outline: "<scenarioId>" (Product_Color_Functionality: "<testRailId>") Open category page and check +color option is represent the product which has more than one color "<locale>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product which has +color option
    Then The product should have more than one color

    @c4086
    Examples:
      | testRailId | scenarioId | locale |
      | @c4086     | 1          | uk     |

    @c4087
    Examples:
      | testRailId | scenarioId | locale |
      | @c4087     | 2          | us     |

    @c4106
    Examples:
      | testRailId | scenarioId | locale |
      | @c4106     | 3          | nl-en  |

    @c4107
    Examples:
      | testRailId | scenarioId | locale |
      | @c4107     | 4          | de-en  |

    @c4108
    Examples:
      | testRailId | scenarioId | locale |
      | @c4108     | 5          | fr-en  |

    @c4109
    Examples:
      | testRailId | scenarioId | locale |
      | @c4109     | 6          | ie     |

  Scenario Outline: "<scenarioId>" (Product_Color_Functionality: "<testRailId>") Check +color option url for locale "<locale>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product which has +color option
    Then The url should not contains option

    @c4100
    Examples:
      | testRailId | scenarioId | locale |
      | @c4100     | 7          | uk     |

    @c4101
    Examples:
      | testRailId | scenarioId | locale |
      | @c4101     | 8          | us     |

    @c4102
    Examples:
      | testRailId | scenarioId | locale |
      | @c4102     | 9          | nl-en  |

    @c4103
    Examples:
      | testRailId | scenarioId | locale |
      | @c4103     | 10         | de-en  |

    @c4104
    Examples:
      | testRailId | scenarioId | locale |
      | @c4104     | 11         | fr-en  |

    @c4105
    Examples:
      | testRailId | scenarioId | locale |
      | @c4105     | 12         | ie     |

  Scenario Outline: "<scenarioId>" (Product_Color_Functionality: "<testRailId>") Check product option url for locale "<locale>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product and clicks product image
    Then The url should contains option

    @c4110
    Examples:
      | testRailId | scenarioId | locale |
      | @c4110     | 13         | uk     |

    @c4111
    Examples:
      | testRailId | scenarioId | locale |
      | @c4111     | 14         | us     |
    @c4112
    Examples:
      | testRailId | scenarioId | locale |
      | @c4112     | 15         | nl-en  |

    @c4113
    Examples:
      | testRailId | scenarioId | locale |
      | @c4113     | 16         | de-en  |

    @c4114
    Examples:
      | testRailId | scenarioId | locale |
      | @c4114     | 17         | fr-en  |

    @c4115
    Examples:
      | testRailId | scenarioId | locale |
      | @c4115     | 18         | ie     |