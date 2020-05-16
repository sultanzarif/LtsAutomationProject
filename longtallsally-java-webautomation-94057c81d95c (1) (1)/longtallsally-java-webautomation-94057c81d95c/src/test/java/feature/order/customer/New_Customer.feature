@regressiontest @rundaily @typeofcustomer
Feature: Completion of the order as a new customer
  As a new customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (New_Customer: "<testRailId>") Checkout is done by the new customer; The locale is "<locale>", "<quickViewPdp>" is clicked on product list page, the delivery type is "<deliveryType>" and the payment type is "<paymentType>"
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
    And User enters customer details with password
    And User chooses delivery type based on locale "<deliveryType>" "<locale>"
    And User enters address details on the checkout page "<locale>"
    And User selects pay by card option "<locale>"
    And User enters payment detail for "<paymentType>" "<locale>"
    Then User clicks submit order button "<paymentType>"
    Then User should complete order successfully

    @c3935
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3935     | 1          | uk     | quickview    | standard     | creditcardVisa |

    @c3936
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3936     | 2          | uk     | pdp          | standard     | creditcardVisa |

    @c3937
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3937     | 3          | us     | quickview    | standard     | creditcardVisa |

    @c3938
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3938     | 4          | us     | pdp          | standard     | creditcardVisa |

    @c3939
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3939     | 5          | nl-en  | quickview    | standard     | creditcardVisa |

    @c3940
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3940     | 6          | nl-en  | pdp          | standard     | creditcardVisa |

    @c4133
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4133     | 7          | de-en  | quickview    | standard     | creditcardVisa |

    @c4134
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4134     | 8          | de-en  | pdp          | standard     | creditcardVisa |

    @c4135
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4135     | 9          | fr-en  | quickview    | standard     | creditcardVisa |

    @c4136
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4136     | 10         | fr-en  | pdp          | standard     | creditcardVisa |

    @c4137
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4137     | 11         | ie     | quickview    | standard     | creditcardVisa |

    @c4138
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4138     | 12         | ie     | pdp          | standard     | creditcardVisa |

    @c4223
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4223     | 13         | ca     | quickview    | standard     | creditcardVisa |

    @c4224
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4224     | 14         | ca     | pdp          | standard     | creditcardVisa |

    @c4225
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4225     | 15         | de     | quickview    | standard     | creditcardVisa |

    @c4226
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4226     | 16         | de     | pdp          | standard     | creditcardVisa |

    @c4227
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4227     | 17         | nl     | quickview    | standard     | creditcardVisa |

    @c4228
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4228     | 18         | nl     | pdp          | standard     | creditcardVisa |

    @c4229
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4229     | 19         | fr     | quickview    | standard     | creditcardVisa |

    @c4230
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4230     | 20         | fr     | pdp          | standard     | creditcardVisa |

    @c4231
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4231     | 21         | eu     | quickview    | standard     | creditcardVisa |

    @c4232
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4232     | 22         | eu     | pdp          | standard     | creditcardVisa |

    @c4233
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4233     | 23         | au     | quickview    | standard     | creditcardVisa |

    @c4234
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4234     | 24         | au     | pdp          | standard     | creditcardVisa |

    @c4235
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4235     | 25         | nz     | quickview    | standard     | creditcardVisa |

    @c4236
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4236     | 26         | nz     | pdp          | standard     | creditcardVisa |

    @c4237
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4237     | 27         | int    | quickview    | standard     | creditcardVisa |

    @c4238
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4238     | 28         | int    | pdp          | standard     | creditcardVisa |