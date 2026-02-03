# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/triparty.html

# Triparty

This component is sold as a separate license from TLM Collateral Management. Please see your TLM Collateral Management representative if a license is needed.

## Overview

The TLM® Triparty Collateral Positions solution extends the functionality of TLM Collateral Management by providing a platform to analyze the following:

  * Imported Triparty positions and their values.
  * Comparison of the imported position values and TLM Collateral Management calculated values.
  * Eligibility and Concentration breaches for imported Triparty positions.



**Note:** Triparty positions must be imported and run through the Triparty Eligibility and Concentration task within TLM Collateral Management.

## Search Criteria

All criteria must be met in order to return data. There are several ways to return Triparty data.

  * To return all breaches, click on the **Search** button.
  * To return a subset of agreements, enter all or part of the agreement name. The field is case _insensitive_ and an asterisk can be used as a wild card. Select the **Search** button to return the data.
  * To return breaches based on Concentration and/or Eligibility Breaches, click the _Has Breaches_ button. This is a drop down field where one, all or no values can be selected. This can also be used in conjunction with the other available search criteria fields.
  * Select the **_More Search Options_** button to further refine the search or do a specific search.
    * **Principal** \- enter partial or full principal name. The wildcard (*) can be used. The field is case insensitive.
    * **Counterparty** \- enter partial or full counterparty name. The wildcard (*) can be used. The field is case insensitive.
    * **Business Line** \- select from the drop down a predefined value of OTC, Repo, Securities Lending, Central Clearing, Client Clearing.
    * **Managing Location** \- enter partial or full managing location. The wildcard (*) can be used. The field is case insensitive.
    * **Agreement Type** \- enter partial or full agreement type. The wildcard (*) can be used. The field is case insensitive.
    * **Currency** \- enter partial or full currency. The wildcard (*) can be used. The field is case insensitive.



When search criteria has been entered under the **_More Search Option_** , the button will change color. Select the **Search** button to return breached data if any exist.

To clear the search criteria, select the **Clear Filters** button.

## Grid Features

The Triparty grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Results

After the search criteria is executed, a list of agreements with breached data will be displayed that have associated imported triparty positions along with other data including the difference between TLM Collateral Management positions and imported Triparty collateral position valuation.

Field | Description  
---|---  
Actions | Clicking on the magnifying glass will expand the bottom portion of the page to view the [details](<#details>) and [breaches](<#breaches>) of the triparty.  
Breaches | If a position has been breached, this field will have an **E** for eligibility breach and/or **C** for concentration breach.  
Agreement | The identifier to the Triparty result.  
Principal | The associated entity defined as a principal.  
Counterparty | The associated entity defined as a counterparty.  
Business Line | The business line of the agreement.  
Agreement Type | The type of the agreement.  
Prin Managing Location | The managing location of a principal on the agreement.  
Currency | The currency of the agreement.  
Held Diff | The value is the difference between the imported Triparty collateral position and the calculated value that is produced using relevant data from TLM Collateral Management which includes prices, FX rates and valuation percentages. This held value includes lock up and variation combined.  
Posted Diff | The values is the difference between the imported Triparty collateral position and the calculated value that is produced using relevant data from TLM Collateral Management which includes prices, FX rates and valuation percentages. This posted value includes lock up and variation combined.  
  
## Details

### Collateral Reconciliation

The Collateral Reconciliation gives a breakdown on the following:

  1. The TLM Collateral Management eligible collateral value. This value is broken out by Total VM Held, Total VM Posted, Total LU Held and Total LU Posted.
  2. The imported Triparty Collateral Value. This value is broken out by Total VM Held, Total VM Posted, Total LU Held and Total LU Posted.
  3. The difference between each eligible collateral value and the imported Triparty Collateral value. Negative values are shown in parenthesis.
  4. The currency of the agreement.



In the below screen shot, Triparty believes that $1600 in Variation Margin should be posted by Collateral Management. However, Collateral Management is calculating the imported triparty position as $40,005 using its market data. This results in a $38,404.90 difference.

![triparty_reconciliation.jpg](Images/triparty_reconciliation.jpg)

### Collateral Positions

Within the Collateral Position section is the list of the positions that the results and reconciliation is based upon.

The positions are grouped according to Instrument Reference, Held/Posted, and Margin Type.

Field | Description  
---|---  
Instrument Ref | Instrument defined on the position.  
Instrument Type | The name of the type of the instrument which can be debt, cash, equity or letter of credit.  
Instrument Description | The written representation of the instrument.  
Maturity Date | The date the instrument is due to mature.  
Issuer | The issuer of the instrument.  
Eligibility | The current eligibility of the instrument on the collateral movement as defined by the Basic, Advanced Eligibility and Ratings Based rules of the Agreement.  
Held/Posted | From the perspective of the Principal, the collateral position is Held or Posted.  
Instrument CCY | The currency of the instrument.  
Margin Type | The type of margin of the position. (Variation/Lock Up)  
Custodian | The associated entity defined as a custodian that can be used for the settlement instruction.  
Notional | The notional quantity of the instrument of the collateral position.  
Agreement Market Value | The TLM Collateral Management market value of the position in the currency of the agreement after valuation percentage has been applied.  
Triparty Agreement Market Value | The Triparty imported market value of the position in the currency of the agreement after valuation percentage has been applied.  
Pre-Haircut Market Value | The TLM Collateral Management market value before the haircut was applied.  
Triparty Pre-Haircut Market Value | The imported Triparty position market value before the haircut was applied.  
FX Rate | This is the rate used in TLM Collateral Management to convert the system currency to the agreement currency.  
Triparty FX Rate | This is the rate used in imported Triparty position to convert the system currency to the agreement currency.  
Valuation % | The Valuation Percentage from TLM Collateral Management that has been applied to the collateral position based on Basic Eligibility on the Agreement.  
Triparty Valuation % | The Valuation Percentage from imported Triparty position that has been applied to the collateral position based on Basic Eligibility on the Agreement.  
Price | The price of the instrument from TLM Collateral Management when the collateral movement was created.  
Triparty Price | The price of the instrument from the imported triparty position when the collateral movement was created.  
Price Date | The date of the price that was used in the calculation of the market value.  
  
## Breaches

When the Eligibility and Concentration task is run in TLM Collateral Management, the task calculates the breaches for all agreements with imported Triparty positions. The calculation applies all currently assigned eligibility rules (basic rules in the form of buckets associated to an agreement, advanced eligibility rules, ratings based eligibility rules and wrong way risk eligibility rules) together with concentration rules and calculates whether a breach has occurred on any Held or Posted imported Triparty collateral position.

The breaches are broken out by Eligibility and Concentration. At the end of each label for the section there will be a count of the total number of breaches.

For Eligibility Breaches which includes Basic, Advanced, Rating Based and Wrong Way Risk, the breaches will display the following fields:

  * Instrument
  * Description
  * Rule Name
  * Reason



For Concentration Breaches, the following fields are displayed:

  * Rule Name
  * Rule Description
  * Reason



Example:

![triparty_breaches.jpg](Images/triparty_breaches.jpg)
