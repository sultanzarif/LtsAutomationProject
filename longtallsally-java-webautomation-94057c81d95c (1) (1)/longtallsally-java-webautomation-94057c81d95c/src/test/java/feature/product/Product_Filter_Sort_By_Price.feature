@rundaily @product
Feature: The product is filtered on product list page
  As a guest customer
  I want to be able to filter products
  So that I can select filter and list products on the product list page

  Scenario Outline: "<scenarioId>" (Product_Filter_Sort_By_Price: "<testRailId>") Product is filtered on product list page and the locale "<locale>", after the filter menu "<filterMenu>", filter "<filter>" and sort by "<sortBy>" are selected the product send to the wishlist
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User selects filter menu "<filterMenu>"
    And User selects filter "<filter>" "<locale>"
    Then The clear filters button should appear
    And User selects sort by "<sortBy>"
    And User picks a specific product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    When User clicks add to wishlist button "<quickViewPdp>"
    And User closes the quickview popup
    And User clicks logo "<locale>"
    And User goes to wishlist page
    Then The product should be stored in my wishlist page

    @c5645
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5645     | 1          | uk     | dressSize  | 8      | quickview    | priceAsc |

    @c5646
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5646     | 2          | us     | dressSize  | 8      | quickview    | priceAsc |

    @c5647
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5647     | 3          | de     | dressSize  | 8      | quickview    | priceAsc |

    @c5648
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5648     | 4          | de-en  | dressSize  | 8      | quickview    | priceAsc |

    @c5649
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5649     | 5          | fr     | dressSize  | 8      | quickview    | priceAsc |

    @c5650
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5650     | 6          | fr-en  | dressSize  | 8      | quickview    | priceAsc |

    @c5651
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5651     | 7          | nl     | dressSize  | 8      | quickview    | priceAsc |

    @c5652
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5652     | 8          | nl-en  | dressSize  | 8      | quickview    | priceAsc |

    @c5653
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5653     | 9          | ie     | dressSize  | 8      | quickview    | priceAsc |

    @c5654
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5654     | 10         | eu     | dressSize  | 8      | quickview    | priceAsc |

    @c5655
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5655     | 11         | au     | dressSize  | 8      | quickview    | priceAsc |

    @c5656
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5656     | 12         | nz     | dressSize  | 8      | quickview    | priceAsc |

    @c5657
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5657     | 13         | int    | dressSize  | 8      | quickview    | priceAsc |

    @c5658
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5658     | 14         | uk     | legLength  | 34     | quickview    | priceAsc |

    @c5659
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5659     | 15         | us     | legLength  | 34     | quickview    | priceAsc |

    @c5660
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5660     | 16         | de     | legLength  | 34     | quickview    | priceAsc |

    @c5661
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5661     | 17         | de-en  | legLength  | 34     | quickview    | priceAsc |

    @c5662
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5662     | 18         | fr     | legLength  | 34     | quickview    | priceAsc |

    @c5663
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5663     | 19         | fr-en  | legLength  | 34     | quickview    | priceAsc |

    @c5664
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5664     | 20         | nl     | legLength  | 34     | quickview    | priceAsc |

    @c5665
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5665     | 21         | nl-en  | legLength  | 34     | quickview    | priceAsc |

    @c5666
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5666     | 22         | ie     | legLength  | 34     | quickview    | priceAsc |

    @c5667
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5667     | 23         | eu     | legLength  | 34     | quickview    | priceAsc |

    @c5668
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5668     | 24         | au     | legLength  | 34     | quickview    | priceAsc |

    @c5669
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5669     | 25         | nz     | legLength  | 34     | quickview    | priceAsc |

    @c5670
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5670     | 26         | int    | legLength  | 34     | quickview    | priceAsc |

    @c5671
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5671     | 27         | uk     | shoeSize   | 7      | quickview    | priceAsc |

    @c5672
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5672     | 28         | us     | shoeSize   | 7      | quickview    | priceAsc |

    @c5673
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5673     | 29         | de     | shoeSize   | 7      | quickview    | priceAsc |

    @c5674
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5674     | 30         | de-en  | shoeSize   | 7      | quickview    | priceAsc |

    @c5675
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5675     | 31         | fr     | shoeSize   | 7      | quickview    | priceAsc |

    @c5676
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5676     | 32         | fr-en  | shoeSize   | 7      | quickview    | priceAsc |

    @c5677
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5677     | 33         | nl     | shoeSize   | 7      | quickview    | priceAsc |

    @c5678
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5678     | 34         | nl-en  | shoeSize   | 7      | quickview    | priceAsc |

    @c5679
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5679     | 35         | ie     | shoeSize   | 7      | quickview    | priceAsc |

    @c5680
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5680     | 36         | eu     | shoeSize   | 7      | quickview    | priceAsc |

    @c5681
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5681     | 37         | int    | shoeSize   | 7      | quickview    | priceAsc |

    @c5682
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp | sortBy   |
      | @c5682     | 38         | de     | department | accessories | quickview    | priceAsc |

    @c5683
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp | sortBy   |
      | @c5683     | 39         | de-en  | department | accessories | quickview    | priceAsc |

    @c5684
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5684     | 40         | uk     | season     | current | quickview    | priceAsc |

    @c5685
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5685     | 41         | us     | season     | current | quickview    | priceAsc |

    @c5686
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5686     | 42         | de     | season     | current | quickview    | priceAsc |

    @c5687
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5687     | 43         | de-en  | season     | current | quickview    | priceAsc |

    @c5688
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5688     | 44         | fr     | season     | current | quickview    | priceAsc |

    @c5689
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5689     | 45         | fr-en  | season     | current | quickview    | priceAsc |

    @c5690
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5690     | 46         | nl     | season     | current | quickview    | priceAsc |

    @c5691
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5691     | 47         | nl-en  | season     | current | quickview    | priceAsc |

    @c5692
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5692     | 48         | ie     | season     | current | quickview    | priceAsc |

    @c5693
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5693     | 49         | eu     | season     | current | quickview    | priceAsc |

    @c5694
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5694     | 50         | int    | season     | current | quickview    | priceAsc |

    @c5695
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5695     | 51         | uk     | subDepartment | boot   | quickview    | priceAsc |

    @c5696
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5696     | 52         | us     | subDepartment | boot   | quickview    | priceAsc |

    @c5697
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5697     | 53         | de     | subDepartment | boot   | quickview    | priceAsc |

    @c5698
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5698     | 54         | de-en  | subDepartment | boot   | quickview    | priceAsc |

    @c5699
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5699     | 55         | fr     | subDepartment | boot   | quickview    | priceAsc |

    @c5700
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5700     | 56         | fr-en  | subDepartment | boot   | quickview    | priceAsc |

    @c5701
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5701     | 57         | nl     | subDepartment | boot   | quickview    | priceAsc |

    @c5702
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5702     | 58         | nl-en  | subDepartment | boot   | quickview    | priceAsc |

    @c5703
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5703     | 59         | ie     | subDepartment | boot   | quickview    | priceAsc |

    @c5704
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5704     | 60         | eu     | subDepartment | boot   | quickview    | priceAsc |

    @c5705
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5705     | 61         | au     | subDepartment | boot   | quickview    | priceAsc |

    @c5706
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5706     | 62         | nz     | subDepartment | boot   | quickview    | priceAsc |

    @c5707
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5707     | 63         | int    | subDepartment | boot   | quickview    | priceAsc |

    @c5708
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5708     | 64         | uk     | color      | beige  | quickview    | priceAsc |

    @c5709
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5709     | 65         | us     | color      | beige  | quickview    | priceAsc |

    @c5710
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5710     | 66         | de     | color      | beige  | quickview    | priceAsc |

    @c5711
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5711     | 67         | de-en  | color      | beige  | quickview    | priceAsc |

    @c5712
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5712     | 68         | fr     | color      | beige  | quickview    | priceAsc |

    @c5713
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5713     | 69         | fr-en  | color      | beige  | quickview    | priceAsc |

    @c5714
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5714     | 70         | nl     | color      | beige  | quickview    | priceAsc |

    @c5715
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5715     | 71         | nl-en  | color      | beige  | quickview    | priceAsc |

    @c5716
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5716     | 72         | ie     | color      | beige  | quickview    | priceAsc |

    @c5717
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5717     | 73         | eu     | color      | beige  | quickview    | priceAsc |

    @c5718
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5718     | 74         | au     | color      | beige  | quickview    | priceAsc |

    @c5719
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5719     | 75         | nz     | color      | beige  | quickview    | priceAsc |

    @c5720
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5720     | 76         | int    | color      | beige  | quickview    | priceAsc |

    @c5721
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5721     | 77         | uk     | price      | £0-25  | quickview    | priceAsc |

    @c5722
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5722     | 78         | us     | price      | £0-25  | quickview    | priceAsc |

    @c5723
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5723     | 79         | de     | price      | £0-25  | quickview    | priceAsc |

    @c5724
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5724     | 80         | de-en  | price      | £0-25  | quickview    | priceAsc |

    @c5725
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5725     | 81         | fr     | price      | £0-25  | quickview    | priceAsc |

    @c5726
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5726     | 82         | fr-en  | price      | £0-25  | quickview    | priceAsc |

    @c5727
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5727     | 83         | nl     | price      | £0-25  | quickview    | priceAsc |

    @c5728
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5728     | 84         | nl-en  | price      | £0-25  | quickview    | priceAsc |

    @c5729
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5729     | 85         | ie     | price      | £0-25  | quickview    | priceAsc |

    @c5730
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5730     | 86         | eu     | price      | £0-25  | quickview    | priceAsc |

    @c5731
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5731     | 87         | int    | price      | £0-25  | quickview    | priceAsc |

    @c5732
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy   |
      | @c5732     | 88         | uk     | brand      | blowfish | quickview    | priceAsc |

    @c5733
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy   |
      | @c5733     | 89         | us     | brand      | blowfish | quickview    | priceAsc |

    @c5734
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy   |
      | @c5734     | 90         | fr     | brand      | blowfish | quickview    | priceAsc |

    @c5735
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy   |
      | @c5735     | 91         | fr-en  | brand      | blowfish | quickview    | priceAsc |

    @c5736
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy   |
      | @c5736     | 92         | nl     | brand      | blowfish | quickview    | priceAsc |

    @c5737
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy   |
      | @c5737     | 93         | nl-en  | brand      | blowfish | quickview    | priceAsc |

    @c5738
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy   |
      | @c5738     | 94         | ie     | brand      | blowfish | quickview    | priceAsc |

    @c5739
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy   |
      | @c5739     | 95         | eu     | brand      | blowfish | quickview    | priceAsc |

    @c5740
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy   |
      | @c5740     | 96         | int    | brand      | blowfish | quickview    | priceAsc |

    @c5741
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5741     | 97         | uk     | bootLength | ankle  | quickview    | priceAsc |

    @c5742
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5742     | 98         | us     | bootLength | ankle  | quickview    | priceAsc |

    @c5743
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5743     | 99         | fr     | bootLength | ankle  | quickview    | priceAsc |

    @c5744
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5744     | 100        | fr-en  | bootLength | ankle  | quickview    | priceAsc |

    @c5745
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5745     | 101        | nl     | bootLength | ankle  | quickview    | priceAsc |

    @c5746
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5746     | 102        | nl-en  | bootLength | ankle  | quickview    | priceAsc |

    @c5747
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5747     | 103        | ie     | bootLength | ankle  | quickview    | priceAsc |

    @c5748
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5748     | 104        | eu     | bootLength | ankle  | quickview    | priceAsc |

    @c5749
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5749     | 105        | int    | bootLength | ankle  | quickview    | priceAsc |

    @c5750
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5750     | 106        | uk     | heel       | flats  | quickview    | priceAsc |

    @c5751
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5751     | 107        | us     | heel       | flats  | quickview    | priceAsc |

    @c5752
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5752     | 108        | de     | heel       | flats  | quickview    | priceAsc |

    @c5753
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5753     | 109        | de-en  | heel       | flats  | quickview    | priceAsc |

    @c5754
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5754     | 110        | fr     | heel       | flats  | quickview    | priceAsc |

    @c5755
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5755     | 111        | fr-en  | heel       | flats  | quickview    | priceAsc |

    @c5756
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5756     | 112        | nl     | heel       | flats  | quickview    | priceAsc |

    @c5757
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5757     | 113        | nl-en  | heel       | flats  | quickview    | priceAsc |

    @c5758
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5758     | 114        | ie     | heel       | flats  | quickview    | priceAsc |

    @c5759
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5759     | 115        | eu     | heel       | flats  | quickview    | priceAsc |

    @c5760
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5760     | 116        | int    | heel       | flats  | quickview    | priceAsc |

    @c5761
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5761     | 117        | uk     | legShape   | bootCut | quickview    | priceAsc |

    @c5762
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5762     | 118        | us     | legShape   | bootCut | quickview    | priceAsc |

    @c5763
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5763     | 119        | de     | legShape   | bootCut | quickview    | priceAsc |

    @c5764
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5764     | 120        | de-en  | legShape   | bootCut | quickview    | priceAsc |

    @c5765
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5765     | 121        | fr     | legShape   | bootCut | quickview    | priceAsc |

    @c5766
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5766     | 122        | fr-en  | legShape   | bootCut | quickview    | priceAsc |

    @c5767
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5767     | 123        | nl     | legShape   | bootCut | quickview    | priceAsc |

    @c5768
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5768     | 124        | nl-en  | legShape   | bootCut | quickview    | priceAsc |

    @c5769
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5769     | 125        | ie     | legShape   | bootCut | quickview    | priceAsc |

    @c5770
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5770     | 126        | eu     | legShape   | bootCut | quickview    | priceAsc |

    @c5771
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy   |
      | @c5771     | 127        | int    | legShape   | bootCut | quickview    | priceAsc |

    @c5772
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5772     | 128        | uk     | length     | maxi   | quickview    | priceAsc |

    @c5773
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5773     | 129        | us     | length     | maxi   | quickview    | priceAsc |

    @c5774
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5774     | 130        | de     | length     | maxi   | quickview    | priceAsc |

    @c5775
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5775     | 131        | de-en  | length     | maxi   | quickview    | priceAsc |

    @c5776
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5776     | 132        | fr     | length     | maxi   | quickview    | priceAsc |

    @c5777
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5777     | 133        | fr-en  | length     | maxi   | quickview    | priceAsc |

    @c5778
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5778     | 134        | nl     | length     | maxi   | quickview    | priceAsc |

    @c5779
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5779     | 135        | nl-en  | length     | maxi   | quickview    | priceAsc |

    @c5780
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5780     | 136        | ie     | length     | maxi   | quickview    | priceAsc |

    @c5781
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5781     | 137        | eu     | length     | maxi   | quickview    | priceAsc |

    @c5782
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5782     | 138        | int    | length     | maxi   | quickview    | priceAsc |

    @c5783
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5783     | 139        | uk     | majorityFibre | cotton | quickview    | priceAsc |

    @c5784
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5784     | 140        | us     | majorityFibre | cotton | quickview    | priceAsc |

    @c5785
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5785     | 141        | de     | majorityFibre | cotton | quickview    | priceAsc |

    @c5786
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5786     | 142        | de-en  | majorityFibre | cotton | quickview    | priceAsc |

    @c5787
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5787     | 143        | fr     | majorityFibre | cotton | quickview    | priceAsc |

    @c5788
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5788     | 144        | fr-en  | majorityFibre | cotton | quickview    | priceAsc |

    @c5789
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5789     | 145        | nl     | majorityFibre | cotton | quickview    | priceAsc |

    @c5790
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5790     | 146        | nl-en  | majorityFibre | cotton | quickview    | priceAsc |

    @c5791
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5791     | 147        | ie     | majorityFibre | cotton | quickview    | priceAsc |

    @c5792
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5792     | 148        | eu     | majorityFibre | cotton | quickview    | priceAsc |

    @c5793
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy   |
      | @c5793     | 149        | int    | majorityFibre | cotton | quickview    | priceAsc |

    @c5794
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5794     | 150        | uk     | rise       | high   | quickview    | priceAsc |

    @c5795
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5795     | 151        | us     | rise       | high   | quickview    | priceAsc |

    @c5796
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5796     | 152        | de     | rise       | high   | quickview    | priceAsc |

    @c5797
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5798     | 153        | de-en  | rise       | high   | quickview    | priceAsc |

    @c5799
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @          | 154        | fr     | rise       | high   | quickview    | priceAsc |

    @c5800
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5800     | 155        | fr-en  | rise       | high   | quickview    | priceAsc |

    @c5801
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5801     | 156        | nl     | rise       | high   | quickview    | priceAsc |

    @c5802
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5802     | 157        | nl-en  | rise       | high   | quickview    | priceAsc |

    @c5803
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5803     | 158        | ie     | rise       | high   | quickview    | priceAsc |

    @c5804
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5804     | 159        | eu     | rise       | high   | quickview    | priceAsc |

    @c5964
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy   |
      | @c5964     | 160        | int    | rise       | high   | quickview    | priceAsc |

    @c5965
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5965     | 161        | uk     | dressSize  | 8      | quickview    | priceDesc |

    @c5966
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5966     | 162        | us     | dressSize  | 8      | quickview    | priceDesc |

    @c5967
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5967     | 163        | de     | dressSize  | 8      | quickview    | priceDesc |

    @c5968
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5968     | 164        | de-en  | dressSize  | 8      | quickview    | priceDesc |

    @c5969
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5969     | 165        | fr     | dressSize  | 8      | quickview    | priceDesc |

    @c5970
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5970     | 166        | fr-en  | dressSize  | 8      | quickview    | priceDesc |

    @c5971
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5971     | 167        | nl     | dressSize  | 8      | quickview    | priceDesc |

    @c5972
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5972     | 168        | nl-en  | dressSize  | 8      | quickview    | priceDesc |

    @c5973
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5973     | 169        | ie     | dressSize  | 8      | quickview    | priceDesc |

    @c5974
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5974     | 170        | eu     | dressSize  | 8      | quickview    | priceDesc |

    @c5975
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5975     | 171        | au     | dressSize  | 8      | quickview    | priceDesc |

    @c5976
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5976     | 172        | nz     | dressSize  | 8      | quickview    | priceDesc |

    @c5977
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5977     | 173        | int    | dressSize  | 8      | quickview    | priceDesc |

    @c5978
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5978     | 174        | uk     | legLength  | 34     | quickview    | priceDesc |

    @c5979
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5979     | 175        | us     | legLength  | 34     | quickview    | priceDesc |

    @c5980
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5980     | 176        | de     | legLength  | 34     | quickview    | priceDesc |

    @c5981
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5981     | 177        | de-en  | legLength  | 34     | quickview    | priceDesc |

    @c5982
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5982     | 178        | fr     | legLength  | 34     | quickview    | priceDesc |

    @c5983
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5983     | 179        | fr-en  | legLength  | 34     | quickview    | priceDesc |

    @c5984
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5984     | 180        | nl     | legLength  | 34     | quickview    | priceDesc |

    @c5985
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5985     | 181        | nl-en  | legLength  | 34     | quickview    | priceDesc |

    @c5986
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5986     | 182        | ie     | legLength  | 34     | quickview    | priceDesc |

    @c5987
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5987     | 183        | eu     | legLength  | 34     | quickview    | priceDesc |

    @c5988
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5988     | 184        | au     | legLength  | 34     | quickview    | priceDesc |

    @c5989
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5989     | 185        | nz     | legLength  | 34     | quickview    | priceDesc |

    @c5990
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5990     | 186        | int    | legLength  | 34     | quickview    | priceDesc |

    @c5991
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5991     | 187        | uk     | shoeSize   | 7      | quickview    | priceDesc |

    @c5992
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5992     | 188        | us     | shoeSize   | 7      | quickview    | priceDesc |

    @c5993
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5993     | 189        | de     | shoeSize   | 7      | quickview    | priceDesc |

    @c5994
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5994     | 190        | de-en  | shoeSize   | 7      | quickview    | priceDesc |

    @c5995
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5995     | 191        | fr     | shoeSize   | 7      | quickview    | priceDesc |

    @c5996
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5996     | 192        | fr-en  | shoeSize   | 7      | quickview    | priceDesc |

    @c5997
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5997     | 193        | nl     | shoeSize   | 7      | quickview    | priceDesc |

    @c5998
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5998     | 194        | nl-en  | shoeSize   | 7      | quickview    | priceDesc |

    @c5999
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c5999     | 195        | ie     | shoeSize   | 7      | quickview    | priceDesc |

    @c6000
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6000     | 196        | eu     | shoeSize   | 7      | quickview    | priceDesc |

    @c6001
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6001     | 197        | int    | shoeSize   | 7      | quickview    | priceDesc |

    @c6002
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp | sortBy    |
      | @c6002     | 198        | de     | department | accessories | quickview    | priceDesc |

    @c6003
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp | sortBy    |
      | @c6003     | 199        | de-en  | department | accessories | quickview    | priceDesc |

    @c6004
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6004     | 200        | uk     | season     | current | quickview    | priceDesc |

    @c6005
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6005     | 201        | us     | season     | current | quickview    | priceDesc |

    @c6006
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6006     | 202        | de     | season     | current | quickview    | priceDesc |

    @c6007
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6007     | 203        | de-en  | season     | current | quickview    | priceDesc |

    @c6008
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6008     | 204        | fr     | season     | current | quickview    | priceDesc |

    @c6009
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6009     | 205        | fr-en  | season     | current | quickview    | priceDesc |

    @c6010
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6010     | 206        | nl     | season     | current | quickview    | priceDesc |

    @c6011
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6011     | 207        | nl-en  | season     | current | quickview    | priceDesc |

    @c6012
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6012     | 208        | ie     | season     | current | quickview    | priceDesc |

    @c6013
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6013     | 209        | eu     | season     | current | quickview    | priceDesc |

    @c6014
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6014     | 210        | int    | season     | current | quickview    | priceDesc |

    @c6015
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6015     | 211        | uk     | subDepartment | boot   | quickview    | priceDesc |

    @c6016
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6016     | 212        | us     | subDepartment | boot   | quickview    | priceDesc |

    @c6017
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6017     | 213        | de     | subDepartment | boot   | quickview    | priceDesc |

    @c6018
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6018     | 214        | de-en  | subDepartment | boot   | quickview    | priceDesc |

    @c6019
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6019     | 215        | fr     | subDepartment | boot   | quickview    | priceDesc |

    @c6020
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6020     | 216        | fr-en  | subDepartment | boot   | quickview    | priceDesc |

    @c6021
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6021     | 217        | nl     | subDepartment | boot   | quickview    | priceDesc |

    @c6022
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6022     | 218        | nl-en  | subDepartment | boot   | quickview    | priceDesc |

    @c6023
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6023     | 219        | ie     | subDepartment | boot   | quickview    | priceDesc |

    @c6024
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6024     | 220        | eu     | subDepartment | boot   | quickview    | priceDesc |

    @c6025
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6025     | 221        | au     | subDepartment | boot   | quickview    | priceDesc |

    @c6026
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6026     | 222        | nz     | subDepartment | boot   | quickview    | priceDesc |

    @c6027
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6027     | 223        | int    | subDepartment | boot   | quickview    | priceDesc |

    @c6028
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6028     | 224        | uk     | color      | beige  | quickview    | priceDesc |

    @c6029
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6029     | 225        | us     | color      | beige  | quickview    | priceDesc |

    @c6030
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6030     | 226        | de     | color      | beige  | quickview    | priceDesc |

    @c6031
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6031     | 227        | de-en  | color      | beige  | quickview    | priceDesc |

    @c6032
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6032     | 228        | fr     | color      | beige  | quickview    | priceDesc |

    @c6033
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6033     | 229        | fr-en  | color      | beige  | quickview    | priceDesc |

    @c6034
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6034     | 230        | nl     | color      | beige  | quickview    | priceDesc |

    @c6035
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6035     | 231        | nl-en  | color      | beige  | quickview    | priceDesc |

    @c6036
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6036     | 232        | ie     | color      | beige  | quickview    | priceDesc |

    @c6037
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6037     | 233        | eu     | color      | beige  | quickview    | priceDesc |

    @c6038
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6038     | 234        | au     | color      | beige  | quickview    | priceDesc |

    @c6039
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6039     | 235        | nz     | color      | beige  | quickview    | priceDesc |

    @c6040
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6040     | 236        | int    | color      | beige  | quickview    | priceDesc |

    @c6041
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6041     | 237        | uk     | price      | £0-25  | quickview    | priceDesc |

    @c6042
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6042     | 238        | us     | price      | £0-25  | quickview    | priceDesc |

    @c6043
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6043     | 239        | de     | price      | £0-25  | quickview    | priceDesc |

    @c6044
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6044     | 240        | de-en  | price      | £0-25  | quickview    | priceDesc |

    @c6045
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6045     | 241        | fr     | price      | £0-25  | quickview    | priceDesc |

    @c6046
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6046     | 242        | fr-en  | price      | £0-25  | quickview    | priceDesc |

    @c6047
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6047     | 243        | nl     | price      | £0-25  | quickview    | priceDesc |

    @c6048
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6048     | 244        | nl-en  | price      | £0-25  | quickview    | priceDesc |

    @c6049
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6049     | 245        | ie     | price      | £0-25  | quickview    | priceDesc |

    @c6050
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6050     | 246        | eu     | price      | £0-25  | quickview    | priceDesc |

    @c6051
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6051     | 247        | int    | price      | £0-25  | quickview    | priceDesc |

    @c6052
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy    |
      | @c6052     | 248        | uk     | brand      | blowfish | quickview    | priceDesc |

    @c6053
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy    |
      | @c6053     | 249        | us     | brand      | blowfish | quickview    | priceDesc |

    @c6054
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy    |
      | @c6054     | 250        | fr     | brand      | blowfish | quickview    | priceDesc |

    @c6055
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy    |
      | @c6055     | 251        | fr-en  | brand      | blowfish | quickview    | priceDesc |

    @c6056
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy    |
      | @c6056     | 252        | nl     | brand      | blowfish | quickview    | priceDesc |

    @c6057
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy    |
      | @c6057     | 253        | nl-en  | brand      | blowfish | quickview    | priceDesc |

    @c6058
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy    |
      | @c6058     | 254        | ie     | brand      | blowfish | quickview    | priceDesc |

    @c6059
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy    |
      | @c6059     | 255        | eu     | brand      | blowfish | quickview    | priceDesc |

    @c6060
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp | sortBy    |
      | @c6060     | 256        | int    | brand      | blowfish | quickview    | priceDesc |

    @c6061
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6061     | 257        | uk     | bootLength | ankle  | quickview    | priceDesc |

    @c6062
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6062     | 258        | us     | bootLength | ankle  | quickview    | priceDesc |

    @c6063
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6063     | 259        | fr     | bootLength | ankle  | quickview    | priceDesc |

    @c6064
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6064     | 260        | fr-en  | bootLength | ankle  | quickview    | priceDesc |

    @c6065
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6065     | 261        | nl     | bootLength | ankle  | quickview    | priceDesc |

    @c6066
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6066     | 262        | nl-en  | bootLength | ankle  | quickview    | priceDesc |

    @c6067
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6067     | 263        | ie     | bootLength | ankle  | quickview    | priceDesc |

    @c6068
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6068     | 264        | eu     | bootLength | ankle  | quickview    | priceDesc |

    @c6069
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6069     | 265        | int    | bootLength | ankle  | quickview    | priceDesc |

    @c6070
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6070     | 266        | uk     | heel       | flats  | quickview    | priceDesc |

    @c6071
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6071     | 267        | us     | heel       | flats  | quickview    | priceDesc |

    @c6072
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6072     | 268        | de     | heel       | flats  | quickview    | priceDesc |

    @c6073
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6073     | 269        | de-en  | heel       | flats  | quickview    | priceDesc |

    @c6074
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6074     | 270        | fr     | heel       | flats  | quickview    | priceDesc |

    @c6075
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6075     | 271        | fr-en  | heel       | flats  | quickview    | priceDesc |

    @c6076
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6076     | 272        | nl     | heel       | flats  | quickview    | priceDesc |

    @c6077
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6077     | 273        | nl-en  | heel       | flats  | quickview    | priceDesc |

    @c6078
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6078     | 274        | ie     | heel       | flats  | quickview    | priceDesc |

    @c6079
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6079     | 275        | eu     | heel       | flats  | quickview    | priceDesc |

    @c6080
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6080     | 276        | int    | heel       | flats  | quickview    | priceDesc |

    @c6081
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6081     | 277        | uk     | legShape   | bootCut | quickview    | priceDesc |

    @c6082
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6082     | 278        | us     | legShape   | bootCut | quickview    | priceDesc |

    @c6083
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6083     | 279        | de     | legShape   | bootCut | quickview    | priceDesc |

    @c6084
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6084     | 280        | de-en  | legShape   | bootCut | quickview    | priceDesc |

    @c6085
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6085     | 281        | fr     | legShape   | bootCut | quickview    | priceDesc |

    @c6086
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6086     | 282        | fr-en  | legShape   | bootCut | quickview    | priceDesc |

    @c6087
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6087     | 283        | nl     | legShape   | bootCut | quickview    | priceDesc |

    @c6088
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6088     | 284        | nl-en  | legShape   | bootCut | quickview    | priceDesc |

    @c6089
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6089     | 285        | ie     | legShape   | bootCut | quickview    | priceDesc |

    @c6090
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6090     | 286        | eu     | legShape   | bootCut | quickview    | priceDesc |

    @c6091
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp | sortBy    |
      | @c6091     | 287        | int    | legShape   | bootCut | quickview    | priceDesc |

    @c6092
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6092     | 288        | uk     | length     | maxi   | quickview    | priceDesc |

    @c6093
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6093     | 289        | us     | length     | maxi   | quickview    | priceDesc |

    @c6094
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6094     | 290        | de     | length     | maxi   | quickview    | priceDesc |

    @c6095
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6095     | 291        | de-en  | length     | maxi   | quickview    | priceDesc |

    @c6096
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6096     | 292        | fr     | length     | maxi   | quickview    | priceDesc |

    @c6097
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6097     | 293        | fr-en  | length     | maxi   | quickview    | priceDesc |

    @c6098
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6098     | 294        | nl     | length     | maxi   | quickview    | priceDesc |

    @c6099
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6099     | 295        | nl-en  | length     | maxi   | quickview    | priceDesc |

    @c6100
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6100     | 296        | ie     | length     | maxi   | quickview    | priceDesc |

    @c6101
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6101     | 297        | eu     | length     | maxi   | quickview    | priceDesc |

    @c6102
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6102     | 298        | int    | length     | maxi   | quickview    | priceDesc |

    @c6103
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6103     | 299        | uk     | majorityFibre | cotton | quickview    | priceDesc |

    @c6104
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6104     | 300        | us     | majorityFibre | cotton | quickview    | priceDesc |

    @c6105
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6105     | 301        | de     | majorityFibre | cotton | quickview    | priceDesc |

    @c6106
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6106     | 302        | de-en  | majorityFibre | cotton | quickview    | priceDesc |

    @c6107
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6107     | 303        | fr     | majorityFibre | cotton | quickview    | priceDesc |

    @c6108
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6108     | 304        | fr-en  | majorityFibre | cotton | quickview    | priceDesc |

    @c6109
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6109     | 305        | nl     | majorityFibre | cotton | quickview    | priceDesc |

    @c6110
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6110     | 306        | nl-en  | majorityFibre | cotton | quickview    | priceDesc |

    @c6111
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6111     | 307        | ie     | majorityFibre | cotton | quickview    | priceDesc |

    @c6112
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6112     | 308        | eu     | majorityFibre | cotton | quickview    | priceDesc |

    @c6113
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp | sortBy    |
      | @c6113     | 309        | int    | majorityFibre | cotton | quickview    | priceDesc |

    @c6114
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6114     | 310        | uk     | rise       | high   | quickview    | priceDesc |

    @c6115
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6115     | 311        | us     | rise       | high   | quickview    | priceDesc |

    @c6116
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6116     | 312        | de     | rise       | high   | quickview    | priceDesc |

    @c6117
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6117     | 313        | de-en  | rise       | high   | quickview    | priceDesc |

    @c6118
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6118     | 314        | fr     | rise       | high   | quickview    | priceDesc |

    @c6119
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6119     | 315        | fr-en  | rise       | high   | quickview    | priceDesc |

    @c6120
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6120     | 316        | nl     | rise       | high   | quickview    | priceDesc |

    @c6121
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6121     | 317        | nl-en  | rise       | high   | quickview    | priceDesc |

    @c6122
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6122     | 318        | ie     | rise       | high   | quickview    | priceDesc |

    @c6123
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6123     | 319        | eu     | rise       | high   | quickview    | priceDesc |

    @c6124
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp | sortBy    |
      | @c6124     | 320        | int    | rise       | high   | quickview    | priceDesc |