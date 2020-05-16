@regressiontest @rundaily @delivery
Feature: Completion of the order as a guest customer with next day delivery and credit card
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Next_Day_Delivery: "<testRailId>") Checkout is done by the guest customer; the delivery type is "<deliveryType>" and the payment type is "<paymentType>" and the locale is "<locale>"
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

    @c3958
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3958     | 1          | de-en  | quickview    | nextday      | creditcardVisa |

    @c3959
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3959     | 2          | de-en  | pdp          | nextday      | creditcardVisa |

    @c3960
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3960     | 3          | fr-en  | quickview    | nextday      | creditcardVisa |

    @c3961
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3961     | 4          | fr-en  | pdp          | nextday      | creditcardVisa |

    @c3962
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3962     | 5          | nl-en  | quickview    | nextday      | creditcardVisa |

    @c3963
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3963     | 6          | nl-en  | pdp          | nextday      | creditcardVisa |

    @c3964
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3964     | 7          | ie     | quickview    | nextday      | creditcardVisa |

    @c3965
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3965     | 8          | ie     | pdp          | nextday      | creditcardVisa |

    @c4594
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4594     | 9          | de     | quickview    | nextday      | creditcardVisa |

    @c4595
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4595     | 10         | de     | pdp          | nextday      | creditcardVisa |

    @c4596
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4596     | 11         | fr     | quickview    | nextday      | creditcardVisa |

    @c4597
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4597     | 12         | fr     | pdp          | nextday      | creditcardVisa |

    @c4598
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4598     | 13         | de-en  | quickview    | nextday      | creditcardMaster |

    @c4599
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4599     | 14         | de-en  | pdp          | nextday      | creditcardMaster |

    @c4600
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4600     | 15         | fr-en  | quickview    | nextday      | creditcardMaster |

    @c4601
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4601     | 16         | fr-en  | pdp          | nextday      | creditcardMaster |

    @c4602
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4602     | 17         | ie     | quickview    | nextday      | creditcardMaster |

    @c4603
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4603     | 18         | ie     | pdp          | nextday      | creditcardMaster |

    @c4604
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4604     | 19         | de     | quickview    | nextday      | creditcardMaster |

    @c4605
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4605     | 20         | de     | pdp          | nextday      | creditcardMaster |

    @c4606
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4606     | 21         | fr     | quickview    | nextday      | creditcardMaster |

    @c4607
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4607     | 22         | fr     | pdp          | nextday      | creditcardMaster |

    @c4608
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4608     | 23         | de-en  | quickview    | nextday      | amex        |

    @c4609
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4609     | 24         | de-en  | pdp          | nextday      | amex        |

    @c4610
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4610     | 25         | fr-en  | quickview    | nextday      | amex        |

    @c4611
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4611     | 26         | fr-en  | pdp          | nextday      | amex        |

    @c4612
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4612     | 27         | ie     | quickview    | nextday      | amex        |

    @c4613
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4613     | 28         | ie     | pdp          | nextday      | amex        |

    @c4614
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4614     | 29         | de     | quickview    | nextday      | amex        |

    @c4615
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4615     | 30         | de     | pdp          | nextday      | amex        |

    @c4616
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4616     | 31         | fr     | quickview    | nextday      | amex        |

    @c4617
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4617     | 32         | fr     | pdp          | nextday      | amex        |

  Scenario Outline: "<scenarioId>" (Next_Day_Delivery: "<testRailId>") Checkout is done by the guest customer; the delivery type is "<deliveryType>" and the payment type is "<paymentType>" and the locale is "<locale>"
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

    @c4618
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4618     | 33         | de-en  | quickview    | nextday      | googlepay   |

    @c4619
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4619     | 34         | de-en  | pdp          | nextday      | googlepay   |

    @c4620
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4620     | 35         | fr-en  | quickview    | nextday      | googlepay   |

    @c4621
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4621     | 36         | fr-en  | pdp          | nextday      | googlepay   |

    @c4622
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4622     | 37         | ie     | quickview    | nextday      | googlepay   |

    @c4623
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4623     | 38         | ie     | pdp          | nextday      | googlepay   |

    @c4624
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4624     | 39         | de     | quickview    | nextday      | googlepay   |

    @c4625
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4625     | 40         | de     | pdp          | nextday      | googlepay   |

    @c4626
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4626     | 41         | fr     | quickview    | nextday      | googlepay   |

    @c4627
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4627     | 42         | fr     | pdp          | nextday      | googlepay   |