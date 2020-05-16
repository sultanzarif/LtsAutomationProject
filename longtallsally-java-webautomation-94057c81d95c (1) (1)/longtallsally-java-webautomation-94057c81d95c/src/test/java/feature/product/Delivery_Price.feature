@rundaily @product
Feature: Customer-based checkout
  As a customer
  I want to be able to change delivery type
  So that I can see the delivery price in the subtotal

  Scenario Outline: "<scenarioId>" (Delivery_Price: "<testRailId>") The user selects "<locale>" location and "<deliveryType>" delivery type when the shopping bag price is under the threshold
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a specific product which has a price under bag threshold for "<locale>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks the checkout button
    And User logs in as a guest or new customer on the checkout page
    And User enters customer details
    And User chooses delivery type based on locale "<deliveryType>" "<locale>"
    And User enters address details on the checkout page "<locale>"
    And User click delivery and collection continue button
    Then The Delivery price should be added to subtotal "<deliveryAmountQA>" "<deliveryAmountPreprod>" "<locale>"

    @c4139
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4139     | 1          | pdp          | uk     | standard     | £3.95            | £3.95                 |

    @c4140
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4140     | 2          | pdp          | uk     | express      | £7.95            | £7.95                 |

    @c4239
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4239     | 3          | pdp          | us     | standard     | $14.95           | Free                  |

    @c4240
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4240     | 4          | pdp          | us     | express      | $20.00           | $15.00                |

    @c4141
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4141     | 5          | pdp          | de-en  | standard     | 5,95 €           | 5,95 €                |

    @c4142
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4142     | 6          | pdp          | de-en  | nextday      | 19,95 €          | 19,95 €               |

    @c4143
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4143     | 7          | pdp          | de-en  | twoday       | 7,95 €           | 7,95 €                |

    @c4144
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4144     | 8          | pdp          | fr-en  | standard     | 5,95 €           | 5,95 €                |

    @c4145
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4145     | 9          | pdp          | fr-en  | nextday      | 25,00 €          | 25,00 €               |

    @c4146
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4146     | 10         | pdp          | fr-en  | twoday       | 9,95 €           | 9,95 €                |

    @c4147
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4147     | 11         | pdp          | ie     | standard     | €4.99            | €5.95                 |

    @c4148
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4148     | 12         | pdp          | ie     | nextday      | €25.00           | €25.00                |

    @c4149
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4149     | 13         | pdp          | ie     | twoday       | €9.95            | €9.95                 |

    @c4310
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4310     | 14         | pdp          | ca     | standard     | C$14.95          | CA$10.00              |

    @c4311
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4311     | 15         | pdp          | ca     | express      | C$19.95          | null                  |

    @c4312
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4312     | 16         | pdp          | de     | standard     | 5,95 €           | 5,95 €                |

    @c4313
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4313     | 17         | pdp          | de     | nextday      | 19,95 €          | 19,95 €               |

    @c4314
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4314     | 18         | pdp          | de     | twoday       | 7,95 €           | 7,95 €                |

    @c4315
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4315     | 19         | pdp          | fr     | standard     | 5,95 €           | 5,95 €                |

    @c4316
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4316     | 20         | pdp          | fr     | nextday      | 25,00 €          | 25,00 €               |

    @c4317
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4317     | 21         | pdp          | fr     | twoday       | 9,95 €           | 9,95 €                |

    @c4318
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4318     | 22         | pdp          | eu     | standard     | 5,95 €           | 5,95 €                |

    @c4319
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4319     | 23         | pdp          | eu     | express      | 11,95 €          | null                  |

    @c4339
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4339     | 24         | pdp          | nl     | standard     | 5,95 €           | € 5,95                |

  Scenario Outline: "<scenarioId>" (Delivery_Price: "<testRailId>") The user selects "<locale>" location and "<deliveryType>" delivery type when the shopping bag price is over the threshold
    Given User navigates to the home website "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User closes add to bag popup
    And User clicks logo "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User closes add to bag popup
    And User clicks logo "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks the checkout button
    And User logs in as a guest or new customer on the checkout page
    And User enters customer details
    And User chooses delivery type based on locale "<deliveryType>" "<locale>"
    And User enters address details on the checkout page "<locale>"
    And User click delivery and collection continue button
    Then The Delivery price should be added to subtotal "<deliveryAmountQA>" "<deliveryAmountPreprod>" "<locale>"

    @c4153
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4153     | 25         | pdp          | uk     | standard     | Free             | Free                  |

    @c4154
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4154     | 26         | pdp          | uk     | express      | £7.95            | £7.95                 |

  Scenario Outline: "<scenarioId>" (Delivery_Price: "<testRailId>") The user selects "<deliveryType>" Delivery Type when the location is "<locale>"
    Given User navigates to the home website "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a specific product which has a price under bag threshold for "<locale>"
    And User picks a random colour
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks the checkout button
    And User logs in as a guest or new customer on the checkout page
    And User enters customer details
    And User chooses delivery type based on locale "<deliveryType>" "<locale>"
    And User enters address details on the checkout page "<locale>"
    And User click delivery and collection continue button
    And User clicks delivery continue button based on delivery type "<deliveryType>"
    Then The Delivery price should be added to subtotal "<deliveryAmountQA>" "<deliveryAmountPreprod>" "<locale>"

    @c4155
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType | deliveryAmountQA | deliveryAmountPreprod |
      | @c4155     | 27         | pdp          | uk     | collectPlus  | £3.95            | £3.95                 |

  Scenario Outline: "<scenarioId>" (Delivery_Price: "<testRailId>") The user selects "<deliveryType>" Delivery Type when the location is "<locale>"
    Given User navigates to the home website "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a specific product which has a price under bag threshold for "<locale>"
    And User picks a random colour
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks the checkout button
    And User logs in as a guest or new customer on the checkout page
    And User enters customer details
    And User chooses delivery type based on locale "<deliveryType>" "<locale>"
    And User enters address details on the checkout page for Channel Island Delivery type
    Then The Delivery price should be added to subtotal "<deliveryAmountQA>" "<deliveryAmountPreprod>" "<locale>"

    @c4156
    Examples:
      | testRailId | scenarioId | quickViewPdp | locale | deliveryType  | deliveryAmountQA | deliveryAmountPreprod |
      | @c4156     | 28         | pdp          | uk     | channelIsland | £8.95            | £8.95                 |