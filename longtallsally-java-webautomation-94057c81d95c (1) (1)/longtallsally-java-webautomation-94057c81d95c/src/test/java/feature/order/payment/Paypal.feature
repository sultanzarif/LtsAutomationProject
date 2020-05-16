@regressiontest @rundaily @payment
Feature: Completion of the order as a guest customer with standard delivery and Paypal payment type
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Paypal: "<testRailId>") Checkout is done by the guest customer for "<locale>" "<quickViewPdp>"; the delivery type is "<deliveryType>" and the payment type is "<paymentType>"
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

    @c6153
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c3953     | 1          | uk     | quickview    | standard     | paypal      |

    @c6468
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6468     | 2          | uk     | pdp          | standard     | paypal      |

    @c6469
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6469     | 3          | us     | quickview    | standard     | paypal      |

    @c6470
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6470     | 4          | us     | pdp          | standard     | paypal      |

    @c6471
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6471     | 5          | nl-en  | quickview    | standard     | paypal      |

    @c6472
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6472     | 6          | nl-en  | pdp          | standard     | paypal      |

    @c6473
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6473     | 7          | de-en  | quickview    | standard     | paypal      |

    @c6474
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6474     | 8          | de-en  | pdp          | standard     | paypal      |

    @c6475
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6475     | 9          | fr-en  | quickview    | standard     | paypal      |

    @c6476
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6476     | 10         | fr-en  | pdp          | standard     | paypal      |

    @c6477
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6477     | 11         | ie     | quickview    | standard     | paypal      |

    @c6478
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6478     | 12         | ie     | pdp          | standard     | paypal      |

    @c6479
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6479     | 13         | ca     | quickview    | standard     | paypal      |

    @c6480
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6480     | 14         | ca     | pdp          | standard     | paypal      |

    @c6481
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6481     | 15         | de     | quickview    | standard     | paypal      |

    @c6482
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6482     | 16         | de     | pdp          | standard     | paypal      |

    @c6483
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6483     | 17         | nl     | quickview    | standard     | paypal      |

    @c6484
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6484     | 18         | nl     | pdp          | standard     | paypal      |

    @c6485
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6485     | 19         | fr     | quickview    | standard     | paypal      |

    @c6486
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6486     | 20         | fr     | pdp          | standard     | paypal      |

    @c6487
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6487     | 21         | eu     | quickview    | standard     | paypal      |

    @c6488
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6488     | 22         | eu     | pdp          | standard     | paypal      |

    @c6489
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6489     | 23         | au     | quickview    | standard     | paypal      |

    @c6490
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6490     | 24         | au     | pdp          | standard     | paypal      |

    @c6491
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6491     | 25         | nz     | quickview    | standard     | paypal      |

    @c6492
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c6492     | 26         | nz     | pdp          | standard     | paypal      |