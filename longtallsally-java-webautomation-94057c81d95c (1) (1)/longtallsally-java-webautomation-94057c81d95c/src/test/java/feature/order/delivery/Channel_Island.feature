@regressiontest @rundaily @delivery
Feature: Completion of the order as a guest customer with channel island delivery and credit card
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Channel_Island: "<testRailId>") Channel Island delivery type is selected; The locale is "<locale>", "<quickViewPdp>" is clicked on product list page and the payment type is "<paymentType>"
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
    And User enters address details on the checkout page for Channel Island Delivery type
    And User enters payment detail for "<paymentType>" "<locale>"
    Then User clicks submit order button "<paymentType>"
    Then User should complete order successfully

    @c3811
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType  | paymentType    |
      | @c3811     | 1          | uk     | quickview    | channelIsland | creditcardVisa |

    @c3812
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType  | paymentType    |
      | @c3812     | 2          | uk     | pdp          | channelIsland | creditcardVisa |

    @c4582
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType  | paymentType      |
      | @c4582     | 3          | uk     | pdp          | channelIsland | creditcardMaster |

    @c4583
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType  | paymentType |
      | @c4583     | 4          | uk     | pdp          | channelIsland | amex        |

    @c4584
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType  | paymentType |
      | @c4584     | 5          | uk     | pdp          | channelIsland | googlepay   |