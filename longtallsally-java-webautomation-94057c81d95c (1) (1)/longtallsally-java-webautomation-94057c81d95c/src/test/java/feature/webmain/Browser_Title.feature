@rundaily @webmain
Feature: Browser title check
  As an SEO lead
  I want PDP page title to be changed for clothing products
  So that there can be SEO gains from it

  Scenario Outline: "<scenarioId>" (Browser_Title: "<testRailId>") LTS Product browser page title should include TALL text for "<locale>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User clicks search icon
    And User searches a keyword through search box "<keyword>"
    And User clicks the product and opens the product detail page
    And Browser tab should include TALL text "<locale>"

    @c6595
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6595     | 1          | uk     | withTall |

    @c6596
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6596     | 2          | us     | withTall |

    @c6597
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6597     | 3          | nl-en  | withTall |

    @c6598
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6598     | 4          | de-en  | withTall |

    @c6599
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6599     | 5          | fr-en  | withTall |

    @c6600
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6600     | 6          | ie     | withTall |

    @c6601
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6601     | 7          | ca     | withTall |

    @c6602
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6602     | 8          | nl     | withTall |

    @c6603
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6603     | 9          | de     | withTall |

    @c6604
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6604     | 10         | fr     | withTall |

    @c6605
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6605     | 11         | eu     | withTall |

    @c6606
    Examples:
      | testRailId | scenarioId | locale | keyword  |
      | @c6606     | 12         | int    | withTall |

  Scenario Outline: "<scenarioId>" (Browser_Title: "<testRailId>") Non LTS Product browser page title should not include TALL text for "<locale>"
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User clicks search icon
    And User searches a keyword through search box "<keyword>"
    And User clicks the product and opens the product detail page
    And Browser tab should not include TALL text "<locale>"

    @c6607
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6607     | 13         | uk     | withoutTall |

    @c6608
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6608     | 14         | us     | withoutTall |

    @c6609
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6609     | 15         | nl-en  | withoutTall |

    @c6610
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6610     | 16         | de-en  | withoutTall |

    @c6611
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6611     | 17         | fr-en  | withoutTall |

    @c6612
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6612     | 18         | ie     | withoutTall |

    @c6613
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6613     | 19         | ca     | withoutTall |

    @c6614
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6614     | 20         | nl     | withoutTall |

    @c6615
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6615     | 21         | de     | withoutTall |

    @c6616
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6616     | 22         | fr     | withoutTall |

    @c6617
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6617     | 23         | eu     | withoutTall |

    @c6618
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6618     | 24         | au     | withoutTall |

    @c6619
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6619     | 25         | nz     | withoutTall |

    @c6620
    Examples:
      | testRailId | scenarioId | locale | keyword     |
      | @c6620     | 26         | int    | withoutTall |