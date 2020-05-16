@regressiontest @rundaily @payment
Feature: Completion of the order as a new customer
  As a new customer
  I want to be able to buy products
  So that I can add the products to the bag and do payment

  Scenario Outline: "<scenarioId>" (3D_Secure_Payment: "<testRailId>") Checkout is done by the new customer; The locale is "<locale>", "<quickViewPdp>" is clicked on product list page, the delivery type is "<deliveryType>" and the payment type is "<paymentType>"
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
    And User enters customer details with password
    And User chooses delivery type based on locale "<deliveryType>" "<locale>"
    And User enters address details on the checkout page "<locale>"
    And User selects pay by card option "<locale>"
    And User enters payment detail for "<paymentType>" "<locale>"
    Then User clicks submit order button "<paymentType>"
    And User enters username and password on the 3ds form "<paymentType>"
    Then User should complete order successfully

    @c4470
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4470     | 1          | uk     | quickview    | standard     | 3dsVisa     |

    @c4471
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4471     | 2          | uk     | pdp          | standard     | 3dsVisa     |

    @c4472
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4472     | 3          | us     | quickview    | standard     | 3dsVisa     |

    @c4473
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4473     | 4          | us     | pdp          | standard     | 3dsVisa     |

    @c4474
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4474     | 5          | nl-en  | quickview    | standard     | 3dsVisa     |

    @c4475
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4475     | 6          | nl-en  | pdp          | standard     | 3dsVisa     |

    @c4476
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4476     | 7          | de-en  | quickview    | standard     | 3dsVisa     |

    @c4477
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4477     | 8          | de-en  | pdp          | standard     | 3dsVisa     |

    @c4478
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4478     | 9          | fr-en  | quickview    | standard     | 3dsVisa     |

    @c4479
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4479     | 10         | fr-en  | pdp          | standard     | 3dsVisa     |

    @c4480
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4480     | 11         | ie     | quickview    | standard     | 3dsVisa     |

    @c4481
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4481     | 12         | ie     | pdp          | standard     | 3dsVisa     |

    @c4482
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4482     | 13         | ca     | quickview    | standard     | 3dsVisa     |

    @c4483
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4483     | 14         | ca     | pdp          | standard     | 3dsVisa     |

    @c4484
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4484     | 15         | de     | quickview    | standard     | 3dsVisa     |

    @c4485
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4485     | 16         | de     | pdp          | standard     | 3dsVisa     |

    @c4486
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4486     | 17         | nl     | quickview    | standard     | 3dsVisa     |

    @c4487
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4487     | 18         | nl     | pdp          | standard     | 3dsVisa     |

    @c4488
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4488     | 19         | fr     | quickview    | standard     | 3dsVisa     |

    @c4489
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4489     | 20         | fr     | pdp          | standard     | 3dsVisa     |

    @c4490
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4490     | 21         | eu     | quickview    | standard     | 3dsVisa     |

    @c4491
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4491     | 22         | eu     | pdp          | standard     | 3dsVisa     |

    @c4492
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4492     | 23         | au     | quickview    | standard     | 3dsVisa     |

    @c4493
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4493     | 24         | au     | pdp          | standard     | 3dsVisa     |

    @c4494
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4494     | 25         | nz     | quickview    | standard     | 3dsVisa     |

    @c4495
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4495     | 26         | nz     | pdp          | standard     | 3dsVisa     |

    @c4496
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4496     | 27         | int    | quickview    | standard     | 3dsVisa     |

    @c4497
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4497     | 28         | int    | pdp          | standard     | 3dsVisa     |

    @c4498
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4498     | 29         | uk     | quickview    | standard     | 3dsMaster   |

    @c4499
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4499     | 30         | uk     | pdp          | standard     | 3dsMaster   |

    @c4500
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4500     | 31         | us     | quickview    | standard     | 3dsMaster   |

    @c4501
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4501     | 32         | us     | pdp          | standard     | 3dsMaster   |

    @c4502
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4502     | 33         | nl-en  | quickview    | standard     | 3dsMaster   |

    @c4503
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4503     | 34         | nl-en  | pdp          | standard     | 3dsMaster   |

    @c4504
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4504     | 35         | de-en  | quickview    | standard     | 3dsMaster   |

    @c4505
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4505     | 36         | de-en  | pdp          | standard     | 3dsMaster   |

    @c4506
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4506     | 37         | fr-en  | quickview    | standard     | 3dsMaster   |

    @c4507
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4507     | 38         | fr-en  | pdp          | standard     | 3dsMaster   |

    @c4508
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4508     | 39         | ie     | quickview    | standard     | 3dsMaster   |

    @c4509
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4509     | 40         | ie     | pdp          | standard     | 3dsMaster   |

    @c4510
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4510     | 41         | ca     | quickview    | standard     | 3dsMaster   |

    @c4511
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4511     | 42         | ca     | pdp          | standard     | 3dsMaster   |

    @c4512
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4512     | 43         | de     | quickview    | standard     | 3dsMaster   |

    @c4513
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4513     | 44         | de     | pdp          | standard     | 3dsMaster   |

    @c4514
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4514     | 45         | nl     | quickview    | standard     | 3dsMaster   |

    @c4515
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4515     | 46         | nl     | pdp          | standard     | 3dsMaster   |

    @c4516
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4516     | 47         | fr     | quickview    | standard     | 3dsMaster   |

    @c4517
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4517     | 48         | fr     | pdp          | standard     | 3dsMaster   |

    @c4518
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4518     | 49         | eu     | quickview    | standard     | 3dsMaster   |

    @c4519
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4519     | 50         | eu     | pdp          | standard     | 3dsMaster   |

    @c4520
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4520     | 51         | au     | quickview    | standard     | 3dsMaster   |

    @c4521
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4521     | 52         | au     | pdp          | standard     | 3dsMaster   |

    @c4522
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4522     | 53         | nz     | quickview    | standard     | 3dsMaster   |

    @c4523
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4523     | 54         | nz     | pdp          | standard     | 3dsMaster   |

    @c4524
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4524     | 55         | int    | quickview    | standard     | 3dsMaster   |

    @c4525
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4525     | 56         | int    | pdp          | standard     | 3dsMaster   |

    @c4526
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4526     | 57         | uk     | quickview    | standard     | 3dsAmex     |

    @c4527
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4527     | 58         | uk     | pdp          | standard     | 3dsAmex     |

    @c4528
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4528     | 59         | us     | quickview    | standard     | 3dsAmex     |

    @c4529
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4529     | 60         | us     | pdp          | standard     | 3dsAmex     |

    @c4530
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4530     | 61         | nl-en  | quickview    | standard     | 3dsAmex     |

    @c4531
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4531     | 62         | nl-en  | pdp          | standard     | 3dsAmex     |

    @c4532
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4532     | 63         | de-en  | quickview    | standard     | 3dsAmex     |

    @c4533
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4533     | 64         | de-en  | pdp          | standard     | 3dsAmex     |

    @c4534
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4534     | 65         | fr-en  | quickview    | standard     | 3dsAmex     |

    @c4535
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4535     | 66         | fr-en  | pdp          | standard     | 3dsAmex     |

    @c4536
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4536     | 67         | ie     | quickview    | standard     | 3dsAmex     |

    @c4537
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4537     | 68         | ie     | pdp          | standard     | 3dsAmex     |

    @c4538
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4538     | 69         | ca     | quickview    | standard     | 3dsAmex     |

    @c4539
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4539     | 70         | ca     | pdp          | standard     | 3dsAmex     |

    @c4540
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4540     | 71         | de     | quickview    | standard     | 3dsAmex     |

    @c4541
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4541     | 72         | de     | pdp          | standard     | 3dsAmex     |

    @c4542
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4542     | 73         | nl     | quickview    | standard     | 3dsAmex     |

    @c4543
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4543     | 74         | nl     | pdp          | standard     | 3dsAmex     |

    @c4544
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4544     | 75         | fr     | quickview    | standard     | 3dsAmex     |

    @c4545
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4545     | 76         | fr     | pdp          | standard     | 3dsAmex     |

    @c4546
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4546     | 77         | eu     | quickview    | standard     | 3dsAmex     |

    @c4547
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4547     | 78         | eu     | pdp          | standard     | 3dsAmex     |

    @c4548
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4548     | 79         | au     | quickview    | standard     | 3dsAmex     |

    @c4549
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4549     | 80         | au     | pdp          | standard     | 3dsAmex     |

    @c4550
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4550     | 81         | nz     | quickview    | standard     | 3dsAmex     |

    @c4551
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4551     | 82         | nz     | pdp          | standard     | 3dsAmex     |

    @c4552
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4552     | 83         | int    | quickview    | standard     | 3dsAmex     |

    @c4553
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4553     | 84         | int    | pdp          | standard     | 3dsAmex     |

    @c4554
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4554     | 85         | uk     | quickview    | standard     | 3dsMaestro  |

    @c4555
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4555     | 86         | uk     | pdp          | standard     | 3dsMaestro  |

    @c4556
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4556     | 87         | us     | quickview    | standard     | 3dsMaestro  |

    @c4557
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4557     | 88         | us     | pdp          | standard     | 3dsMaestro  |

    @c4558
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4558     | 89         | nl-en  | quickview    | standard     | 3dsMaestro  |

    @c4559
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4559     | 90         | nl-en  | pdp          | standard     | 3dsMaestro  |

    @c4560
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4560     | 91         | de-en  | quickview    | standard     | 3dsMaestro  |

    @c4561
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4561     | 92         | de-en  | pdp          | standard     | 3dsMaestro  |

    @c4562
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4562     | 93         | fr-en  | quickview    | standard     | 3dsMaestro  |

    @c4563
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4563     | 94         | fr-en  | pdp          | standard     | 3dsMaestro  |

    @c4564
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4564     | 95         | ie     | quickview    | standard     | 3dsMaestro  |

    @c4565
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4565     | 96         | ie     | pdp          | standard     | 3dsMaestro  |

    @c4566
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4566     | 97         | ca     | quickview    | standard     | 3dsMaestro  |

    @c4567
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4567     | 98         | ca     | pdp          | standard     | 3dsMaestro  |

    @c4568
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4568     | 99         | de     | quickview    | standard     | 3dsMaestro  |

    @c4569
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4569     | 100        | de     | pdp          | standard     | 3dsMaestro  |

    @c4570
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4570     | 101        | nl     | quickview    | standard     | 3dsMaestro  |

    @c4571
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4571     | 102        | nl     | pdp          | standard     | 3dsMaestro  |

    @c4572
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4572     | 103        | fr     | quickview    | standard     | 3dsMaestro  |

    @c4573
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4573     | 104        | fr     | pdp          | standard     | 3dsMaestro  |

    @c4574
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4574     | 105        | eu     | quickview    | standard     | 3dsMaestro  |

    @c4575
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4575     | 106        | eu     | pdp          | standard     | 3dsMaestro  |

    @c4576
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4576     | 107        | au     | quickview    | standard     | 3dsMaestro  |

    @c4577
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4577     | 108        | au     | pdp          | standard     | 3dsMaestro  |

    @c4578
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4578     | 109        | nz     | quickview    | standard     | 3dsMaestro  |

    @c4579
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4579     | 110        | nz     | pdp          | standard     | 3dsMaestro  |

    @c4580
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4580     | 111        | int    | quickview    | standard     | 3dsMaestro  |

    @c4581
    Examples:
      | testRailId | scenarioId | locale | quickViewPdp | deliveryType | paymentType |
      | @c4581     | 112        | int    | pdp          | standard     | 3dsMaestro  |