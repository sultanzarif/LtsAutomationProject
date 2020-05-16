@rundaily @product
Feature: The product is filtered on product list page
  As a guest customer
  I want to be able to filter products
  So that I can select filter and list products on the product list page

  Scenario Outline: "<scenarioId>" (Product_Filter_Send_Shopping_Bag: "<testRailId>") Product is filtered on product list page and the locale "<locale>", after the filter menu "<filterMenu>" and filter "<filter>" are selected the product send to the shopping bag
    Given User navigates to the home website "<locale>"
    And User changes the site to the locale "<locale>"
    When User hovers over the category menu link
    And User clicks category page link "<locale>"
    And User selects filter menu "<filterMenu>"
    And User selects filter "<filter>" "<locale>"
    Then The clear filters button should appear
    And User picks a specific product from "<quickViewPdp>"
    And User picks a random size from "<quickViewPdp>"
    When User clicks add to bag button "<quickViewPdp>"
    And User clicks shopping bag checkout button
    And User clicks logo "<locale>"
    And User clicks the shopping bag icon
    Then The product should be stored in the shopping bag page

    @c5086
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5086     | 1          | uk     | dressSize  | 8      | quickview    |

    @c5087
    Examples:
  | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5087     | 2          | us     | dressSize  | 8      | quickview    |

    @c5088
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5088     | 3          | de     | dressSize  | 8      | quickview    |

    @c5089
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5089     | 4          | de-en  | dressSize  | 8      | quickview    |

    @c5090
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5090     | 5          | fr     | dressSize  | 8      | quickview    |

    @c5091
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5091     | 6          | fr-en  | dressSize  | 8      | quickview    |

    @c5092
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5092     | 7          | nl     | dressSize  | 8      | quickview    |

    @c5093
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5093     | 8          | nl-en  | dressSize  | 8      | quickview    |

    @c5094
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5094     | 9          | ie     | dressSize  | 8      | quickview    |

    @c5095
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5095     | 10         | eu     | dressSize  | 8      | quickview    |

    @c5096
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5096     | 11         | au     | dressSize  | 8      | quickview    |

    @c5097
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5097     | 12         | nz     | dressSize  | 8      | quickview    |

    @c5098
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5098     | 13         | int    | dressSize  | 8      | quickview    |

    @c5099
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5099     | 14         | uk     | legLength  | 34     | quickview    |

    @c5100
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5100     | 15         | us     | legLength  | 34     | quickview    |

    @c5101
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5101     | 16         | de     | legLength  | 34     | quickview    |

    @c5102
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5102     | 17         | de-en  | legLength  | 34     | quickview    |

    @c5103
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5103     | 18         | fr     | legLength  | 34     | quickview    |

    @c5104
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5104     | 19         | fr-en  | legLength  | 34     | quickview    |

    @c5105
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5105     | 20         | nl     | legLength  | 34     | quickview    |

    @c5106
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5106     | 21         | nl-en  | legLength  | 34     | quickview    |

    @c5107
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5107     | 22         | ie     | legLength  | 34     | quickview    |

    @c5108
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5108     | 23         | eu     | legLength  | 34     | quickview    |

    @c5109
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5109     | 24         | au     | legLength  | 34     | quickview    |

    @c5110
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5110     | 25         | nz     | legLength  | 34     | quickview    |

    @c5111
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5111     | 26         | int    | legLength  | 34     | quickview    |

    @c5112
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5112     | 27         | uk     | shoeSize   | 7      | quickview    |

    @c5113
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5113     | 28         | us     | shoeSize   | 7      | quickview    |

    @c5114
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5114     | 29         | de     | shoeSize   | 7      | quickview    |

    @c5115
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5115     | 30         | de-en  | shoeSize   | 7      | quickview    |

    @c5116
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5116     | 31         | fr     | shoeSize   | 7      | quickview    |

    @c5117
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5117     | 32         | fr-en  | shoeSize   | 7      | quickview    |

    @c5118
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5118     | 33         | nl     | shoeSize   | 7      | quickview    |

    @c5119
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5119     | 34         | nl-en  | shoeSize   | 7      | quickview    |

    @c5120
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5120     | 35         | ie     | shoeSize   | 7      | quickview    |

    @c5121
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5121     | 36         | eu     | shoeSize   | 7      | quickview    |

    @c5122
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5122     | 37         | au     | shoeSize   | 7      | quickview    |

    @c5123
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5123     | 38         | nz     | shoeSize   | 7      | quickview    |

    @c5124
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5124     | 39         | int    | shoeSize   | 7      | quickview    |

    @c5125
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5125     | 40         | uk     | department | accessories | quickview    |

    @c5126
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5126     | 41         | us     | department | accessories | quickview    |

    @c5127
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5127     | 42         | de     | department | accessories | quickview    |

    @c5128
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5128     | 43         | de-en  | department | accessories | quickview    |

    @c5129
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5129     | 44         | fr     | department | accessories | quickview    |

    @c5130
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5130     | 45         | fr-en  | department | accessories | quickview    |

    @c5131
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5131     | 46         | nl     | department | accessories | quickview    |

    @c5132
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5132     | 47         | nl-en  | department | accessories | quickview    |

    @c5133
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5133     | 48         | ie     | department | accessories | quickview    |

    @c5134
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5134     | 49         | eu     | department | accessories | quickview    |

    @c5135
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter      | quickViewPdp |
      | @c5135     | 50         | int    | department | accessories | quickview    |

    @c5136
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5136     | 51         | uk     | season     | current | quickview    |

    @c5137
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5137     | 52         | us     | season     | current | quickview    |

    @c5138
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5138     | 53         | de     | season     | current | quickview    |

    @c5139
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5139     | 54         | de-en  | season     | current | quickview    |

    @c5140
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5140     | 55         | fr     | season     | current | quickview    |

    @c5141
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5141     | 56         | fr-en  | season     | current | quickview    |

    @c5142
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5142     | 57         | nl     | season     | current | quickview    |

    @c5143
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5143     | 58         | nl-en  | season     | current | quickview    |

    @c5144
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5144     | 59         | ie     | season     | current | quickview    |

    @c5145
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5145     | 60         | eu     | season     | current | quickview    |

    @c5146
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5146     | 61         | au     | season     | current | quickview    |

    @c5147
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5147     | 62         | nz     | season     | current | quickview    |

    @c5148
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5148     | 63         | int    | season     | current | quickview    |

    @c5149
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5149     | 64         | uk     | subDepartment | boot   | quickview    |

    @c5150
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5150     | 65         | us     | subDepartment | boot   | quickview    |

    @c5151
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5151     | 66         | de     | subDepartment | boot   | quickview    |

    @c5152
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5152     | 67         | de-en  | subDepartment | boot   | quickview    |

    @c5153
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5153     | 68         | fr     | subDepartment | boot   | quickview    |

    @c5154
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5154     | 69         | fr-en  | subDepartment | boot   | quickview    |

    @c5155
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5155     | 70         | nl     | subDepartment | boot   | quickview    |

    @c5156
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5156     | 71         | nl-en  | subDepartment | boot   | quickview    |

    @c5157
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5157     | 72         | ie     | subDepartment | boot   | quickview    |

    @c5158
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5158     | 73         | eu     | subDepartment | boot   | quickview    |

    @c5159
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5159     | 74         | au     | subDepartment | boot   | quickview    |

    @c5160
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5160     | 75         | nz     | subDepartment | boot   | quickview    |

    @c5161
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5161     | 76         | int    | subDepartment | boot   | quickview    |

    @c5162
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5162     | 77         | uk     | color      | beige  | quickview    |

    @c5163
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5163     | 78         | us     | color      | beige  | quickview    |

    @c5164
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5164     | 79         | de     | color      | beige  | quickview    |

    @c5165
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5165     | 80         | de-en  | color      | beige  | quickview    |

    @c5166
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5166     | 81         | fr     | color      | beige  | quickview    |

    @c5167
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5167     | 82         | fr-en  | color      | beige  | quickview    |

    @c5168
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5168     | 83         | nl     | color      | beige  | quickview    |

    @c5169
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5169     | 84         | nl-en  | color      | beige  | quickview    |

    @c5170
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5170     | 85         | ie     | color      | beige  | quickview    |

    @c5171
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5171     | 86         | eu     | color      | beige  | quickview    |

    @c5172
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5172     | 87         | au     | color      | beige  | quickview    |

    @c5173
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5173     | 88         | nz     | color      | beige  | quickview    |

    @c5174
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5174     | 89         | int    | color      | beige  | quickview    |

    @c5175
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5175     | 90         | uk     | price      | £0-25  | quickview    |

    @c5176
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5176     | 91         | us     | price      | £0-25  | quickview    |

    @c5177
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5177     | 92         | de     | price      | £0-25  | quickview    |

    @c5178
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5178     | 93         | de-en  | price      | £0-25  | quickview    |

    @c5179
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5179     | 94         | fr     | price      | £0-25  | quickview    |

    @c5180
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5180     | 95         | fr-en  | price      | £0-25  | quickview    |

    @c5181
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5181     | 96         | nl     | price      | £0-25  | quickview    |

    @c5182
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5182     | 97         | nl-en  | price      | £0-25  | quickview    |

    @c5183
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5183     | 98         | ie     | price      | £0-25  | quickview    |

    @c5184
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5184     | 99         | eu     | price      | £0-25  | quickview    |

    @c5185
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5185     | 100        | int    | price      | £0-25  | quickview    |

    @c5186
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c5186     | 101        | uk     | brand      | blowfish | quickview    |

    @c5187
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c5187     | 102        | us     | brand      | blowfish | quickview    |

    @c5188
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c5188     | 103        | fr     | brand      | blowfish | quickview    |

    @c5189
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c5189     | 104        | fr-en  | brand      | blowfish | quickview    |

    @c5190
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c5190     | 105        | nl     | brand      | blowfish | quickview    |

    @c5191
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c5191     | 106        | nl-en  | brand      | blowfish | quickview    |

    @c5192
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c5192     | 107        | ie     | brand      | blowfish | quickview    |

    @c5193
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c5193     | 108        | eu     | brand      | blowfish | quickview    |

    @c5194
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter   | quickViewPdp |
      | @c5194     | 109        | int    | brand      | blowfish | quickview    |

    @c5195
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5195     | 110        | uk     | bootLength | ankle  | quickview    |

    @c5196
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5196     | 111        | us     | bootLength | ankle  | quickview    |

    @c5197
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5197     | 112        | fr     | bootLength | ankle  | quickview    |

    @c5198
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5198     | 113        | fr-en  | bootLength | ankle  | quickview    |

    @c5199
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5199     | 114        | nl     | bootLength | ankle  | quickview    |

    @c5200
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5200     | 115        | nl-en  | bootLength | ankle  | quickview    |

    @c5201
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5201     | 116        | ie     | bootLength | ankle  | quickview    |

    @c5202
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5202     | 117        | eu     | bootLength | ankle  | quickview    |

    @c5203
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5203     | 118        | int    | bootLength | ankle  | quickview    |

    @c5204
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5204     | 119        | uk     | heel       | flats  | quickview    |

    @c5205
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5205     | 120        | us     | heel       | flats  | quickview    |

    @c5206
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5206     | 121        | de     | heel       | flats  | quickview    |

    @c5207
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5207     | 122        | de-en  | heel       | flats  | quickview    |

    @c5208
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5208     | 123        | fr     | heel       | flats  | quickview    |

    @c5209
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5209     | 124        | fr-en  | heel       | flats  | quickview    |

    @c5210
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5210     | 125        | nl     | heel       | flats  | quickview    |

    @c5211
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5211     | 126        | nl-en  | heel       | flats  | quickview    |

    @c5212
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5212     | 127        | ie     | heel       | flats  | quickview    |

    @c5213
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5213     | 128        | eu     | heel       | flats  | quickview    |


    @c5214
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5214     | 129        | int    | heel       | flats  | quickview    |

    @c5215
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5215     | 130        | uk     | legShape   | bootCut | quickview    |

    @c5216
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5216     | 131        | us     | legShape   | bootCut | quickview    |

    @c5217
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5217     | 132        | de     | legShape   | bootCut | quickview    |

    @c5218
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5218     | 133        | de-en  | legShape   | bootCut | quickview    |

    @c5219
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5219     | 134        | fr     | legShape   | bootCut | quickview    |

    @c5220
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5220     | 135        | fr-en  | legShape   | bootCut | quickview    |

    @c5221
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5221     | 136        | nl     | legShape   | bootCut | quickview    |

    @c5222
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5222     | 137        | nl-en  | legShape   | bootCut | quickview    |

    @c5223
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5223     | 138        | ie     | legShape   | bootCut | quickview    |

    @c5224
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5224     | 139        | eu     | legShape   | bootCut | quickview    |

    @c5225
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter  | quickViewPdp |
      | @c5225     | 140        | int    | legShape   | bootCut | quickview    |

    @c5226
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5226     | 141        | uk     | length     | maxi   | quickview    |

    @c5227
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5227     | 142        | us     | length     | maxi   | quickview    |

    @c5228
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5228     | 143        | de     | length     | maxi   | quickview    |

    @c5229
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5229     | 144        | de-en  | length     | maxi   | quickview    |

    @c5230
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5230     | 145        | fr     | length     | maxi   | quickview    |

    @c5231
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5231     | 146        | fr-en  | length     | maxi   | quickview    |

    @c5232
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5232     | 147        | nl     | length     | maxi   | quickview    |

    @c5233
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5233     | 148        | nl-en  | length     | maxi   | quickview    |

    @c5234
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5234     | 149        | ie     | length     | maxi   | quickview    |

    @c5235
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5235     | 150        | eu     | length     | maxi   | quickview    |


    @c5236
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5236     | 151        | int    | length     | maxi   | quickview    |

    @c5237
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5237     | 152        | uk     | majorityFibre | cotton | quickview    |

    @c5238
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5238     | 153        | us     | majorityFibre | cotton | quickview    |

    @c5239
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5239     | 154        | de     | majorityFibre | cotton | quickview    |

    @c5240
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5240     | 155        | de-en  | majorityFibre | cotton | quickview    |

    @c5241
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5241     | 156        | fr     | majorityFibre | cotton | quickview    |

    @c5242
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5242     | 157        | fr-en  | majorityFibre | cotton | quickview    |

    @c5243
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5243     | 158        | nl     | majorityFibre | cotton | quickview    |

    @c5244
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5244     | 159        | nl-en  | majorityFibre | cotton | quickview    |

    @c5245
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5245     | 160        | ie     | majorityFibre | cotton | quickview    |

    @c5246
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5246     | 161        | eu     | majorityFibre | cotton | quickview    |

    @c5247
    Examples:
      | testRailId | scenarioId | locale | filterMenu    | filter | quickViewPdp |
      | @c5247     | 162        | int    | majorityFibre | cotton | quickview    |

    @c5248
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5248     | 163        | uk     | rise       | high   | quickview    |

    @c5249
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5249     | 164        | us     | rise       | high   | quickview    |

    @c5252
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5252     | 165        | fr     | rise       | high   | quickview    |

    @c5253
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5253     | 166        | fr-en  | rise       | high   | quickview    |

    @c5254
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5254     | 167        | nl     | rise       | high   | quickview    |

    @c5255
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5255     | 168        | nl-en  | rise       | high   | quickview    |

    @c5256
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5256     | 169        | ie     | rise       | high   | quickview    |

    @c5257
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5257     | 170        | eu     | rise       | high   | quickview    |

    @c5258
    Examples:
      | testRailId | scenarioId | locale | filterMenu | filter | quickViewPdp |
      | @c5258     | 171        | int    | rise       | high   | quickview    |