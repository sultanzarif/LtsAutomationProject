@regressiontest @rundaily @typeofcustomer
Feature: Completion of the order continue as guest customer
  As a continue as guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Continue_As_Guest: "<testRailId>") Checkout is done by the continue as guest customer; The locale is "<locale>", "<quickViewPdp>" is clicked on product list page and delivery type "<deliveryType>" and payment type "<paymentType>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks the checkout button
    And User logs in with continue as guest customer "<locale>"
    And User clicks continue as guest button
    And User enters customer details
    And User chooses delivery type based on locale "<deliveryType>" "<locale>"
    And User enters address details on the checkout page "<locale>"
    And User selects pay by card option "<locale>"
    And User enters payment detail for "<paymentType>" "<locale>"
    Then User clicks submit order button "<paymentType>"
    Then User should complete order successfully

    @c4669
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4669     | 1          | uk     | quickview    | standard     | creditcardVisa |

    @c4670
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4670     | 2          | uk     | pdp          | standard     | creditcardVisa |

    @c4671
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4671     | 3          | us     | quickview    | standard     | creditcardVisa |

    @c4672
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4672     | 4          | us     | pdp          | standard     | creditcardVisa |

    @c4673
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4673     | 5          | nl-en  | quickview    | standard     | creditcardVisa |

    @c4674
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4674     | 6          | nl-en  | pdp          | standard     | creditcardVisa |

    @c4675
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4675     | 7          | de-en  | quickview    | standard     | creditcardVisa |

    @c4676
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4676     | 8          | de-en  | pdp          | standard     | creditcardVisa |

    @c4677
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4677     | 9          | fr-en  | quickview    | standard     | creditcardVisa |

    @c4678
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4678     | 10         | fr-en  | pdp          | standard     | creditcardVisa |

    @c4679
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4679     | 11         | ie     | quickview    | standard     | creditcardVisa |

    @c4680
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4680     | 12         | ie     | pdp          | standard     | creditcardVisa |

    @c4681
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4681     | 13         | ca     | quickview    | standard     | creditcardVisa |

    @c4682
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4682     | 14         | ca     | pdp          | standard     | creditcardVisa |

    @c4683
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4683     | 15         | de     | quickview    | standard     | creditcardVisa |

    @c4684
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4684     | 16         | de     | pdp          | standard     | creditcardVisa |

    @c4685
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4685     | 17         | nl     | quickview    | standard     | creditcardVisa |

    @c4686
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4686     | 18         | nl     | pdp          | standard     | creditcardVisa |

    @c4687
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4687     | 19         | fr     | quickview    | standard     | creditcardVisa |

    @c4688
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4688     | 20         | fr     | pdp          | standard     | creditcardVisa |

    @c4689
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4689     | 21         | eu     | quickview    | standard     | creditcardVisa |

    @c4690
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4690     | 22         | eu     | pdp          | standard     | creditcardVisa |

    @c4691
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4691     | 23         | au     | quickview    | standard     | creditcardVisa |

    @c4692
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4692     | 24         | au     | pdp          | standard     | creditcardVisa |

    @c4693
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4693     | 25         | nz     | quickview    | standard     | creditcardVisa |

    @c4694
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4694     | 26         | nz     | pdp          | standard     | creditcardVisa |

    @c4695
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4695     | 27         | int    | quickview    | standard     | creditcardVisa |

    @c4696
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4696     | 28         | int    | pdp          | standard     | creditcardVisa |

    @c4697
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4697     | 29         | uk     | quickview    | standard     | creditcardMaster |

    @c4698
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4698     | 30         | us     | quickview    | standard     | creditcardMaster |

    @c4699
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4699     | 31         | de-en  | quickview    | standard     | creditcardMaster |

    @c4700
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4700     | 32         | fr-en  | quickview    | standard     | creditcardMaster |

    @c4701
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4701     | 33         | ie     | quickview    | standard     | creditcardMaster |

    @c4702
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4702     | 34         | ca     | quickview    | standard     | creditcardMaster |

    @c4703
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4703     | 35         | de     | quickview    | standard     | creditcardMaster |

    @c4704
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4704     | 36         | nl     | quickview    | standard     | creditcardMaster |

    @c4705
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4705     | 37         | fr     | quickview    | standard     | creditcardMaster |

    @c4706
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4706     | 38         | eu     | quickview    | standard     | creditcardMaster |

    @c4707
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4707     | 39         | au     | quickview    | standard     | creditcardMaster |

    @c4708
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4708     | 40         | nz     | quickview    | standard     | creditcardMaster |

    @c4709
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4709     | 41         | int    | quickview    | standard     | creditcardMaster |

    @c4710
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4710     | 42         | uk     | quickview    | standard     | amex        |

    @c4711
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4711     | 43         | us     | quickview    | standard     | amex        |

    @c4712
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4712     | 44         | de-en  | quickview    | standard     | amex        |

    @c4713
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4713     | 45         | fr-en  | quickview    | standard     | amex        |

    @c4714
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4714     | 46         | ie     | quickview    | standard     | amex        |

    @c4715
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4715     | 47         | ca     | quickview    | standard     | amex        |

    @c4716
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4716     | 48         | de     | quickview    | standard     | amex        |

    @c4717
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4717     | 49         | nl     | quickview    | standard     | amex        |

    @c4718
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4718     | 50         | fr     | quickview    | standard     | amex        |

    @c4719
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4719     | 51         | eu     | quickview    | standard     | amex        |

    @c4720
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4720     | 52         | au     | quickview    | standard     | amex        |

    @c4721
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4721     | 53         | nz     | quickview    | standard     | amex        |

    @c4722
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4722     | 54         | int    | quickview    | standard     | amex        |

  Scenario Outline: "<scenarioId>" (Continue_As_Guest: "<testRailId>") Checkout is done by the continue as guest customer; The locale is "<locale>", "<quickViewPdp>" is clicked on product list page and delivery type "<deliveryType>" and payment type "<paymentType>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks the checkout button
    And User logs in with continue as guest customer "<locale>"
    And User clicks continue as guest button
    And User enters customer details
    And User chooses delivery type based on locale "<deliveryType>" "<locale>"
    And User enters address details on the checkout page "<locale>"
    And User enters payment detail for "<paymentType>" "<locale>"
    Then User clicks submit order button "<paymentType>"
    Then User should complete order successfully

    @c4723
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4723     | 55         | uk     | quickview    | standard     | googlepay   |

    @c4724
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4724     | 56         | us     | quickview    | standard     | googlepay   |

    @c4725
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4725     | 57         | de-en  | quickview    | standard     | googlepay   |

    @c4726
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4726     | 58         | fr-en  | quickview    | standard     | googlepay   |

    @c4727
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4727     | 59         | ie     | quickview    | standard     | googlepay   |

    @c4728
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4728     | 60         | ca     | quickview    | standard     | googlepay   |

    @c4729
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4729     | 61         | de     | quickview    | standard     | googlepay   |

    @c4730
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4730     | 62         | nl     | quickview    | standard     | googlepay   |

    @c4731
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4731     | 63         | fr     | quickview    | standard     | googlepay   |

    @c4732
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4732     | 64         | eu     | quickview    | standard     | googlepay   |

    @c4733
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4733     | 65         | au     | quickview    | standard     | googlepay   |

    @c4734
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4734     | 66         | nz     | quickview    | standard     | googlepay   |

    @c4735
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4735     | 67         | int    | quickview    | standard     | googlepay   |