@regressiontest @rundaily @account
Feature: Sign up with an account
  As a new customer and the guest customer
  I want to be able to sign up an account

  Scenario Outline: "<scenarioId>" (Signup: "<testRailId>") Sign up with an un-exist email address for "<locale>" and check signup confirmation check popup
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    And User enters email address to the signup box on the homepage
    And User clicks to sign up button
    And User selects a country from the list on the signup popup "<locale>"
    When User clicks submit button on sign up popup
    And Email signup confirmation popup should be appear

    @c6339
    Examples:
      | testRailId | scenarioId | locale |
      | @c6339     | 1          | uk     |

    @c6340
    Examples:
      | testRailId | scenarioId | locale |
      | @c6340     | 2          | us     |

    @c6341
    Examples:
      | testRailId | scenarioId | locale |
      | @c6341     | 3          | nl-en  |

    @c6342
    Examples:
      | testRailId | scenarioId | locale |
      | @c6342     | 4          | de-en  |

    @c6343
    Examples:
      | testRailId | scenarioId | locale |
      | @c6343     | 5          | fr-en  |

    @c6344
    Examples:
      | testRailId | scenarioId | locale |
      | @c6344     | 6          | ie     |

    @c6345
    Examples:
      | testRailId | scenarioId | locale |
      | @c6345     | 7          | ca     |

    @c6346
    Examples:
      | testRailId | scenarioId | locale |
      | @c6346     | 8          | nl     |

    @c6347
    Examples:
      | testRailId | scenarioId | locale |
      | @c6347     | 9          | de     |

    @c6348
    Examples:
      | testRailId | scenarioId | locale |
      | @c6348     | 10         | fr     |

    @c6349
    Examples:
      | testRailId | scenarioId | locale |
      | @c6349     | 11         | eu     |

    @c6350
    Examples:
      | testRailId | scenarioId | locale |
      | @c6350     | 12         | au     |

    @c6351
    Examples:
      | testRailId | scenarioId | locale |
      | @c6351     | 13         | nz     |

    @c6352
    Examples:
      | testRailId | scenarioId | locale |
      | @c6352     | 14         | int    |

  Scenario Outline: "<scenarioId>" (Signup: "<testRailId>") Sign up with an un-exist email address for "<locale>" and check continue shopping button
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    And User enters email address to the signup box on the homepage
    And User clicks to sign up button
    And User selects a country from the list on the signup popup "<locale>"
    When User clicks submit button on sign up popup
    And Continue Shopping button should be clickable

    @c6353
    Examples:
      | testRailId | scenarioId | locale |
      | @c6353     | 15         | uk     |

    @c6354
    Examples:
      | testRailId | scenarioId | locale |
      | @c6354     | 16         | us     |

    @c6355
    Examples:
      | testRailId | scenarioId | locale |
      | @c6355     | 17         | nl-en  |

    @c6356
    Examples:
      | testRailId | scenarioId | locale |
      | @c6356     | 18         | de-en  |

    @c6357
    Examples:
      | testRailId | scenarioId | locale |
      | @c6357     | 19         | fr-en  |

    @c6358
    Examples:
      | testRailId | scenarioId | locale |
      | @c6358     | 20         | ie     |

    @c6359
    Examples:
      | testRailId | scenarioId | locale |
      | @c6359     | 21         | ca     |

    @c6360
    Examples:
      | testRailId | scenarioId | locale |
      | @c6360     | 22         | nl     |

    @c6361
    Examples:
      | testRailId | scenarioId | locale |
      | @c6361     | 23         | de     |

    @c6362
    Examples:
      | testRailId | scenarioId | locale |
      | @c6362     | 24         | fr     |

    @c6363
    Examples:
      | testRailId | scenarioId | locale |
      | @c6363     | 25         | eu     |

    @c6364
    Examples:
      | testRailId | scenarioId | locale |
      | @c6364     | 26         | au     |

    @c6365
    Examples:
      | testRailId | scenarioId | locale |
      | @c6365     | 27         | nz     |

    @c6366
    Examples:
      | testRailId | scenarioId | locale |
      | @c6366     | 28         | int    |

  Scenario Outline: "<scenarioId>" (Signup: "<testRailId>") Sign up with an existing email address for "<locale>" and check signup confirmation check popup
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    And User clicks to sign up button
    And User selects a country from the list on the signup popup "<locale>"
    And User enters email address on the signup popup
    When User clicks submit button on sign up popup
    And Email signup confirmation popup should be appear

    @c6367
    Examples:
      | testRailId | scenarioId | locale |
      | @c6367     | 29         | uk     |

    @c6368
    Examples:
      | testRailId | scenarioId | locale |
      | @c6368     | 30         | us     |

    @c6369
    Examples:
      | testRailId | scenarioId | locale |
      | @c6369     | 31         | nl-en  |

    @c6370
    Examples:
      | testRailId | scenarioId | locale |
      | @c6370     | 32         | de-en  |

    @c6371
    Examples:
      | testRailId | scenarioId | locale |
      | @c6371     | 33         | fr-en  |

    @c6372
    Examples:
      | testRailId | scenarioId | locale |
      | @c6372     | 34         | ie     |

    @c6373
    Examples:
      | testRailId | scenarioId | locale |
      | @c6373     | 35         | ca     |

    @c6374
    Examples:
      | testRailId | scenarioId | locale |
      | @c6374     | 36         | nl     |

    @c6375
    Examples:
      | testRailId | scenarioId | locale |
      | @c6375     | 37         | de     |

    @c6376
    Examples:
      | testRailId | scenarioId | locale |
      | @c6376     | 38         | fr     |

    @c6377
    Examples:
      | testRailId | scenarioId | locale |
      | @c6377     | 39         | eu     |

    @c6378
    Examples:
      | testRailId | scenarioId | locale |
      | @c6378     | 40         | au     |

    @c6379
    Examples:
      | testRailId | scenarioId | locale |
      | @c6379     | 41         | nz     |

    @c6380
    Examples:
      | testRailId | scenarioId | locale |
      | @c6380     | 42         | int    |

  Scenario Outline: "<scenarioId>" (Signup: "<testRailId>") Sign up with an exist email address for "<locale>" and check continue shopping button
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    And User clicks to sign up button
    And User selects a country from the list on the signup popup "<locale>"
    And User enters email address on the signup popup
    When User clicks submit button on sign up popup
    And Continue Shopping button should be clickable

    @c6381
    Examples:
      | testRailId | scenarioId | locale |
      | @c6381     | 43         | uk     |

    @c6382
    Examples:
      | testRailId | scenarioId | locale |
      | @c6382     | 44         | us     |

    @c6383
    Examples:
      | testRailId | scenarioId | locale |
      | @c6383     | 45         | nl-en  |

    @c6384
    Examples:
      | testRailId | scenarioId | locale |
      | @c6384     | 46         | de-en  |

    @c6385
    Examples:
      | testRailId | scenarioId | locale |
      | @c6385     | 47         | fr-en  |

    @c6386
    Examples:
      | testRailId | scenarioId | locale |
      | @c6386     | 48         | ie     |

    @c6387
    Examples:
      | testRailId | scenarioId | locale |
      | @c6387     | 49         | ca     |

    @c6388
    Examples:
      | testRailId | scenarioId | locale |
      | @c6388     | 50         | nl     |

    @c6389
    Examples:
      | testRailId | scenarioId | locale |
      | @c6389     | 51         | de     |

    @c6390
    Examples:
      | testRailId | scenarioId | locale |
      | @c6390     | 52         | fr     |

    @c6391
    Examples:
      | testRailId | scenarioId | locale |
      | @c6391     | 53         | eu     |

    @c6392
    Examples:
      | testRailId | scenarioId | locale |
      | @c6392     | 54         | au     |

    @c6393
    Examples:
      | testRailId | scenarioId | locale |
      | @c6393     | 55         | nz     |

    @c6394
    Examples:
      | testRailId | scenarioId | locale |
      | @c6394     | 56         | int    |

  Scenario Outline: "<scenarioId>" (Signup: "<testRailId>") Sign up with an exist email address for "<locale>" and check customer preferences
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    And User clicks My Account link before login
    And User logs in as a guest customer from my account page
    And User clicks my details page
    And User clicks customer preference edit button
    And User ticks all communication option to opt out
    And User clicks OK button
    And User clicks save my details button
    And User clicks to sign up button
    And User selects a country from the list on the signup popup "<locale>"
    When User clicks submit button on sign up popup when logged in
    And User clicks continue shopping button
    And User clicks customer preference edit button
    Then By Email option should be unclick

    @c6400
    Examples:
      | testRailId | scenarioId | locale |
      | @c6400     | 57         | uk     |

    @c6401
    Examples:
      | testRailId | scenarioId | locale |
      | @c6401     | 58         | us     |

    @c6402
    Examples:
      | testRailId | scenarioId | locale |
      | @c6402     | 59         | nl-en  |

    @c6403
    Examples:
      | testRailId | scenarioId | locale |
      | @c6403     | 60         | de-en  |

    @c6404
    Examples:
      | testRailId | scenarioId | locale |
      | @c6404     | 61         | fr-en  |

    @c6405
    Examples:
      | testRailId | scenarioId | locale |
      | @c6405     | 62         | ie     |

    @c6406
    Examples:
      | testRailId | scenarioId | locale |
      | @c6406     | 63         | ca     |

    @c6407
    Examples:
      | testRailId | scenarioId | locale |
      | @c6407     | 64         | nl     |

    @c6408
    Examples:
      | testRailId | scenarioId | locale |
      | @c6408     | 65         | de     |

    @c6409
    Examples:
      | testRailId | scenarioId | locale |
      | @c6409     | 66         | fr     |

    @c6410
    Examples:
      | testRailId | scenarioId | locale |
      | @c6410     | 67         | eu     |

    @c6411
    Examples:
      | testRailId | scenarioId | locale |
      | @c6411     | 68         | au     |

    @c6412
    Examples:
      | testRailId | scenarioId | locale |
      | @c6412     | 69         | nz     |

    @c6413
    Examples:
      | testRailId | scenarioId | locale |
      | @c6413     | 70         | int    |