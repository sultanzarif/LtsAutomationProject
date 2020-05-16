@rundaily @product
Feature: The product is filtered on product list page
  As a guest customer
  I want to be able to filter products
  So that I can select filter and list products on the product list page

  Scenario Outline: "<scenarioId>" (Product_Filter_Send_Wishlist: "<testRailId>") Product is filtered on product list page and the locale "<locale>", after the filter menu "<filterMenu>" and filter "<filter>" are selected the product send to the wishlist
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User selects filter menu "<filterMenu>"
    And User selects filter "<filter>" "<locale>"
    Then The clear filters button should appear
    And User picks a specific product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    When User clicks add to wishlist button "<quickViewPdp>"
    And User closes the quickview popup
    And User clicks logo "<locale>"
    And User goes to wishlist page
    Then The product should be stored in my wishlist page

    @c4872
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4872     | 1          | uk     | dressSize  | 8      | quickview    |

    @c4873
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4873     | 2          | us     | dressSize  | 8      | quickview    |

    @c4874
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4874     | 3          | de     | dressSize  | 8      | quickview    |

    @c4875
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4875     | 4          | de-en  | dressSize  | 8      | quickview    |

    @c4876
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4876     | 5          | fr     | dressSize  | 8      | quickview    |

    @c4877
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4877     | 6          | fr-en  | dressSize  | 8      | quickview    |

    @c4878
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4878     | 7          | nl     | dressSize  | 8      | quickview    |

    @c4879
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4879     | 8          | nl-en  | dressSize  | 8      | quickview    |

    @c4880
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4880     | 9          | ie     | dressSize  | 8      | quickview    |

    @c4881
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4881     | 10         | eu     | dressSize  | 8      | quickview    |

    @c4882
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4882     | 11         | au     | dressSize  | 8      | quickview    |

    @c4883
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4883     | 12         | nz     | dressSize  | 8      | quickview    |

    @c4884
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4884     | 13         | int    | dressSize  | 8      | quickview    |

    @c4885
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4885     | 14         | uk     | legLength  | 34     | quickview    |

    @c4886
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4886     | 15         | us     | legLength  | 34     | quickview    |

    @c4887
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4887     | 16         | de     | legLength  | 34     | quickview    |

    @c4888
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4888     | 17         | de-en  | legLength  | 34     | quickview    |

    @c4889
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4889     | 18         | fr     | legLength  | 34     | quickview    |

    @c4890
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4890     | 19         | fr-en  | legLength  | 34     | quickview    |

    @c4891
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4891     | 20         | nl     | legLength  | 34     | quickview    |

    @c4892
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4892     | 21         | nl-en  | legLength  | 34     | quickview    |

    @c4893
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4893     | 22         | ie     | legLength  | 34     | quickview    |

    @c4894
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4894     | 23         | eu     | legLength  | 34     | quickview    |

    @c4895
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4895     | 24         | au     | legLength  | 34     | quickview    |

    @c4896
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4896     | 25         | nz     | legLength  | 34     | quickview    |

    @c4897
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4897     | 26         | int    | legLength  | 34     | quickview    |

    @c4898
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4898     | 27         | uk     | shoeSize   | 7      | quickview    |

    @c4899
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4899     | 28         | us     | shoeSize   | 7      | quickview    |

    @c4900
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4900     | 29         | de     | shoeSize   | 7      | quickview    |

    @c4901
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4901     | 30         | de-en  | shoeSize   | 7      | quickview    |

    @c4902
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4902     | 31         | fr     | shoeSize   | 7      | quickview    |

    @c4903
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4903     | 32         | fr-en  | shoeSize   | 7      | quickview    |

    @c4904
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4904     | 33         | nl     | shoeSize   | 7      | quickview    |

    @c4905
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4905     | 34         | nl-en  | shoeSize   | 7      | quickview    |

    @c4906
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4906     | 35         | ie     | shoeSize   | 7      | quickview    |

    @c4907
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4907     | 36         | eu     | shoeSize   | 7      | quickview    |

    @c4908
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4908     | 37         | au     | shoeSize   | 7      | quickview    |

    @c4909
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4909     | 38         | nz     | shoeSize   | 7      | quickview    |

    @c4910
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4910     | 39         | int    | shoeSize   | 7      | quickview    |

    @c4911
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4911     | 40         | uk     | department | accessories | quickview    |

    @c4912
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4912     | 41         | us     | department | accessories | quickview    |

    @c4913
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4913     | 42         | de     | department | accessories | quickview    |

    @c4914
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4914     | 43         | de-en  | department | accessories | quickview    |

    @c4915
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4915     | 44         | fr     | department | accessories | quickview    |

    @c4916
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4916     | 45         | fr-en  | department | accessories | quickview    |

    @c4917
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4917     | 46         | nl     | department | accessories | quickview    |

    @c4918
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4918     | 47         | nl-en  | department | accessories | quickview    |

    @c4919
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4919     | 48         | ie     | department | accessories | quickview    |

    @c4920
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4920     | 49         | eu     | department | accessories | quickview    |

    @c4923
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c4923     | 50         | int    | department | accessories | quickview    |

    @c4924
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4924     | 51         | uk     | season     | current | quickview    |

    @c4925
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4925     | 52         | us     | season     | current | quickview    |

    @c4926
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4926     | 53         | de     | season     | current | quickview    |

    @c4927
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4927     | 54         | de-en  | season     | current | quickview    |

    @c4928
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4928     | 55         | fr     | season     | current | quickview    |

    @c4929
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4929     | 56         | fr-en  | season     | current | quickview    |

    @c4930
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4930     | 57         | nl     | season     | current | quickview    |

    @c4931
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4931     | 58         | nl-en  | season     | current | quickview    |

    @c4932
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4932     | 59         | ie     | season     | current | quickview    |

    @c4933
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4933     | 60         | eu     | season     | current | quickview    |

    @c4934
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4934     | 61         | au     | season     | current | quickview    |

    @c4935
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4935     | 62         | nz     | season     | current | quickview    |

    @c4936
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c4936     | 63         | int    | season     | current | quickview    |

    @c4937
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4937     | 64         | uk     | subDepartment | boot   | quickview    |

    @c4938
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4938     | 65         | us     | subDepartment | boot   | quickview    |

    @c4939
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4939     | 66         | de     | subDepartment | boot   | quickview    |

    @c4940
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4940     | 67         | de-en  | subDepartment | boot   | quickview    |

    @c4941
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4941     | 68         | fr     | subDepartment | boot   | quickview    |

    @c4942
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4942     | 69         | fr-en  | subDepartment | boot   | quickview    |

    @c4943
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4943     | 70         | nl     | subDepartment | boot   | quickview    |

    @c4944
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4944     | 71         | nl-en  | subDepartment | boot   | quickview    |

    @c4945
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4945     | 72         | ie     | subDepartment | boot   | quickview    |

    @c4946
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4946     | 73         | eu     | subDepartment | boot   | quickview    |

    @c4947
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4947     | 74         | au     | subDepartment | boot   | quickview    |

    @c4948
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4948     | 75         | nz     | subDepartment | boot   | quickview    |

    @c4949
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c4949     | 76         | int    | subDepartment | boot   | quickview    |

    @c4950
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4950     | 77         | uk     | color      | beige  | quickview    |

    @c4951
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4951     | 78         | us     | color      | beige  | quickview    |

    @c4952
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4952     | 79         | de     | color      | beige  | quickview    |

    @c4953
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4953     | 80         | de-en  | color      | beige  | quickview    |

    @c4954
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4954     | 81         | fr     | color      | beige  | quickview    |

    @c4955
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4955     | 82         | fr-en  | color      | beige  | quickview    |

    @c4956
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4956     | 83         | nl     | color      | beige  | quickview    |

    @c4957
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4957     | 84         | nl-en  | color      | beige  | quickview    |

    @c4958
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4958     | 85         | ie     | color      | beige  | quickview    |

    @c4959
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4959     | 86         | eu     | color      | beige  | quickview    |

    @c4960
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4960     | 87         | au     | color      | beige  | quickview    |

    @c4961
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4961     | 88         | nz     | color      | beige  | quickview    |

    @c4962
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4962     | 89         | int    | color      | beige  | quickview    |

    @c4963
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4963     | 90         | uk     | price      | £0-25  | quickview    |

    @c4964
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4964     | 91         | us     | price      | £0-25  | quickview    |

    @c4965
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4965     | 92         | de     | price      | £0-25  | quickview    |

    @c4966
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4966     | 93         | de-en  | price      | £0-25  | quickview    |

    @c4967
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4967     | 94         | fr     | price      | £0-25  | quickview    |

    @c4968
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4968     | 95         | fr-en  | price      | £0-25  | quickview    |

    @c4969
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4969     | 96         | nl     | price      | £0-25  | quickview    |

    @c4970
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4970     | 97         | nl-en  | price      | £0-25  | quickview    |

    @c4971
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4971     | 98         | ie     | price      | £0-25  | quickview    |

    @c4972
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4972     | 99         | eu     | price      | £0-25  | quickview    |

    @c4975
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4975     | 100        | int    | price      | £0-25  | quickview    |

    @c4976
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c4976     | 101        | uk     | brand      | blowfish | quickview    |

    @c4977
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c4977     | 102        | us     | brand      | blowfish | quickview    |

    @c4980
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c4980     | 103        | fr     | brand      | blowfish | quickview    |

    @c4981
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c4981     | 104        | fr-en  | brand      | blowfish | quickview    |

    @c4982
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c4982     | 105        | nl     | brand      | blowfish | quickview    |

    @c4983
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c4983     | 106        | nl-en  | brand      | blowfish | quickview    |

    @c4984
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c4984     | 107        | ie     | brand      | blowfish | quickview    |

    @c4985
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c4985     | 108        | eu     | brand      | blowfish | quickview    |

    @c4988
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c4988     | 109        | int    | brand      | blowfish | quickview    |

    @c4989
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4989     | 110        | uk     | bootLength | ankle  | quickview    |

    @c4990
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4990     | 111        | us     | bootLength | ankle  | quickview    |

    @c4993
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4993     | 112        | fr     | bootLength | ankle  | quickview    |

    @c4994
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4994     | 113        | fr-en  | bootLength | ankle  | quickview    |

    @c4995
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4995     | 114        | nl     | bootLength | ankle  | quickview    |

    @c4996
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4996     | 115        | nl-en  | bootLength | ankle  | quickview    |

    @c4997
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4997     | 116        | ie     | bootLength | ankle  | quickview    |

    @c4998
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c4998     | 117        | eu     | bootLength | ankle  | quickview    |

    @c5001
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5001     | 118        | int    | bootLength | ankle  | quickview    |

    @c5002
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5002     | 119        | uk     | heel       | flats  | quickview    |

    @c5003
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5003     | 120        | us     | heel       | flats  | quickview    |

    @c5004
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5004     | 121        | de     | heel       | flats  | quickview    |

    @c5005
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5005     | 122        | de-en  | heel       | flats  | quickview    |

    @c5006
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5006     | 123        | fr     | heel       | flats  | quickview    |

    @c5007
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5007     | 124        | fr-en  | heel       | flats  | quickview    |

    @c5008
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5008     | 125        | nl     | heel       | flats  | quickview    |

    @c5009
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5009     | 126        | nl-en  | heel       | flats  | quickview    |

    @c5010
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5010     | 127        | ie     | heel       | flats  | quickview    |

    @c5011
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5011     | 128        | eu     | heel       | flats  | quickview    |


    @c5014
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5014     | 129        | int    | heel       | flats  | quickview    |

    @c5015
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5015     | 130        | uk     | legShape   | bootCut | quickview    |

    @c5016
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5016     | 131        | us     | legShape   | bootCut | quickview    |

    @c5017
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5017     | 132        | de     | legShape   | bootCut | quickview    |

    @c5018
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5018     | 133        | de-en  | legShape   | bootCut | quickview    |

    @c5019
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5019     | 134        | fr     | legShape   | bootCut | quickview    |

    @c5020
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5020     | 135        | fr-en  | legShape   | bootCut | quickview    |

    @c5021
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5021     | 136        | nl     | legShape   | bootCut | quickview    |

    @c5022
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5022     | 137        | nl-en  | legShape   | bootCut | quickview    |

    @c5023
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5023     | 138        | ie     | legShape   | bootCut | quickview    |

    @c5024
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5024     | 139        | eu     | legShape   | bootCut | quickview    |


    @c5027
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5027     | 140        | int    | legShape   | bootCut | quickview    |

    @c5028
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5028     | 141        | uk     | length     | maxi   | quickview    |

    @c5029
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5029     | 142        | us     | length     | maxi   | quickview    |

    @c5030
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5030     | 143        | de     | length     | maxi   | quickview    |

    @c5031
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5031     | 144        | de-en  | length     | maxi   | quickview    |

    @c5032
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5032     | 145        | fr     | length     | maxi   | quickview    |

    @c5033
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5033     | 146        | fr-en  | length     | maxi   | quickview    |

    @c5034
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5034     | 147        | nl     | length     | maxi   | quickview    |

    @c5035
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5035     | 148        | nl-en  | length     | maxi   | quickview    |

    @c5036
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5036     | 149        | ie     | length     | maxi   | quickview    |

    @c5037
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5037     | 150        | eu     | length     | maxi   | quickview    |


    @c5040
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5040     | 151        | int    | length     | maxi   | quickview    |

    @c5047
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5047     | 152        | uk     | majorityFibre | cotton | quickview    |

    @c5048
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5048     | 153        | us     | majorityFibre | cotton | quickview    |

    @c5049
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5049     | 154        | de     | majorityFibre | cotton | quickview    |

    @c5050
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5050     | 155        | de-en  | majorityFibre | cotton | quickview    |

    @c5051
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5051     | 156        | fr     | majorityFibre | cotton | quickview    |

    @c5052
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5052     | 157        | fr-en  | majorityFibre | cotton | quickview    |

    @c5053
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5053     | 158        | nl     | majorityFibre | cotton | quickview    |

    @c5054
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5054     | 159        | nl-en  | majorityFibre | cotton | quickview    |

    @c5055
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5055     | 160        | ie     | majorityFibre | cotton | quickview    |

    @c5056
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5056     | 161        | eu     | majorityFibre | cotton | quickview    |

    @c5057
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5057     | 162        | int    | majorityFibre | cotton | quickview    |

    @c5058
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5058     | 163        | uk     | rise       | high   | quickview    |

    @c5059
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5059     | 164        | us     | rise       | high   | quickview    |

    @c5062
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5062     | 165        | fr     | rise       | high   | quickview    |

    @c5063
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5063     | 166        | fr-en  | rise       | high   | quickview    |

    @c5064
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5064     | 167        | nl     | rise       | high   | quickview    |

    @c5065
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5065     | 168        | nl-en  | rise       | high   | quickview    |

    @c5066
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5066     | 169        | ie     | rise       | high   | quickview    |

    @c5067
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5067     | 170        | eu     | rise       | high   | quickview    |

    @c5068
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5068     | 171        | int    | rise       | high   | quickview    |