# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/interest_open_accruals.html

# Open Accruals

## Overview

When the Interest Calculation Task runs, the system calculates Open Interest Accruals, for those Agreements selected by the Interest Calculation Configuration.

Interest Accruals are calculated separately per currency, per cash position direction and per margin type.

That is, interest accruals are calculated per currency per Agreement for the following:

  1. Held Variation Margin Type cash positions.
  2. Posted Variation Margin Type cash positions.
  3. Held Lock Up Margin Type cash positions. (applicable only to an OTC Agreement that segregates lock up and variation collateral or has a Lock Up Only calculation type)
  4. Posted Lock Up Margin Type cash positions. (applicable only to an OTC Agreement that segregates lock up and variation collateral or has a Lock Up Only calculation type)



using the applicable cash collateral interest terms for the held/posted position and variation/lock up margin combination as defined on the Agreement.

If the Agreement is defined as netting interest payments, the calculated held and posted accruals are netted (added together) to form a single net accrual per currency per margin type.

If the Agreement is defined as gross interest the held and posted accruals per margin type remain separate.

Interest accruals are never netted across margin types.

This can be summarized as follows:

Agreement's Collateral Allocation Value | Agreement's Net Held and Posted Interest Payments Flag | Accruals created per currency  
---|---|---  
Segregate Lock Up and Variation | Net | 2  
| Gross | 4  
Lock Up Only Calculation | Net | 1  
| Gross | 2  
Auto Allocate | Net | 1  
| Gross | 2  
  
## Filtering

The Open Accruals can be filtered on the following fields:

Field | Description  
---|---  
Agreement Name | Enter all or part of the Agreement Name. * can be used as a wildcard.  
Business Lines | Select from the list of available Business Lines:  
OTC  
Repo  
Securities Lending  
Client Clearing  
Managing Location | Select from the list of available Principal Managing Locations.  
Cash Instrument | Select a particular currency from the drop-down or retain the default of All.  
Index | Select a specific Index from teh drop-down, or retain the default of All.  
Agreement Group | Agreement Groups that the user is assigned to appear in this drop-down.  
  
Select one to filter the results.  
Show Zero Accruals | By default, any accrual with a zero amount will be excluded from the results display.  
  
This will be Interest Accruals with a direction of No Balance and Accrual Not Calculated.  
  
Set the check box as enabled to include these in the results.  
  
The latest list of Open Accruals, which meet the search criteria, will be displayed once the ![Search](Images/open_accruals_search.jpg) button is clicked.

## Viewing

To view open accruals, click on the Open Accruals in the navigation pane.

Click on the **_Search_** button or specify a [filter](<#filtering>) then click on the **_Search_** button.

Field | Description  
---|---  
Agreement Name | The agreement for which the accrual is being calculated.  
Margin Type | The Margin Type for the Open Accrual.  
  
This is based on the margin type of the underlying cash collateral position.  
  
For those OTC agreements that segregate lock up and collateral agreements, collateral positions can be either Lock Up or Variation margin types.  
  
For those OTC agreements that have lock up only calculation, collateral positions can only be Lock Up.  
  
For all other agreements, collateral positions, and therefore open accruals, are always for margin type Variation.  
Direction | Direction is defined as:  
  
**Due to Principal** \- when the accrual has been calculated on a collateral position and resulted in Interest owed to the Principal. Typically this is when there has been a Posted Collateral Position. Interest Accrued amounts for this direction as shown in the system with positive signage.  
  
**Due to Counterparty** \- when the accrual has been calculated on a collateral position and resulted in Interest owed to the Counterparty. Typically this is when there has been a Held Collateral Position. Accrued amounts for this direction as shown in the system with negative signage.  
  
**No Balance** \- where there are no cash positions for the period, and therefore no accruals have been generated. **Note:** These will be hidden unless the Show Zero Accruals check box is selected.  
  
**Accrual Not Calculated** \- these are generated when the cash interest terms have been set with a calculation type of Do Not Calculate Accrual. The amount will be zero.  
  
**Note:** These will be hidden unless the Show Zero Accruals check box is selected.  
Preference | The defined preference for processing interest payments as specified in the agreement.  
Ccy | The Currency of the accrued interest.  
Accrued Interest | The interest accrual calculated from the Period Start Date to the date the Interest Calculation Task was run.  
  
When the direction is Due to Counterparty, the figure will be shown with negative signage; conversely, positive signage when due to Principal.  
Principal | The Principal for the Agreement.  
Counterparty | The Counterparty for the Agreement  
Held Period Start | The start of the current Interest Period for accruals calculated from held cash positions.  
  
This is calculated as being the next calendar date after the previous Period End Date.  
  
If the Agreement is defined with gross interest payments, and the accrual is calculated on posted collateral positions, this field will be blank.  
  
This is always populated when the agreement is defined as netting interest payments.  
Posted Period Start | The start of the current Interest Period for accruals calculated from posted cash positions.  
  
This is calculated as being the next calendar date after the previous Period End Date.  
  
If the Agreement is defined with gross interest payments, and the accrual is calculated on held collateral positions, this field will be blank.  
  
This is always populated when the agreement is defined as netting interest payments.  
Period End | The Interest Period End date as defined on the agreement.  
Held Index | The Index used to calculate the Interest accrual on held cash positions.  
  
This is defined under the Applies to Held (or both) cash collateral interest terms record for the agreement.  
  
If the Agreement is defined with gross interest payments, and the accrual has been calculated on posted collateral positions, this field will be blank.  
Posted Index | The Index used to calculate the Interest accrual on posted cash positions.  
  
This is defined under the Applies to Posted (or both) cash collateral interest terms record for the agreement.  
  
If the Agreement is defined with gross interest payments, and the accrual has been calculated on held collateral positions, this field will be blank.  
Calculated Date Time | The Date and time that the Open accrual was last calculated.  
Agreement Group | Associated Agreement Group if the Agreement is covered.  
  
## Create Payment

In the normal course of events, Interest Payments are generated when an Interest Period End date has been reached or exceeded and the Interest Calculation task has been run for a configuration with the flag for Generate Interest Payments enabled.

The system provides the flexibility to generate an Interest Payment for a particular agreement and currency for the period accrued to date, despite the fact that the Interest Period End date has not yet been reached. For example, generating an Interest Payment mid month when the agreement stipulates that payments are made at the end of the month.

Creating a payment is known as an Ad-Hoc payments. There are some rules regarding generating Ad Hoc Payments:

  * Ad Hoc Payments can only be generated for current open accruals.
  * An Ad Hoc Payment cannot be generated where a previous payment exists for the same Agreement and Currency and Margin type in a non completed state.
  * The End Date for the Ad Hoc Payment cannot be after the current close of business date.
  * The End Date for the Ad Hoc Payment cannot be equal to or earlier than the last Period End Date - that is, it must be greater than or equal to the Period Start date for the current open accrual.
  * It is assumed that Ad Hoc Payments will be distributed, so irrespective of the Distribution Preference of the current open accrual, the Ad Hoc Payment will be created as a Distribution.
  * When an Ad Hoc payment is recalculated, the originally entered Payment End Date is not altered. If this is to be changed, the Ad Hoc payment will need to be cancelled and then re-create it.



To create Payment:

  1. Select the accrual by clicking the radial button next to the Agreement name.
  2. Click on the ![Create Payment](Images/create_payment_open_accruals.jpg) button.
  3. A popup screen will appear where the End Date can be adjusted. It is defaulted to Today -1 business Day.
  4. Click on the ![Create Payment](Images/create_payment_button.jpg) button to create the payment.



All Ad Hoc Interest Payments are created as distributions.

Open Accrual Direction | Agreement in Agreement Group? | Distribution Pref  
---|---|---  
Due to Principal | No | Roll In  
Due to Principal | No | Distribute  
Due to Counterparty | No | Roll In  
Due to Counterparty | No | Distribute  
Any | Yes | Any  
  
The Open accrual for the selected Ccy and Agreement selected is recalculated, and the Period Start Date is set to be one calendar date after the Period End Date entered.

Period End Date for the accrual is determined via the Period End Date specified in the Agreement.

The Ad-Hoc Interest Payments are treated identically to any other Interest Payments. See [Interest Distribution Workflow](<interest_workflow.md>) with the sole exception that it is possible to cancel an Ad-Hoc Payment, in case it was created in error.

There are several validations that are performed when a user tries to create an Ad-Hoc payment.

Ad-Hoc Payments cannot be created if an Open Interest Payment (in a non approved state) exists for the same Agreement and Currency. 

Today is determined based on the Date in the Timezone of Principal Managing Location on the Agreement. Please see [Understanding Dates and Times](<understand_date_times.md>) for more information on how this is derived.
