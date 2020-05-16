@regressiontest @rundaily @payment
Feature: Completion of the order as a guest customer with standard delivery and paypal express payment type
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Paypal_Express: "<testRailId>") Checkout is done "<quickViewPdp>" by the guest customer for "<locale>"; the payment type is "<paymentType>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User enters payment detail for "<paymentType>" "<locale>"
    Then User should complete order successfully

    @c6576
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6576     | 1          | uk     | quickview    | paypalexpress |

    @c6577
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6577     | 2          | uk     | pdp          | paypalexpress |

    @c6578
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6578     | 3          | us     | quickview    | paypalexpress |

    @c6579
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6579     | 4          | us     | pdp          | paypalexpress |

    @c6580
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6580     | 5          | nl-en  | quickview    | paypalexpress |

    @c6581
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6581     | 6          | nl-en  | pdp          | paypalexpress |

    @c6582
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6582     | 7          | de-en  | quickview    | paypalexpress |

    @c6583
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6583     | 8          | de-en  | pdp          | paypalexpress |

    @c6584
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6584     | 9          | fr-en  | quickview    | paypalexpress |

    @c6585
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6585     | 10         | fr-en  | pdp          | paypalexpress |

    @c6586
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6586     | 11         | ie     | quickview    | paypalexpress |

    @c6587
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6587     | 12         | ie     | pdp          | paypalexpress |

    @c6588
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6588     | 13         | de     | pdp          | paypalexpress |

    @c6589
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6589     | 14         | nl     | quickview    | paypalexpress |

    @c6590
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6590     | 15         | nl     | pdp          | paypalexpress |

    @c6591
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6591     | 16         | fr     | quickview    | paypalexpress |

    @c6592
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6592     | 17         | fr     | pdp          | paypalexpress |

    @c6593
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6593     | 18         | eu     | quickview    | paypalexpress |

    @c6594
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType   |
      | @c6594     | 19         | eu     | pdp          | paypalexpress |