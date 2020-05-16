@regressiontest @rundaily @payment
Feature: Completion of the order with different credit card numbers
  As a guest customer
  I want to be able to buy products with different credit card numbers
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (All_Credit_Cards: "<testRailId>") Payment is completed by different credit card types for "<locale>" locale and payment for "<paymentType>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
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
    And User selects pay by card option "<locale>"
    And User enters payment detail for "<paymentType>" "<locale>"
    Then User clicks submit order button "<paymentType>"
    Then User should complete order successfully

    @c4444
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4444     | 1          | uk     | quickview    | standard     | creditcardMaster |

    @c4445
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4445     | 2          | us     | quickview    | standard     | creditcardMaster |

    @c4446
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4446     | 3          | ca     | quickview    | standard     | creditcardMaster |

    @c4447
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4447     | 4          | de     | quickview    | standard     | creditcardMaster |

    @c4448
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4448     | 5          | de-en  | quickview    | standard     | creditcardMaster |

    @c4449
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4449     | 6          | nl     | quickview    | standard     | creditcardMaster |

    @c4450
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4450     | 7          | fr     | quickview    | standard     | creditcardMaster |

    @c4451
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4451     | 8          | fr-en  | quickview    | standard     | creditcardMaster |

    @c4452
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4452     | 9          | ie     | quickview    | standard     | creditcardMaster |

    @c4453
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4453     | 10         | eu     | quickview    | standard     | creditcardMaster |

    @c4454
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4454     | 11         | au     | quickview    | standard     | creditcardMaster |

    @c4455
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4455     | 12         | nz     | quickview    | standard     | creditcardMaster |

    @c4456
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4456     | 13         | int    | quickview    | standard     | creditcardMaster |

    @c4457
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4457     | 14         | uk     | quickview    | standard     | amex        |

    @c4458
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4458     | 15         | us     | quickview    | standard     | amex        |

    @c4459
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4459     | 16         | ca     | quickview    | standard     | amex        |

    @c4460
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4460     | 17         | de     | quickview    | standard     | amex        |

    @c4461
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4461     | 18         | de-en  | quickview    | standard     | amex        |

    @c4462
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4462     | 19         | nl     | quickview    | standard     | amex        |

    @c4463
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4463     | 20         | fr     | quickview    | standard     | amex        |

    @c4464
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4464     | 21         | fr-en  | quickview    | standard     | amex        |

    @c4465
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4465     | 22         | ie     | quickview    | standard     | amex        |

    @c4466
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4466     | 23         | eu     | quickview    | standard     | amex        |

    @c4467
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4467     | 24         | au     | quickview    | standard     | amex        |

    @c4468
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4468     | 25         | nz     | quickview    | standard     | amex        |

    @c4469
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4469     | 26         | int    | quickview    | standard     | amex        |