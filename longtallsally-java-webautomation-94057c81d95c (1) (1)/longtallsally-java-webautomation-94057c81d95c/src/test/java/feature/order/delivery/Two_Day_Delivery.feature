@regressiontest @rundaily @delivery
Feature: Completion of the order as a guest customer with 2 day delivery and credit card
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Two_Day_Delivery: "<testRailId>") Checkout is done by the guest customer; the delivery type is "<deliveryType>" and the payment type is "<paymentType>" and the locale is "<locale>"
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

    @c3966
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3966     | 1          | de-en  | quickview    | twoday       | creditcardVisa |

    @c3967
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3967     | 2          | de-en  | pdp          | twoday       | creditcardVisa |

    @c3968
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3968     | 3          | fr-en  | quickview    | twoday       | creditcardVisa |

    @c3969
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3969     | 4          | fr-en  | pdp          | twoday       | creditcardVisa |

    @c3970
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3970     | 5          | nl-en  | quickview    | twoday       | creditcardVisa |

    @c3971
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3971     | 6          | nl-en  | pdp          | twoday       | creditcardVisa |

    @c3972
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3972     | 7          | ie     | quickview    | twoday       | creditcardVisa |

    @c3973
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3973     | 8          | ie     | pdp          | twoday       | creditcardVisa |

    @c4628
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4628     | 9          | de     | quickview    | twoday       | creditcardVisa |

    @c4629
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4629     | 10         | de     | pdp          | twoday       | creditcardVisa |

    @c4630
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4630     | 11         | fr     | quickview    | twoday       | creditcardVisa |

    @c4631
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4631     | 12         | fr     | pdp          | twoday       | creditcardVisa |

    @c4632
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4632     | 13         | de-en  | quickview    | twoday       | creditcardMaster |

    @c4633
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4633     | 14         | de-en  | pdp          | twoday       | creditcardMaster |

    @c4634
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4634     | 15         | fr-en  | quickview    | twoday       | creditcardMaster |

    @c4635
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4635     | 16         | fr-en  | pdp          | twoday       | creditcardMaster |

    @c4636
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4636     | 17         | ie     | quickview    | twoday       | creditcardMaster |

    @c4637
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4637     | 18         | ie     | pdp          | twoday       | creditcardMaster |

    @c4638
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4638     | 19         | de     | quickview    | twoday       | creditcardMaster |

    @c4639
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4639     | 20         | de     | pdp          | twoday       | creditcardMaster |

    @c4640
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4640     | 21         | fr     | quickview    | twoday       | creditcardMaster |

    @c4641
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4641     | 22         | fr     | pdp          | twoday       | creditcardMaster |

    @c4642
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4642     | 23         | de-en  | quickview    | twoday       | amex        |

    @c4643
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4643     | 24         | de-en  | pdp          | twoday       | amex        |

    @c4644
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4644     | 25         | fr-en  | quickview    | twoday       | amex        |

    @c4645
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4645     | 26         | fr-en  | pdp          | twoday       | amex        |

    @c4646
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4646     | 27         | ie     | quickview    | twoday       | amex        |

    @c4647
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4647     | 28         | ie     | pdp          | twoday       | amex        |

    @c4648
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4648     | 29         | de     | quickview    | twoday       | amex        |

    @c4649
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4649     | 30         | de     | pdp          | twoday       | amex        |

    @c4650
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4650     | 31         | fr     | quickview    | twoday       | amex        |

    @c4651
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4651     | 32         | fr     | pdp          | twoday       | amex        |

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

    @c4652
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4652     | 33         | de-en  | quickview    | twoday       | googlepay   |

    @c4653
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4653     | 34         | de-en  | pdp          | twoday       | googlepay   |

    @c4654
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4654     | 35         | fr-en  | quickview    | twoday       | googlepay   |

    @c4655
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4655     | 36         | fr-en  | pdp          | twoday       | googlepay   |

    @c4656
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4656     | 37         | ie     | quickview    | twoday       | googlepay   |

    @c4657
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4657     | 38         | ie     | pdp          | twoday       | googlepay   |

    @c4658
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4658     | 39         | de     | quickview    | twoday       | googlepay   |

    @c4659
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4659     | 40         | de     | pdp          | twoday       | googlepay   |

    @c4660
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4660     | 41         | fr     | quickview    | twoday       | googlepay   |

    @c4661
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4661     | 42         | fr     | pdp          | twoday       | googlepay   |