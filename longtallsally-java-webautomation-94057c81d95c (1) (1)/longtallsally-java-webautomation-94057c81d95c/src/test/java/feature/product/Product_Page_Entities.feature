@rundaily @product
Feature: Check product page entities
  As a product owner
  I want to be able to see product entities in PDP
  So that PDP page should be open properly

  Scenario Outline: "<scenarioId>" (Product_Page_Entities: "<testRailId>") Open PDP and check "<productEntities>" product entities for "<locale>" locale
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User picks a specific product which has a price under bag threshold for "<locale>"
    Then User checks product entities "<productEntities>"

    @c4026
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4026     | 1          | uk     | productName     |

    @c4027
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4027     | 2          | uk     | productCode     |

    @c4028
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4028     | 3          | uk     | colour          |

    @c4029
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4029     | 4          | uk     | size            |

    @c4030
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4030     | 5          | uk     | addToWishlist   |

    @c4031
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4031     | 6          | uk     | addToBag        |

    @c4032
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4032     | 7          | uk     | sizeGuide       |

    @c4241
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4241     | 8          | us     | productName     |

    @c4242
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4242     | 9          | us     | productCode     |

    @c4243
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4243     | 10         | us     | colour          |

    @c4244
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4244     | 11         | us     | size            |

    @c4245
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4245     | 12         | us     | addToWishlist   |

    @c4246
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4246     | 13         | us     | addToBag        |

    @c4247
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4247     | 14         | us     | sizeGuide       |

    @c4248
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4248     | 15         | ca     | productName     |

    @c4249
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4249     | 16         | ca     | productCode     |

    @c4250
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4250     | 17         | ca     | colour          |

    @c4251
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4251     | 18         | ca     | size            |

    @c4252
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4252     | 19         | ca     | addToWishlist   |

    @c4253
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4253     | 20         | ca     | addToBag        |

    @c4254
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4254     | 21         | ca     | sizeGuide       |

    @c4255
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4255     | 22         | de-en  | productName     |

    @c4256
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4256     | 23         | de-en  | productCode     |

    @c4257
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4257     | 24         | de-en  | colour          |

    @c4258
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4258     | 25         | de-en  | size            |

    @c4259
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4259     | 26         | de-en  | addToWishlist   |

    @c4260
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4260     | 27         | de-en  | addToBag        |

    @c4254
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4254     | 28         | de-en  | sizeGuide       |

    @c4261
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4261     | 29         | nl-en  | productName     |

    @c4262
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4262     | 30         | nl-en  | productCode     |

    @c4263
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4263     | 31         | nl-en  | colour          |

    @c4264
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4264     | 32         | nl-en  | size            |

    @c4265
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4265     | 33         | nl-en  | addToWishlist   |

    @c4266
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4266     | 34         | nl-en  | addToBag        |

    @c4267
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4267     | 35         | nl-en  | sizeGuide       |

    @c4268
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4268     | 36         | fr-en  | productName     |

    @c4269
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4269     | 37         | fr-en  | productCode     |

    @c4270
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4270     | 38         | fr-en  | colour          |

    @c4271
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4271     | 39         | fr-en  | size            |

    @c4272
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4272     | 40         | fr-en  | addToWishlist   |

    @c4273
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4273     | 41         | fr-en  | addToBag        |

    @c4274
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4274     | 42         | fr-en  | sizeGuide       |

    @c4275
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4275     | 43         | ie     | productName     |

    @c4276
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4276     | 44         | ie     | productCode     |

    @c4277
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4277     | 45         | ie     | colour          |

    @c4278
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4278     | 46         | ie     | size            |

    @c4279
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4279     | 47         | ie     | addToWishlist   |

    @c4280
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4280     | 48         | ie     | addToBag        |

    @c4281
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4281     | 49         | ie     | sizeGuide       |

    @c4282
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4282     | 50         | de     | productName     |

    @c4283
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4283     | 51         | de     | productCode     |

    @c4284
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4284     | 52         | de     | colour          |

    @c4285
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4285     | 53         | de     | size            |

    @c4286
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4286     | 54         | de     | addToWishlist   |

    @c4287
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4287     | 55         | de     | addToBag        |

    @c4288
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4288     | 56         | de     | sizeGuide       |

    @c4289
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4289     | 57         | nl     | productName     |

    @c4290
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4290     | 58         | nl     | productCode     |

    @c4291
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4291     | 59         | nl     | colour          |

    @c4292
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4292     | 60         | nl     | size            |

    @c4293
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4293     | 61         | nl     | addToWishlist   |

    @c4294
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4294     | 62         | nl     | addToBag        |

    @c4295
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4295     | 63         | nl     | sizeGuide       |

    @c4296
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4296     | 64         | fr     | productName     |

    @c4297
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4297     | 65         | fr     | productCode     |

    @c4298
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4298     | 66         | fr     | colour          |

    @c4299
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4299     | 67         | fr     | size            |

    @c4300
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4300     | 68         | fr     | addToWishlist   |

    @c4301
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4301     | 69         | fr     | addToBag        |

    @c4302
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4302     | 70         | fr     | sizeGuide       |

    @c4303
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4303     | 71         | eu     | productName     |

    @c4304
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4304     | 72         | eu     | productCode     |

    @c4305
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4305     | 73         | eu     | colour          |

    @c4306
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4306     | 74         | eu     | size            |

    @c4307
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4307     | 75         | eu     | addToWishlist   |

    @c4308
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4308     | 76         | eu     | addToBag        |

    @c4309
    Examples:
      | testRailId | scenarioId | locale | productEntities |
      | @c4309     | 77         | eu     | sizeGuide       |