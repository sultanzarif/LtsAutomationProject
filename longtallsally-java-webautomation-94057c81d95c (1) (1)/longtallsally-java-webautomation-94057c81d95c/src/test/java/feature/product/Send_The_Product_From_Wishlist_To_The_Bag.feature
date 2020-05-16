@rundaily @product
Feature: Send the product from wishlist to the shopping bag
  As a customer
  I want to be able to send the products from the wishlist to the shopping bag
  So when the customer clicks add to bag button on the wishlist for the product, the product should be removed from the wishlist and the product should be stored in the shopping bag

  Scenario Outline: "<scenarioId>" (Send_The_Product_From_Wishlist_To_The_Bag: "<testRailId>") A product which hasn't size information, would be able to add to the shopping bag from the wishlist for "<locale>" locale
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User send the random product to the wishlist on the category page
    And User goes to wishlist page
    And User clicks add to bag button on the wishlist page
    And User picks a random size from "<quickViewPdp>"
    When User clicks add to bag button "<quickViewPdp>"
    And User clicks logo "<locale>"
    And User clicks the shopping bag icon
    Then The product should be stored in the shopping bag page

    @c4088
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4088     | 1          | uk     | wishlistQuickview |

    @c4089
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4089     | 2          | us     | wishlistQuickview |

    @c4090
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4090     | 3          | nl-en  | wishlistQuickview |

    @c4091
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4091     | 4          | de-en  | wishlistQuickview |

    @c4092
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4092     | 5          | fr-en  | wishlistQuickview |

    @c4093
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4093     | 6          | ie     | wishlistQuickview |

    @c4432
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4432     | 7          | ca     | wishlistQuickview |

    @c4433
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4433     | 8          | de     | wishlistQuickview |

    @c4434
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4434     | 9          | nl     | wishlistQuickview |

    @c4435
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4435     | 10         | fr     | wishlistQuickview |

    @c4436
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4436     | 11         | eu     | wishlistQuickview |

    @c4437
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp      |
      | @c4437     | 12         | int    | wishlistQuickview |

  Scenario Outline: "<scenarioId>" (Send_The_Product_From_Wishlist_To_The_Bag: "<testRailId>") A product which has size information, would be able to add to shopping bag from wishlist for "<locale>" locale
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    When User clicks add to wishlist button "<quickViewPdp>"
    And User closes the quickview popup
    And User clicks logo "<locale>"
    And User goes to wishlist page
    And User clicks add to bag button on the wishlist page
    And User clicks logo "<locale>"
    When User clicks the shopping bag icon
    Then The product should be stored in the shopping bag page

    @c4094
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4094     | 1          | uk     | quickview    |

    @c4095
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4095     | 2          | us     | quickview    |

    @c4096
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4096     | 3          | nl-en  | quickview    |

    @c4097
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4097     | 4          | de-en  | quickview    |

    @c4098
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4098     | 5          | fr-en  | quickview    |

    @c4099
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4099     | 6          | ie     | quickview    |

    @c4438
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4438     | 7          | ca     | quickview    |

    @c4439
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4439     | 8          | de     | quickview    |

    @c4440
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4440     | 9          | nl     | quickview    |

    @c4441
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4441     | 10         | fr     | quickview    |

    @c4442
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4442     | 11         | eu     | quickview    |

    @c4443
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4443     | 12         | int    | quickview    |