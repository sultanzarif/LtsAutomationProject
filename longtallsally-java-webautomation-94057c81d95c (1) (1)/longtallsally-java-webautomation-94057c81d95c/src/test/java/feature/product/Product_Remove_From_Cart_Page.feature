@rundaily @product
Feature: Remove the product from the shopping bag
  As a user
  I want to be able to remove products from the shopping bag
  So when I click the remove link for the product, the product should be removed from the shopping bag

  Scenario Outline: "<scenarioId>" (Product_Remove_From_Cart_Page: "<testRailId>") Click remove link for the specific product and then answer "<isRemoveProduct>" to the question Are you sure? for locale "<locale>" and "<quickViewPdp>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    When User clicks remove link for the selected product
    And User clicks remove product as "<isRemoveProduct>"
    Then The product should be removed in the shopping bag "<isRemoveProduct>"

    @c4744
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4744     | 1          | uk     | quickview    | true            |

    @c4745
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4745     | 2          | uk     | pdp          | true            |

    @c4746
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4746     | 3          | us     | quickview    | true            |

    @c4747
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4747     | 4          | us     | pdp          | true            |

    @c4748
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4748     | 5          | ca     | quickview    | true            |

    @c4749
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4749     | 6          | ca     | pdp          | true            |

    @c4750
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4750     | 7          | de     | quickview    | true            |

    @c4751
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4751     | 8          | de     | pdp          | true            |

    @c4752
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4752     | 9          | de-en  | quickview    | true            |

    @c4753
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4753     | 10         | de-en  | pdp          | true            |

    @c4754
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4754     | 11         | fr     | quickview    | true            |

    @c4755
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4755     | 12         | fr     | pdp          | true            |

    @c4756
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4756     | 13         | fr-en  | quickview    | true            |

    @c4757
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4757     | 14         | fr-en  | pdp          | true            |

    @c4758
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4758     | 15         | nl-en  | quickview    | true            |

    @c4759
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4759     | 16         | nl-en  | pdp          | true            |

    @c4760
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4760     | 17         | nz     | quickview    | true            |

    @c4761
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4761     | 18         | nz     | pdp          | true            |

    @c4762
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4762     | 19         | au     | quickview    | true            |

    @c4763
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4763     | 20         | au     | pdp          | true            |

    @c4764
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4764     | 21         | int    | quickview    | true            |

    @c4765
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4765     | 22         | int    | pdp          | true            |

    @c4766
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4766     | 23         | ie     | quickview    | true            |

    @c4767
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4767     | 24         | ie     | pdp          | true            |

    @c4768
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4768     | 25         | eu     | quickview    | true            |

    @c4769
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4769     | 26         | eu     | pdp          | true            |

    @c4770
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4770     | 27         | nl     | quickview    | true            |

    @c4771
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4771     | 28         | nl     | pdp          | true            |

    @c4772
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4772     | 29          | uk     | quickview    | false           |

    @c4773
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4773     | 30          | uk     | pdp          | false           |

    @c4774
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4774     | 31          | us     | quickview    | false           |

    @c4775
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4775     | 32          | us     | pdp          | false           |

    @c4776
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4776     | 33          | ca     | quickview    | false           |

    @c4777
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4777     | 34          | ca     | pdp          | false           |

    @c4778
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4778     | 35          | de     | quickview    | false           |

    @c4779
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4779     | 36          | de     | pdp          | false           |

    @c4780
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4780     | 37          | de-en  | quickview    | false           |

    @c4781
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4781     | 38         | de-en  | pdp          | false           |

    @c4782
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4782     | 39         | fr     | quickview    | false           |

    @c4783
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4783     | 40         | fr     | pdp          | false           |

    @c4784
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4784     | 41         | fr-en  | quickview    | false           |

    @c4785
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4785     | 42         | fr-en  | pdp          | false           |

    @c4786
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4786     | 43         | nl-en  | quickview    | false           |

    @c4787
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4787     | 44         | nl-en  | pdp          | false           |

    @c4788
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4788     | 45         | nz     | quickview    | false           |

    @c4789
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4789     | 46         | nz     | pdp          | false           |

    @c4790
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4790     | 47         | au     | quickview    | false           |

    @c4791
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4791     | 48         | au     | pdp          | false           |

    @c4792
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4792     | 49         | int    | quickview    | false           |

    @c4793
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4793     | 50         | int    | pdp          | false           |

    @c4794
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4794     | 51         | ie     | quickview    | false           |

    @c4795
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4795     | 52         | ie     | pdp          | false           |

    @c4796
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4796     | 53         | eu     | quickview    | false           |

    @c4797
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4797     | 54         | eu     | pdp          | false           |

    @c4798
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4798     | 55         | nl     | quickview    | false           |

    @c4799
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4799     | 56         | nl     | pdp          | false           |