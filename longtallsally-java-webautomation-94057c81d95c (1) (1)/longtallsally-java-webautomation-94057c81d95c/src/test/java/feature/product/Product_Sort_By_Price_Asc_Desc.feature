@rundaily @product
Feature: The product is filtered on the product list page
  As a guest customer
  I want to be able to filter products
  So that I can select filter and list products on the product list page

  Scenario Outline: "<scenarioId>" (Product_Sort_By_Price_Asc_Desc: "<testRailId>") Product is filtered on product list page and the locale "<locale>", sort by "<sortBy>" are selected
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User selects sort by "<sortBy>"
    Then The product should be listed correctly "<sortBy>" "<locale>"

    @c6289
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6289     | 1          | uk     | priceAsc |

    @c6290
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6290     | 2          | us     | priceAsc |

    @c6291
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6291     | 3          | de     | priceAsc |

    @c6292
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6292     | 4          | de-en  | priceAsc |

    @c6293
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6293     | 5          | fr     | priceAsc |

    @c6294
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6294     | 6          | fr-en  | priceAsc |

    @c6295
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6295     | 7          | nl     | priceAsc |

    @c6296
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6296     | 8          | nl-en  | priceAsc |

    @c6297
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6297     | 9          | ie     | priceAsc |

    @c6298
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6298     | 10         | eu     | priceAsc |

    @c6299
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6299     | 11         | au     | priceAsc |

    @c6300
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6300     | 12         | nz     | priceAsc |

    @c6301
    Examples:
      | testRailId | scenarioId | locale | sortBy   |
      | @c6301     | 13         | int    | priceAsc |

    @c6302
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6302     | 14         | uk     | priceDesc |

    @c6303
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6303     | 15         | us     | priceDesc |

    @c6304
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6304     | 16         | de     | priceDesc |

    @c6305
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6305     | 17         | de-en  | priceDesc |

    @c6306
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6306     | 18         | fr     | priceDesc |

    @c6307
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6307     | 19         | fr-en  | priceDesc |

    @c6308
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6308     | 20         | nl     | priceDesc |

    @c6309
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6309     | 21         | nl-en  | priceDesc |

    @c6310
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6310     | 22         | ie     | priceDesc |

    @c6311
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6311     | 23         | eu     | priceDesc |

    @c6312
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6312     | 24         | au     | priceDesc |

    @c6313
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6313     | 25         | nz     | priceDesc |

    @c6314
    Examples:
      | testRailId | scenarioId | locale | sortBy    |
      | @c6314     | 26         | int    | priceDesc |