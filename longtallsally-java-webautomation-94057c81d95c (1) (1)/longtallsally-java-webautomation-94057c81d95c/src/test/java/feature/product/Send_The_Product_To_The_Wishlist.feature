@rundaily @product
Feature: Check wishlist functionality
  As a customer
  I want to be able to send some products to the wishlist page
  So when the customer opens wishlist page, the product should be stored and update and delete etc in the page

  Scenario Outline: "<scenarioId>" (Send_The_Product_To_The_Wishlist: "<testRailId>") Send one product to the wishlist on the category page and check wishlist page from "<locale>" locale
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    When User send the random product to the wishlist on the category page
    And User goes to wishlist page
    Then The product should be stored in my wishlist page

    @c4061
    Examples:
      | testRailId | scenarioId | locale |
      | @c4061     | 1          | uk     |

    @c4062
    Examples:
      | testRailId | scenarioId | locale |
      | @c4062     | 2          | us     |

    @c4063
    Examples:
      | testRailId | scenarioId | locale |
      | @c4063     | 3          | nl-en  |

    @c4064
    Examples:
      | testRailId | scenarioId | locale |
      | @c4064     | 4          | de-en  |

    @c4065
    Examples:
      | testRailId | scenarioId | locale |
      | @c4065     | 5          | fr-en  |

    @c4066
    Examples:
      | testRailId | scenarioId | locale |
      | @c4066     | 6          | ie     |

    @c4384
    Examples:
      | testRailId | scenarioId | locale |
      | @c4384     | 7          | ca     |

    @c4385
    Examples:
      | testRailId | scenarioId | locale |
      | @c4385     | 8          | de     |

    @c4386
    Examples:
      | testRailId | scenarioId | locale |
      | @c4386     | 9          | nl     |

    @c4387
    Examples:
      | testRailId | scenarioId | locale |
      | @c4387     | 10         | fr     |

    @c4388
    Examples:
      | testRailId | scenarioId | locale |
      | @c4388     | 11         | eu     |

    @c4389
    Examples:
      | testRailId | scenarioId | locale |
      | @c4389     | 12         | au     |

    @c4390
    Examples:
      | testRailId | scenarioId | locale |
      | @c4390     | 13         | nz     |

    @c4391
    Examples:
      | testRailId | scenarioId | locale |
      | @c4391     | 14         | int    |

  Scenario Outline: "<scenarioId>" (Send_The_Product_To_The_Wishlist: "<testRailId>") Send one product to the wishlist on the category page and check heart icon number for "<locale>" locale
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    When User send the random product to the wishlist on the category page
    Then The heart icon number should be increased by one

    @c4041
    Examples:
      | testRailId | scenarioId | locale |
      | @c4041     | 15          | uk     |

    @c4042
    Examples:
      | testRailId | scenarioId | locale |
      | @c4042     | 16          | us     |

    @c4043
    Examples:
      | testRailId | scenarioId | locale |
      | @c4043     | 17          | nl-en  |

    @c4044
    Examples:
      | testRailId | scenarioId | locale |
      | @c4044     | 18          | de-en  |

    @c4045
    Examples:
      | testRailId | scenarioId | locale |
      | @c4045     | 19          | fr-en  |

    @c4046
    Examples:
      | testRailId | scenarioId | locale |
      | @c4046     | 20          | ie     |

    @c4392
    Examples:
      | testRailId | scenarioId | locale |
      | @c4392     | 21          | ca     |

    @c4393
    Examples:
      | testRailId | scenarioId | locale |
      | @c4393     | 22          | de     |

    @c4394
    Examples:
      | testRailId | scenarioId | locale |
      | @c4394     | 23          | nl     |

    @c4395
    Examples:
      | testRailId | scenarioId | locale |
      | @c4395     | 24         | fr     |

    @c4396
    Examples:
      | testRailId | scenarioId | locale |
      | @c4396     | 25         | eu     |

    @c4397
    Examples:
      | testRailId | scenarioId | locale |
      | @c4397     | 26         | au     |

    @c4398
    Examples:
      | testRailId | scenarioId | locale |
      | @c4398     | 27         | nz     |

    @c4399
    Examples:
      | testRailId | scenarioId | locale |
      | @c4399     | 28         | int    |

  Scenario Outline: "<scenarioId>" (Send_The_Product_To_The_Wishlist: "<testRailId>") Send one product to the wishlist on "<quickViewPdp>" and check wishlist page for "<locale>" locale
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    When User clicks add to wishlist button "<quickViewPdp>"
    And User clicks logo "<locale>"
    And User goes to wishlist page
    Then The product should be stored in my wishlist page

    @c4067
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4067     | 29          | uk     | pdp          |

    @c4068
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4068     | 30          | us     | pdp          |

    @c4069
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4069     | 31          | nl-en  | pdp          |

    @c4070
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4070     | 32          | de-en  | pdp          |

    @c4071
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4071     | 33          | fr-en  | pdp          |

    @c4072
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4072     | 34          | ie     | pdp          |

    @c4400
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4400     | 35          | ca     | pdp          |

    @c4401
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4401     | 36          | de     | pdp          |

    @c4402
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4402     | 37          | nl     | pdp          |

    @c4403
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4403     | 38         | fr     | pdp          |

    @c4404
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4404     | 39         | eu     | pdp          |

    @c4405
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4405     | 40         | au     | pdp          |

    @c4406
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4406     | 41         | nz     | pdp          |

    @c4407
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4407     | 42         | int    | pdp          |

  Scenario Outline: "<scenarioId>" (Send_The_Product_To_The_Wishlist: "<testRailId>") Send one product to the wishlist on "<quickViewPdp>" and check heart icon number for "<locale>" locale
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    When User clicks add to wishlist button "<quickViewPdp>"
    And User clicks logo "<locale>"
    Then The heart icon number should be increased by one

    @c4047
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4047     | 43          | uk     | pdp          |

    @c4048
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4048     | 44          | us     | pdp          |

    @c4049
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4049     | 45          | nl-en  | pdp          |

    @c4050
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4050     | 46          | de-en  | pdp          |

    @c4051
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4051     | 47          | fr-en  | pdp          |

    @c4052
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4052     | 48          | ie     | pdp          |

    @c4408
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4408     | 49          | ca     | pdp          |

    @c4409
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4409     | 50          | de     | pdp          |

    @c4410
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4410     | 51          | nl     | pdp          |

    @c4411
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4411     | 52         | fr     | pdp          |

    @c4412
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4412     | 53         | eu     | pdp          |

    @c4413
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4413     | 54         | au     | pdp          |

    @c4414
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4414     | 55         | nz     | pdp          |

    @c4415
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4415     | 56         | int    | pdp          |

  Scenario Outline: "<scenarioId>" (Send_The_Product_To_The_Wishlist: "<testRailId>") Send one product to the wishlist on "<quickViewPdp>" and check wishlist page for "<locale>" locale
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    When User clicks add to wishlist button "<quickViewPdp>"
    And User closes the quickview popup
    And User clicks logo "<locale>"
    And User goes to wishlist page
    Then The product should be stored in my wishlist page

    @c4073
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4073     | 57          | uk     | quickview    |

    @c4074
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4074     | 58          | us     | quickview    |

    @c4075
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4075     | 59          | nl-en  | quickview    |

    @c4076
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4076     | 60          | de-en  | quickview    |

    @c4077
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4077     | 61          | fr-en  | quickview    |

    @c4078
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4078     | 62          | ie     | quickview    |

    @c4416
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4416     | 63          | ca     | quickview    |

    @c4417
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4417     | 64          | de     | quickview    |

    @c4418
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4418     | 65          | nl     | quickview    |

    @c4419
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4419     | 66         | fr     | quickview    |

    @c4420
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4420     | 67         | eu     | quickview    |

    @c4421
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4421     | 68         | au     | quickview    |

    @c4422
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4422     | 69         | nz     | quickview    |

    @c4423
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4423     | 70         | int    | quickview    |

  Scenario Outline: "<scenarioId>" (Send_The_Product_To_The_Wishlist: "<testRailId>") Send one product to the wishlist on "<quickViewPdp>" and check heart icon number for "<locale>" locale
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a random product from "<quickViewPdp>"
    When User clicks add to wishlist button "<quickViewPdp>"
    And User closes the quickview popup
    Then The heart icon number should be increased by one

    @c4053
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4053     | 71          | uk     | quickview    |

    @c4054
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4054     | 72          | us     | quickview    |

    @c4055
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4055     | 73          | nl-en  | quickview    |

    @c4056
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4056     | 74          | de-en  | quickview    |

    @c4057
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4057     | 75          | fr-en  | quickview    |

    @c4058
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4058     | 76          | ie     | quickview    |

    @c4424
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4424     | 77          | ca     | quickview    |

    @c4425
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4425     | 78          | de     | quickview    |

    @c4426
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4426     | 79          | nl     | quickview    |

    @c4427
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4427     | 80         | fr     | quickview    |

    @c4428
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4428     | 81         | eu     | quickview    |

    @c4429
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4429     | 82         | au     | quickview    |

    @c4430
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4430     | 83         | nz     | quickview    |

    @c4431
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp |
      | @c4431     | 84         | int    | quickview    |