@regressiontest @rundaily @typeofcustomer
Feature: Completion of the order as an existing customer
  As an existing customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Existing_Customer: "<testRailId>") Checkout is done by the existing customer; The locale is "<locale>", "<quickViewPdp>" is clicked on product list page
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks the checkout button
    And User logs in as an existing customer on the checkout page based on locale "<locale>"
    And User selects pay by card option "<locale>"
    And User enters security code
    Then User clicks submit order button "<paymentType>"
    Then User should complete order successfully

    @c3808
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c3808     | 1          | uk     | quickview    | creditcardVisa |

    @c3921
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c3921     | 2          | uk     | pdp          | creditcardVisa |

    @c3923
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c3923     | 3          | us     | quickview    | creditcardVisa |

    @c3922
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c3922     | 4          | us     | pdp          | creditcardVisa |

    @c3926
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c3926     | 5          | nl-en  | quickview    | creditcardVisa |

    @c3924
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c3924     | 6          | nl-en  | pdp          | creditcardVisa |

    @c4116
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4116     | 7          | de-en  | quickview    | creditcardVisa |

    @c4117
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4117     | 8          | de-en  | pdp          | creditcardVisa |

    @c4118
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4118     | 9          | fr-en  | quickview    | creditcardVisa |

    @c4119
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4119     | 10         | fr-en  | pdp          | creditcardVisa |

    @c4120
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4120     | 11         | ie     | quickview    | creditcardVisa |

    @c4121
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4121     | 12         | ie     | pdp          | creditcardVisa |

    @c4191
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4122     | 13         | ca     | quickview    | creditcardVisa |

    @c4192
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4192     | 14         | ca     | pdp          | creditcardVisa |

    @c4193
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4193     | 15         | de     | quickview    | creditcardVisa |

    @c4194
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4194     | 16         | de     | pdp          | creditcardVisa |

    @c4195
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4195     | 17         | nl     | quickview    | creditcardVisa |

    @c4196
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4196     | 18         | nl     | pdp          | creditcardVisa |

    @c4204
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4197     | 19         | fr     | quickview    | creditcardVisa |

    @c4197
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4197     | 20         | fr     | pdp          | creditcardVisa |

    @c4198
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4198     | 21         | eu     | quickview    | creditcardVisa |

    @c4199
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4199     | 22         | eu     | pdp          | creditcardVisa |

    @c4200
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4200     | 23         | au     | quickview    | creditcardVisa |

    @c4201
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4201     | 24         | au     | pdp          | creditcardVisa |

    @c4202
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4202     | 25         | nz     | quickview    | creditcardVisa |

    @c4203
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4203     | 26         | nz     | pdp          | creditcardVisa |

    @c4205
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4205     | 27         | int    | quickview    | creditcardVisa |

    @c4206
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | paymentType    |
      | @c4206     | 28         | int    | pdp          | creditcardVisa |