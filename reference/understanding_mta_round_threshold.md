
# Understanding MTA, Rounding Increments, Threshold and Parties

## Overview

For OTC and Client Clearing Agreements, the system allows the definition of Margin Terms separately for the Principal and the Counterparty.

The Principal's terms are defined on the left of the form, while the Counterparty's are on the right.

![margintermsexample.jpg](Images/margintermsexample.jpg)

These terms are used in the Margin Calculation task to determine the Margin Calculation Result. While generally speaking, the margin terms that apply to a party are used to determine the collateral amounts that the same Party is required to provide, there is sometimes confusion as to which specific parties terms are employed in the calculation.

## Example 1

**Exposure is in Principal's favor. End Margin Calculation result is Deliver of collateral to the Principal**.

In this scenario, exposure is in the Principal's favor by USD 25,800. As exposure is in the Principal's favor, the calculation uses Counterparty's threshold (USD 25,000).

As the Counterparty will be required to provide collateral the calculation also uses Counterparty's Deliver MTA (USD 750) and Counterparty's Deliver Rounding Amount (USD 2000).

![MarginTermsExamples1.jpg](Images/MarginTermsExamples1.jpg)

## Example 2

**Exposure is in Principal's favor. End Margin Calculation result is a return of collateral to the Counterparty**.

Like scenario one, in this example, exposure is again in the Principal's favor which generates the same USD 2,000 requirement for collateral from the Counterparty. However, under this scenario the Principal is holding USD 50,000 collateral which generates a return to the Counterparty margin result.

The calculation therefore uses Counterparty's threshold (USD 25,000).

As the Principal will be required to return collateral the calculation also uses Principal's Return MTA (USD 250)and Principal's Return Rounding Amount (USD 2000).

![MarginTermsExamples2.jpg](Images/MarginTermsExamples2.jpg)

## Example 3

**Exposure is in Principal's favor. End Margin Calculation result is a both a return and deliver of collateral to the Principal**.

In this scenario, exposure is identical to the two previous examples, resulting in USD 2,000 requirement for collateral to be provided to the Principal. However, under this scenario, the Principal has posted collateral, which results in a requirement for the Counterparty to return the Principal's collateral, and also to deliver collateral to meet the USD 2,000 requirement.

![MarginTermsExamples3.jpg](Images/MarginTermsExamples3.jpg)

The calculation therefore uses Counterparty's threshold (USD 25,000).

As the Counterparty will be required to return and deliver collateral the calculation also uses Counterparty's Deliver MTA (USD 750) and Counterparty's Deliver Rounding Amount (USD 2000).

Note that there is no MTA nor Rounding Amount applied to the Full Return.

In summary, therefore:

  * Threshold applied is determined by exposure direction. If exposure is in favor of the Principal, it is the Counterparty Threshold that is used, and vice versa. Delivery/Return Rounding and Deliver/Return MTA values used are determined according to the party that is required to move collateral and the direction of the movement.
  * If the Principal is delivering or returning collateral, it is the Principal's Deliver or Return MTA and Rounding values that are used. Similarly, if the Counterparty will be delivering or returning collateral, it is the Counterparty's Deliver or Return MTA and Rounding values that are used.


