@rundaily @product
Feature: The product is edited on the cart page
  As a guest customer
  I want to be able to edit products
  So that I can edit products on the cart page

  Scenario Outline: "<scenarioId>" (Product_Edit_On_Cart_Page: "<testRailId>") Product quantity is increased on cart page and the locale "<locale>", after update check product quantity
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks edit link on cart page
    And User increases quantity for the product
    When User clicks confirm button on the edit popup
    Then The product quantity should be updated

    @c4800
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4800     | 1          | uk     | quickview    |

    @c4801
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4801     | 2          | us     | quickview    |

    @c4802
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4802     | 3          | de     | quickview    |

    @c4803
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4803     | 4          | de-en  | quickview    |

    @c4804
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4804     | 5          | fr-en  | quickview    |

    @c4805
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4805     | 6          | fr     | quickview    |

    @c4806
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4806     | 7          | nl     | quickview    |

    @c4807
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4807     | 8          | nl-en  | quickview    |

    @c4808
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4808     | 9          | eu     | quickview    |

    @c4809
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4809     | 10         | au     | quickview    |

    @c4810
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4810     | 11         | nz     | quickview    |

    @c4811
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4811     | 12         | int    | quickview    |

    @c4812
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4812     | 13         | ie     | quickview    |

    @c4813
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4813     | 14         | ca     | quickview    |

  Scenario Outline: "<scenarioId>" (Product_Edit_On_Cart_Page: "<testRailId>") Product quantity is increased on cart page and the locale "<locale>", after update check product price
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks edit link on cart page
    And User increases quantity for the product
    When User clicks confirm button on the edit popup
    Then The product price should be updated "<locale>"

    @c4814
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4814     | 15         | uk     | quickview    |

    @c4815
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4815     | 16         | us     | quickview    |


    @c4816
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4816     | 17         | ca     | quickview    |

    @c4817
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4817     | 18         | de     | quickview    |

    @c4818
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4818     | 19         | fr     | quickview    |

    @c4819
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4819     | 20         | nl     | quickview    |

    @c4820
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4820     | 21         | de-en  | quickview    |

    @c4821
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4821     | 22         | fr-en  | quickview    |

    @c4822
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4822     | 23         | nl-en  | quickview    |

    @c4823
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4823     | 24         | au     | quickview    |

    @c4824
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4824     | 25         | eu     | quickview    |

    @c4825
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4825     | 26         | nz     | quickview    |

    @c4826
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4826     | 27         | ie     | quickview    |

    @c4827
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4827     | 28         | int    | quickview    |

  Scenario Outline: "<scenarioId>" (Product_Edit_On_Cart_Page: "<testRailId>") Product quantity is increased on cart page and the locale "<locale>", after update check shopping bag count
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks edit link on cart page
    And User increases quantity for the product
    When User clicks confirm button on the edit popup
    Then The shopping bag count should be update

    @c4828
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4828     | 29         | uk     | quickview    |

    @c4829
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4829     | 30         | us     | quickview    |

    @c4830
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4830     | 31         | ca     | quickview    |

    @c4831
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4831     | 32         | de     | quickview    |

    @c4832
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4832     | 33         | fr     | quickview    |

    @c4833
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4833     | 34         | nl     | quickview    |

    @c4834
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4834     | 35         | de-en  | quickview    |

    @c4835
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4835     | 36         | fr-en  | quickview    |

    @c4836
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4836     | 37         | nl-en  | quickview    |

    @c4837
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4837     | 38         | au     | quickview    |

    @c4838
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4838     | 39         | eu     | quickview    |

    @c4839
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4839     | 40         | nz     | quickview    |

    @c4840
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4840     | 41         | ie     | quickview    |

    @c4841
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4841     | 42         | int    | quickview    |

  Scenario Outline: "<scenarioId>" (Product_Edit_On_Cart_Page: "<testRailId>") Product quantity is decrease to zero on cart page and the locale "<locale>", after update check shopping bag count
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    And User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks edit link on cart page
    And User decrease quantity to zero for the product
    When User clicks confirm button on the edit popup
    Then The product should be removed in the shopping bag "<isRemoveProduct>"

    @c4842
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4842     | 43         | uk     | quickview    | true            |

    @c4843
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4843     | 44         | us     | quickview    | true            |

    @c4844
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4844     | 45         | ca     | quickview    | true            |

    @c4845
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4845     | 46         | de     | quickview    | true            |

    @c4846
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4846     | 47         | fr     | quickview    | true            |

    @c4847
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4847     | 48         | nl     | quickview    | true            |

    @c4848
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4848     | 49         | de-en  | quickview    | true            |

    @c4849
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4849     | 50         | fr-en  | quickview    | true            |

    @c4850
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4850     | 51         | nl-en  | quickview    | true            |

    @c4851
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4851     | 52         | au     | quickview    | true            |

    @c4852
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4852     | 53         | eu     | quickview    | true            |

    @c4853
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4853     | 54         | nz     | quickview    | true            |

    @c4854
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4854     | 55         | ie     | quickview    | true            |

    @c4855
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | isRemoveProduct |
      | @c4855     | 56         | int    | quickview    | true            |