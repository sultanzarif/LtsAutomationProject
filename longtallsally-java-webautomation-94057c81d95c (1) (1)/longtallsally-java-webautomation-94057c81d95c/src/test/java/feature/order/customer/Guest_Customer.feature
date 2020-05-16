@regressiontest @rundaily @typeofcustomer
Feature: Completion of the order as a guest customer
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Guest_Customer: "<testRailId>") Checkout is done by the guest customer; The locale is "<locale>", "<quickViewPdp>" is clicked on product list page, the delivery type is "<deliveryType>" and the payment type is "<paymentType>"
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

    @c3929
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3929     | 1          | uk     | quickview    | standard     | creditcardVisa |

    @c3930
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3930     | 2          | uk     | pdp          | standard     | creditcardVisa |

    @c3931
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3931     | 3          | us     | quickview    | standard     | creditcardVisa |

    @c3932
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3932     | 4          | us     | pdp          | standard     | creditcardVisa |

    @c3933
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3933     | 5          | nl-en  | quickview    | standard     | creditcardVisa |

    @c3934
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3934     | 6          | nl-en  | pdp          | standard     | creditcardVisa |

    @c4127
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4127     | 7          | de-en  | quickview    | standard     | creditcardVisa |

    @c4128
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4128     | 8          | de-en  | pdp          | standard     | creditcardVisa |

    @c4129
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4129     | 9          | fr-en  | quickview    | standard     | creditcardVisa |

    @c4130
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4130     | 10         | fr-en  | pdp          | standard     | creditcardVisa |

    @c4131
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4131     | 11         | ie     | quickview    | standard     | creditcardVisa |

    @c4132
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4132     | 12         | ie     | pdp          | standard     | creditcardVisa |

    @c4207
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4207     | 13         | ca     | quickview    | standard     | creditcardVisa |

    @c4208
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4208     | 14         | ca     | pdp          | standard     | creditcardVisa |

    @c4209
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4209     | 15         | de     | quickview    | standard     | creditcardVisa |

    @c4210
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4210     | 16         | de     | pdp          | standard     | creditcardVisa |

    @c4211
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4211     | 17         | nl     | quickview    | standard     | creditcardVisa |

    @c4212
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4212     | 18         | nl     | pdp          | standard     | creditcardVisa |

    @c4213
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4213     | 19         | fr     | quickview    | standard     | creditcardVisa |

    @c4214
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4214     | 20         | fr     | pdp          | standard     | creditcardVisa |

    @c4215
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4215     | 21         | eu     | quickview    | standard     | creditcardVisa |

    @c4216
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4216     | 22         | eu     | pdp          | standard     | creditcardVisa |

    @c4217
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4217     | 23         | au     | quickview    | standard     | creditcardVisa |

    @c4218
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4218     | 24         | au     | pdp          | standard     | creditcardVisa |

    @c4219
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4219     | 25         | nz     | quickview    | standard     | creditcardVisa |

    @c4220
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4220     | 26         | nz     | pdp          | standard     | creditcardVisa |

    @c4221
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4221     | 27         | int    | quickview    | standard     | creditcardVisa |

    @c4222
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c4222     | 28         | int    | pdp          | standard     | creditcardVisa |