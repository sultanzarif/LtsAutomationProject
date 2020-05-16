@rundaily @webmain
Feature: Product image element check
  As an SEO lead
  I want alt text to be changed for clothing products
  So that there can be SEO gains from it

  Scenario Outline: "<scenarioId>" (Product_Image: "<testRailId>") LTS Product image element should include TALL text for "<locale>" in homepage recently view carousel
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User clicks search icon
    And User searches a keyword through search box "<keyword>"
    And User clicks the product and opens the product detail page
    And User clicks logo "<locale>"
    Then The element should include TALL text from the recently view carousel "<locale>"

    @c6621
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6621     | 1          | uk     | withTall |

    @c6622
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6622     | 2          | us     | withTall |

    @c6623
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6623     | 3          | nl-en  | withTall |

    @c6624
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6624     | 4          | de-en  | withTall |

    @c6625
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6625     | 5          | fr-en  | withTall |

    @c6626
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6626     | 6          | ie     | withTall |

    @c6627
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6627     | 7          | ca     | withTall |

    @c6628
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6628     | 8          | nl     | withTall |

    @c6629
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6629     | 9          | de     | withTall |

    @c6630
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6630     | 10         | fr     | withTall |

    @c6631
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6631     | 11         | eu     | withTall |

    @c6632
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6632     | 12         | int    | withTall |