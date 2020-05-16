@regressiontest @rundaily @payment
Feature: Completion of the order as a guest customer with standard delivery and googlepay payment type
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Google_Pay: "<testRailId>") Checkout is done by guest customer for "<locale>"; the delivery type is standard and the payment type is googlepay payment type and QuickView-Pdp type "<quickViewPdp>"
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
    And User enters payment detail for "<paymentType>" "<locale>"
    Then User should complete order successfully

    @c3814
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c3814     | 1          | uk     | quickview    | standard     | googlepay   |

    @c3815
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c3815     | 2          | uk     | pdp          | standard     | googlepay   |

    @c3944
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c3944     | 3          | us     | quickview    | standard     | googlepay   |

    @c3945
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c3945     | 4          | us     | pdp          | standard     | googlepay   |

    @c4340
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4340     | 5          | ca     | quickview    | standard     | googlepay   |

    @c4341
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4341     | 6          | ca     | pdp          | standard     | googlepay   |

    @c4342
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4342     | 7          | de-en  | quickview    | standard     | googlepay   |

    @c4343
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4343     | 8          | de-en  | pdp          | standard     | googlepay   |

    @c4344
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4344     | 9          | fr-en  | quickview    | standard     | googlepay   |

    @c4345
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4345     | 10         | fr-en  | pdp          | standard     | googlepay   |

    @c4346
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4346     | 11         | de     | quickview    | standard     | googlepay   |

    @c4347
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4347     | 12         | de     | pdp          | standard     | googlepay   |

    @c4348
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4348     | 13         | nl     | quickview    | standard     | googlepay   |

    @c4349
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4349     | 14         | nl     | pdp          | standard     | googlepay   |

    @c4350
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4350     | 15         | fr     | quickview    | standard     | googlepay   |

    @c4351
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4351     | 16         | fr     | pdp          | standard     | googlepay   |

    @c4352
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4352     | 17         | ie     | quickview    | standard     | googlepay   |

    @c4353
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4353     | 18         | ie     | pdp          | standard     | googlepay   |

    @c4354
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4354     | 19         | au     | quickview    | standard     | googlepay   |

    @c4355
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4355     | 20         | au     | pdp          | standard     | googlepay   |

    @c4356
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4356     | 21         | nz     | quickview    | standard     | googlepay   |

    @c4357
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4357     | 22         | nz     | pdp          | standard     | googlepay   |

    @c4358
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4358     | 23         | int    | quickview    | standard     | googlepay   |

    @c4359
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4359     | 24         | int    | pdp          | standard     | googlepay   |

    @c4360
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4360     | 25         | eu     | quickview    | standard     | googlepay   |

    @c4361
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4361     | 26         | eu     | pdp          | standard     | googlepay   |