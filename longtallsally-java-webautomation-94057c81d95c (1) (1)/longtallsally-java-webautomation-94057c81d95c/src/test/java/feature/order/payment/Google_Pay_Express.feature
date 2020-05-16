@regressiontest @rundaily @payment
Feature: Completion of the order as a guest customer with standard delivery and googlepay express payment type
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Google_Pay_Express: "<testRailId>") Checkout is done by guest customer; the delivery type is standard and the payment type is "<paymentType>" payment type and the locale "<locale>" "<quickViewPdp>"
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

    @c3816
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c3816     | 1          | uk     | quickview    | googlepayexpress |

    @c3817
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c3817     | 2          | uk     | pdp          | googlepayexpress |

    @c3818
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c3818     | 3          | us     | quickview    | googlepayexpress |

    @c3952
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |

      | @c3952     | 4          | us     | pdp          | googlepayexpress |

    @c4362
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4362     | 5          | ca     | quickview    | googlepayexpress |

    @c4363
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4363     | 6          | ca     | pdp          | googlepayexpress |

    @c4368
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4368     | 7          | de-en  | quickview    | googlepayexpress |

    @c4369
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4369     | 8          | de-en  | pdp          | googlepayexpress |

    @c4364
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4364     | 9          | fr-en  | quickview    | googlepayexpress |

    @c4365
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4365     | 10         | fr-en  | pdp          | googlepayexpress |

    @c4366
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4366     | 11         | de     | quickview    | googlepayexpress |

    @c4367
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4367     | 12         | de     | pdp          | googlepayexpress |

    @c4370
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4370     | 13         | nl     | quickview    | googlepayexpress |

    @c4371
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4371     | 14         | nl     | pdp          | googlepayexpress |

    @c4372
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4372     | 15         | fr     | quickview    | googlepayexpress |

    @c4373
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4373     | 16         | fr     | pdp          | googlepayexpress |

    @c4374
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4374     | 17         | ie     | quickview    | googlepayexpress |

    @c4375
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4375     | 18         | ie     | pdp          | googlepayexpress |

    @c4376
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4376     | 19         | au     | quickview    | googlepayexpress |

    @c4377
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4377     | 20         | au     | pdp          | googlepayexpress |

    @c4378
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4378     | 21         | nz     | quickview    | googlepayexpress |

    @c4379
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4379     | 22         | nz     | pdp          | googlepayexpress |

    @c4380
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4380     | 23         | int    | quickview    | googlepayexpress |

    @c4381
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4381     | 24         | int    | pdp          | googlepayexpress |

    @c4382
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4382     | 25         | eu     | quickview    | googlepayexpress |

    @c4383
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType      |
      | @c4383     | 26         | eu     | pdp          | googlepayexpress |