@rundaily @product
Feature: Check search page functionality
  As a customer
  I want to be able to search some products on the website
  So when the customer opens search page, search items should be listed and all functionality should work properly on the page

  Background:
    Given User navigates to the home website "<locale>"

  Scenario Outline: "<scenarioId>" (Search_Page_Functionalities: "<testRailId>") Search a "<keyword>" keyword through search icon on homepage from "<locale>" locale
    And User changes the site to the locale "<locale>"
    When User clicks search icon
    And User searches a keyword through search box "<keyword>"
    Then Search page should be displayed "<keyword>"

    @c4856
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4856     | 1          | uk     | obtainable |

    @c4857
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4857     | 2          | us     | obtainable |

    @c4858
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4858     | 3          | ca     | obtainable |

    @c4859
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4859     | 4          | de     | obtainable |

    @c4860
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4860     | 5          | de-en  | obtainable |

    @c4861
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4861     | 6          | fr     | obtainable |

    @c4862
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4862     | 7          | fr-en  | obtainable |

    @c4863
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4863     | 8          | nl     | obtainable |

    @c4864
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4864     | 9          | nl-en  | obtainable |

    @c4865
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4865     | 10         | ie     | obtainable |

    @c4866
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4866     | 11         | eu     | obtainable |

    @c4867
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4867     | 12         | au     | obtainable |

    @c4868
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4868     | 13         | nz     | obtainable |

    @c4869
    Examples:
      | testRailId | scenarioId | locale | keyword    |
      | @c4869     | 14         | int    | obtainable |

    @c6325
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6325     | 15         | uk     | unobtainable |

    @c6326
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6326     | 16         | us     | unobtainable |

    @c6327
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6326     | 17         | ca     | unobtainable |

    @c6328
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6328     | 18         | de     | unobtainable |

    @c6329
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6329     | 19         | de-en  | unobtainable |

    @c6330
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6330     | 20         | fr     | unobtainable |

    @c6331
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6331     | 21         | fr-en  | unobtainable |

    @c6332
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6332     | 22         | nl     | unobtainable |

    @c6333
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6333     | 23         | nl-en  | unobtainable |

    @c6334
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6334     | 24         | ie     | unobtainable |

    @c6335
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6335     | 25         | eu     | unobtainable |

    @c6336
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6336     | 26         | au     | unobtainable |

    @c6337
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6337     | 27         | nz     | unobtainable |

    @c6338
    Examples:
      | testRailId | scenarioId | locale | keyword      |
      | @c6338     | 28         | int    | unobtainable |