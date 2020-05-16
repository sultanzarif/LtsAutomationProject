@regressiontest @rundaily @product
Feature: The product is added to the bag without selecting size
  As a guest customer
  I want to be able to add the product to the bag without selecting size
  So that "please select a size" warning message will be shown

  Scenario Outline: "<scenarioId>" (Add_Product_To_The_Bag_Without_Selecting_Size: "<testRailId>") Guest customer adds the product without selecting the size, the locale is "<locale>", "<quickViewPdp>" is clicked on the product list page
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    When User clicks add to bag button "<quickViewPdp>"
    Then The warning message which is please select a size should appear "<quickViewPdp>"

    @c6548
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6548     | 1          | uk     | quickview    |

    @c6549
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6549     | 2          | uk     | pdp          |

    @c6550
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6550     | 3          | us     | quickview    |

    @c6551
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6551     | 4          | us     | pdp          |

    @c6552
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6552     | 5          | nl-en  | quickview    |

    @c6553
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6553     | 6          | nl-en  | pdp          |

    @c6554
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6554     | 7          | de-en  | quickview    |

    @c6555
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6555     | 8          | de-en  | pdp          |

    @c6556
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6556     | 9          | fr-en  | quickview    |

    @c6557
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6557     | 10         | fr-en  | pdp          |

    @c6558
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6558     | 11         | ie     | quickview    |

    @c6559
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6559     | 12         | ie     | pdp          |

    @c6560
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6560     | 13         | ca     | quickview    |

    @c6561
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6561     | 14         | ca     | pdp          |

    @c6562
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6562     | 15         | de     | quickview    |

    @c6563
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6563     | 16         | de     | pdp          |

    @c6564
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6564     | 17         | nl     | quickview    |

    @c6565
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6565     | 18         | nl     | pdp          |

    @c6566
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6566     | 19         | fr     | quickview    |

    @c6567
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6567     | 20         | fr     | pdp          |

    @c6568
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6568     | 21         | eu     | quickview    |

    @c6569
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6569     | 22         | eu     | pdp          |

    @c6570
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6570     | 23         | au     | quickview    |

    @c6571
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6571     | 24         | au     | pdp          |

    @c6572
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6572     | 25         | nz     | quickview    |

    @c6573
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6573     | 26         | nz     | pdp          |

    @c6574
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6574     | 27         | int    | quickview    |

    @c6575
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c6575     | 28         | int    | pdp          |