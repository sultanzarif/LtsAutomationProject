@regressiontest @rundaily @delivery
Feature: Completion of the order as a guest customer with express delivery and credit card
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Express_Delivery: "<testRailId>") Checkout is done by the guest customer; the delivery type is "<deliveryType>" and the payment type is "<paymentType>" for locale "<locale>"
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
    Then User clicks submit order button "<paymentType>"
    Then User should complete order successfully

    @c3810
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3810     | 1          | uk     | quickview    | express      | creditcardVisa |

    @c3813
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3813     | 2          | uk     | pdp          | express      | creditcardVisa |

    @c3941
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3941     | 3          | us     | quickview    | express      | creditcardVisa |

    @c3942
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3942     | 4          | us     | pdp          | express      | creditcardVisa |

    @c4588
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4588     | 5          | uk     | quickview    | express      | creditcardMaster |

    @c4589
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4589     | 6          | uk     | quickview    | express      | amex        |

    @c4590
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4590     | 7          | uk     | quickview    | express      | googlepay   |


    @c4591
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4591     | 8          | us     | quickview    | express      | creditcardMaster |

    @c4592
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4592     | 9          | us     | quickview    | express      | amex        |

    @c4593
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4593     | 10         | us     | quickview    | express      | googlepay   |