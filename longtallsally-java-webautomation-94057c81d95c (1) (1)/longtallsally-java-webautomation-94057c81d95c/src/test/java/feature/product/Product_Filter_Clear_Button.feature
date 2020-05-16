@rundaily @product
Feature: The product is filtered on product list page
  As a guest customer
  I want to be able to filter products and then click clear filters button
  So that I can select filter and list products on the product list page

  Scenario Outline: "<scenarioId>" (Product_Filter_Clear_Button: "<testRailId>") Product is filtered on product list page and the locale "<locale>", after the filter menu "<filterMenu>" and filter "<filter>" are selected, clear filters button is clicked
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User selects filter menu "<filterMenu>"
    And User selects filter "<filter>" "<locale>"
    Then The clear filters button should appear
    When User clicks clear filters button
    Then All filters should be un-click again

    @c5309
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5309     | 1          | uk     | dressSize  | 8      |

    @c5310
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5310     | 2          | us     | dressSize  | 8      |

    @c5311
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5311     | 3          | de     | dressSize  | 8      |

    @c5312
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5312     | 4          | de-en  | dressSize  | 8      |

    @c5313
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5313     | 5          | fr     | dressSize  | 8      |

    @c5314
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5314     | 6          | fr-en  | dressSize  | 8      |

    @c5315
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5315     | 7          | nl     | dressSize  | 8      |

    @c5316
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5316     | 8          | nl-en  | dressSize  | 8      |

    @c5317
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5317     | 9          | ie     | dressSize  | 8      |

    @c5318
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5318     | 10         | eu     | dressSize  | 8      |

    @c5319
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5319     | 11         | au     | dressSize  | 8      |

    @c5320
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5320     | 12         | nz     | dressSize  | 8      |

    @c5321
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5321     | 13         | int    | dressSize  | 8      |

    @c5322
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5322     | 14         | uk     | legLength  | 34     |

    @c5323
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5323     | 15         | us     | legLength  | 34     |

    @c5324
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5324     | 16         | de     | legLength  | 34     |

    @c5325
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5325     | 17         | de-en  | legLength  | 34     |

    @c5326
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5326     | 18         | fr     | legLength  | 34     |

    @c5327
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5327     | 19         | fr-en  | legLength  | 34     |

    @c5328
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5328     | 20         | nl     | legLength  | 34     |

    @c5329
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5329     | 21         | nl-en  | legLength  | 34     |

    @c5330
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5330     | 22         | ie     | legLength  | 34     |

    @c5331
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5331     | 23         | eu     | legLength  | 34     |

    @c5332
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5332     | 24         | au     | legLength  | 34     |

    @c5333
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5333     | 25         | nz     | legLength  | 34     |

    @c5334
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5334     | 26         | int    | legLength  | 34     |

    @c5335
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5335     | 27         | uk     | shoeSize   | 7      |

    @c5336
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5336     | 28         | us     | shoeSize   | 7      |

    @c5337
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5337     | 29         | de     | shoeSize   | 7      |

    @c5338
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5338     | 30         | de-en  | shoeSize   | 7      |

    @c5339
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5339     | 31         | fr     | shoeSize   | 7      |

    @c5340
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5340     | 32         | fr-en  | shoeSize   | 7      |

    @c5341
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5341     | 33         | nl     | shoeSize   | 7      |

    @c5342
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5342     | 34         | nl-en  | shoeSize   | 7      |

    @c5343
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5343     | 35         | ie     | shoeSize   | 7      |

    @c5344
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5344     | 36         | eu     | shoeSize   | 7      |

    @c5345
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5345     | 37         | au     | shoeSize   | 7      |

    @c5346
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5346     | 38         | nz     | shoeSize   | 7      |

    @c5347
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5347     | 39         | int    | shoeSize   | 7      |

    @c5348
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5348     | 40         | uk     | department | accessories |

    @c5349
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5349     | 41         | us     | department | accessories |

    @c5350
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5350     | 42         | de     | department | accessories |

    @c5351
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5351     | 43         | de-en  | department | accessories |

    @c5352
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5352     | 44         | fr     | department | accessories |

    @c5353
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5353     | 45         | fr-en  | department | accessories |

    @c5354
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5354     | 46         | nl     | department | accessories |

    @c5355
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5355     | 47         | nl-en  | department | accessories |

    @c5356
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5356     | 48         | ie     | department | accessories |

    @c5357
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5357     | 49         | eu     | department | accessories |

    @c5358
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      |
      | @c5358     | 50         | int    | department | accessories |

    @c5359
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5359     | 51         | uk     | season     | current |

    @c5360
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5360     | 52         | us     | season     | current |

    @c5361
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5361     | 53         | de     | season     | current |

    @c5362
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5362     | 54         | de-en  | season     | current |

    @c5363
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5363     | 55         | fr     | season     | current |

    @c5364
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5364     | 56         | fr-en  | season     | current |

    @c5365
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5365     | 57         | nl     | season     | current |

    @c5366
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5366     | 58         | nl-en  | season     | current |

    @c5367
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5367     | 59         | ie     | season     | current |

    @c5368
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5368     | 60         | eu     | season     | current |

    @c5369
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5369     | 61         | au     | season     | current |

    @c5370
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5370     | 62         | nz     | season     | current |

    @c5371
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  |
      | @c5371     | 63         | int    | season     | current |

    @c5372
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5372     | 64         | uk     | subDepartment | boot   |

    @c5373
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5373     | 65         | us     | subDepartment | boot   |

    @c5374
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5374     | 66         | de     | subDepartment | boot   |

    @c5375
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5375     | 67         | de-en  | subDepartment | boot   |

    @c5376
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5376     | 68         | fr     | subDepartment | boot   |

    @c5377
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5377     | 69         | fr-en  | subDepartment | boot   |

    @c5378
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5378     | 70         | nl     | subDepartment | boot   |

    @c5379
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5379     | 71         | nl-en  | subDepartment | boot   |

    @c5380
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5380     | 72         | ie     | subDepartment | boot   |

    @c5381
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5381     | 73         | eu     | subDepartment | boot   |

    @c5382
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5382     | 74         | au     | subDepartment | boot   |

    @c5383
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5383     | 75         | nz     | subDepartment | boot   |

    @c5384
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5384     | 76         | int    | subDepartment | boot   |

    @c5385
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5385     | 77         | uk     | color      | beige  |

    @c5386
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5386     | 78         | us     | color      | beige  |

    @c5387
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5387     | 79         | de     | color      | beige  |

    @c5388
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5388     | 80         | de-en  | color      | beige  |

    @c5389
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5389     | 81         | fr     | color      | beige  |

    @c5390
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5390     | 82         | fr-en  | color      | beige  |

    @c5391
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5391     | 83         | nl     | color      | beige  |

    @c5392
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5392     | 84         | nl-en  | color      | beige  |

    @c5393
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5393     | 85         | ie     | color      | beige  |

    @c5394
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5394     | 86         | eu     | color      | beige  |

    @c5395
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5395     | 87         | au     | color      | beige  |

    @c5396
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5396     | 88         | nz     | color      | beige  |

    @c5397
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5397     | 89         | int    | color      | beige  |

    @c5398
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5398     | 90         | uk     | price      | £0-25  |

    @c5399
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5399     | 91         | us     | price      | £0-25  |

    @c5400
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5400     | 92         | de     | price      | £0-25  |

    @c5401
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5401     | 93         | de-en  | price      | £0-25  |

    @c5402
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5402     | 94         | fr     | price      | £0-25  |

    @c5403
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5403     | 95         | fr-en  | price      | £0-25  |

    @c5404
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5404     | 96         | nl     | price      | £0-25  |

    @c5405
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5405     | 97         | nl-en  | price      | £0-25  |

    @c5406
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5406     | 98         | ie     | price      | £0-25  |

    @c5407
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5407     | 99         | eu     | price      | £0-25  |

    @c5408
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5408     | 100        | int    | price      | £0-25  |

    @c5409
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   |
      | @c5409     | 101        | uk     | brand      | blowfish |

    @c5410
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   |
      | @c5410     | 102        | us     | brand      | blowfish |

    @c5411
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   |
      | @c5411     | 103        | fr     | brand      | blowfish |

    @c5412
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   |
      | @c5412     | 104        | fr-en  | brand      | blowfish |

    @c5413
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   |
      | @c5413     | 105        | nl     | brand      | blowfish |

    @c5414
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   |
      | @c5414     | 106        | nl-en  | brand      | blowfish |

    @c5415
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   |
      | @c5415     | 107        | ie     | brand      | blowfish |

    @c5416
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   |
      | @c5416     | 108        | eu     | brand      | blowfish |

    @c5417
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   |
      | @c5417     | 109        | int    | brand      | blowfish |

    @c5418
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5418     | 110        | uk     | bootLength | ankle  |

    @c5419
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5419     | 111        | us     | bootLength | ankle  |

    @c5420
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5420     | 112        | fr     | bootLength | ankle  |

    @c5421
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5421     | 113        | fr-en  | bootLength | ankle  |

    @c5422
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5422     | 114        | nl     | bootLength | ankle  |

    @c5423
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5423     | 115        | nl-en  | bootLength | ankle  |

    @c5424
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5424     | 116        | ie     | bootLength | ankle  |

    @c5425
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5425     | 117        | eu     | bootLength | ankle  |

    @c5426
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5426     | 118        | int    | bootLength | ankle  |

    @c5427
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5427     | 119        | uk     | heel       | flats  |

    @c5428
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5428     | 120        | us     | heel       | flats  |

    @c5429
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5429     | 121        | de     | heel       | flats  |

    @c5430
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5430     | 122        | de-en  | heel       | flats  |

    @c5431
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5431     | 123        | fr     | heel       | flats  |

    @c5432
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5432     | 124        | fr-en  | heel       | flats  |

    @c5433
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5433     | 125        | nl     | heel       | flats  |

    @c5434
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5434     | 126        | nl-en  | heel       | flats  |

    @c5435
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5435     | 127        | ie     | heel       | flats  |

    @c5436
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5436     | 128        | eu     | heel       | flats  |


    @c5437
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5437     | 129        | int    | heel       | flats  |

    @c5449
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5449     | 130        | uk     | length     | maxi   |

    @c5450
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5450     | 131        | us     | length     | maxi   |

    @c5451
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5451     | 132        | de     | length     | maxi   |

    @c5452
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5452     | 133        | de-en  | length     | maxi   |

    @c5453
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5453     | 134        | fr     | length     | maxi   |

    @c5454
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5454     | 135        | fr-en  | length     | maxi   |

    @c5455
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5455     | 136        | nl     | length     | maxi   |

    @c5456
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5456     | 137        | nl-en  | length     | maxi   |

    @c5457
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5457     | 138        | ie     | length     | maxi   |

    @c5458
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5458     | 139        | eu     | length     | maxi   |

    @c5459
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5459     | 140        | int    | length     | maxi   |

    @c5460
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5460     | 141        | uk     | majorityFibre | cotton |

    @c5461
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5461     | 142        | us     | majorityFibre | cotton |

    @c5462
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5462     | 143        | de     | majorityFibre | cotton |

    @c5463
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5463     | 144        | de-en  | majorityFibre | cotton |

    @c5464
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5464     | 145        | fr     | majorityFibre | cotton |

    @c5465
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5465     | 146        | fr-en  | majorityFibre | cotton |

    @c5466
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5466     | 147        | nl     | majorityFibre | cotton |

    @c5467
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5467     | 148        | nl-en  | majorityFibre | cotton |

    @c5468
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5468     | 149        | ie     | majorityFibre | cotton |

    @c5469
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5469     | 150        | eu     | majorityFibre | cotton |

    @c5470
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter |
      | @c5470     | 151        | int    | majorityFibre | cotton |

    @c5471
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5471     | 152        | uk     | rise       | high   |

    @c5472
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5472     | 153        | us     | rise       | high   |

    @c5473
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5473     | 154        | fr     | rise       | high   |

    @c5474
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5474     | 155        | fr-en  | rise       | high   |

    @c5475
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5475     | 156        | nl     | rise       | high   |

    @c5476
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5476     | 157        | nl-en  | rise       | high   |

    @c5477
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5477     | 158        | ie     | rise       | high   |

    @c5478
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5478     | 159        | eu     | rise       | high   |

    @c5479
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter |
      | @c5479     | 160        | int    | rise       | high   |