@regressiontest @rundaily @delivery
Feature: Completion of the order as a guest customer with collect plus delivery and credit card
  As a guest customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (Collect_Plus: "<testRailId>") Collect Plus delivery type is selected; The locale is "<locale>", "<quickViewPdp>" is clicked on product list page and the payment type is "<paymentType>"
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
    And User enters the postcode to find the store
    And User clicks delivery continue button based on delivery type "<deliveryType>"
    And User adds billing address for collect plus
    And User enters payment detail for "<paymentType>" "<locale>"
    Then User clicks submit order button "<paymentType>"
    And User enters username and password on the 3ds form "<paymentType>"
    Then User should complete order successfully

    @c3809
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3809     | 1          | uk     | quickview    | collectplus  | creditcardVisa |

    @c3925
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType    |
      | @c3925     | 2          | uk     | pdp          | collectplus  | creditcardVisa |

    @c4585
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4585     | 3          | uk     | pdp          | collectplus  | amex        |

    @c4586
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4586     | 4          | uk     | pdp          | collectplus  | googlepay   |

    @c4587
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType      |
      | @c4587     | 5          | uk     | pdp          | collectplus  | creditcardMaster |