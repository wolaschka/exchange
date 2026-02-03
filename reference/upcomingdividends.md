# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/upcomingdividends.html

# Upcoming Dividends

## Overview

A significant proportion of equity Instruments ("equities") that are provided as collateral to satisfy margin requirements pay a dividend at periodic times "Dividend Date" to the equity owner.

The establishment of whom the equity owner is for the purposes of paying the dividend on dividend date is determined on a date known as "Record date". Record date is a date prior to the dividend payment date. Whomever owns the equity at the close of trading on record date will receive the upcoming dividend payment on dividend date irrespective of who is actually holding the equity on that date.

The ex-date is the date on which the seller, and not the buyer, of an instrument will be entitled to a recently announced dividend. The ex-date is usually two business days before the record date.

The payment of the dividend can have ramifications for Collateral Practitioners:

  * The dividend payment may affect the value of collateral.
  * There are operational processes involved in processing the dividend.
  * There may be tax implications of being the equity holder at record date, ex-date or dividend date.



Many Collateral Practitioners therefore wish to know in advance that equities in their Collateral Inventory, whether held or posted, are due to pay dividends. They can then best decide how they wish to process the upcoming payment event.

The Inventory Management Module provides functionality provides functionality to deal with upcoming dividends:

  * Collateral Positions in Equities that are due to pay a dividend can be identified.
  * [Substitutions](<#create-substitution>) can be created for positions in those equities that are due to pay a dividend.



## Search Criteria

To identify upcoming dividends on Collateral Positions, filters can be applied to return a subset of specific data within the following parameters:

Field | Description  
---|---  
Principal | By default, all principals within the user's [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>) will be returned unless specific principals are selected from the drop-down. The selectable principals within the drop-down is based also based upon the user's [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>).  
Dividend Date | This is the date on which the debt instrument dividend is paid. If this is the date that should be included in the filter criteria, then click the radial button.  
Ex-Date | This is the date on which the seller, and not the buyer, of an instrument will be entitled to a recently announced dividend. If this is the date that should be included in the filter criteria, then click the radial button.  
From | The start date for the range to search in terms of either the Next Coupon or Ex-Dates. By default, the value will be today's date.  
To | The end date for the range to search in terms of either the Next Coupon or Ex-Dates. By default, the value will be today's date plus 10 calendar days.  
  
This filter will be applied after pressing the Search button.

To clear the fields, click on the Clear Filters button.

## Grid Features

The coupons grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Grid View

The grid will populate with held and/or posted Collateral Positions per Agreement in any equities which match the above search criteria within the inclusive date range specified.

By default the grid contents will be sorted by:

  * Next Dividend Date (Ascending Order)
  * Instrument Reference.
  * Agreement Name.



The following information is displayed in the grid by default:

Field Name | Comment  
---|---  
Agreement Name | The Agreement which has the collateral position.  
Principal | The Principal on the Collateral Agreement.  
Counterparty | The Counterparty to the Collateral Agreement.  
Held/Posted | Indicates which party holds the collateral position:  
  
**Held:** The Position is held by the **Principal**.  
  
**Posted:** The Position is held by the **Counterparty**.  
Margin Type | Indicates which margin requirement the collateral position is defined to be allocated toward.  
  
There are two possible values:  
  
**LockUp:** collateral positions of this type should only exist for [OTC Agreements that separate Lock Up and variation requirements](<agreements_general.md#collatallocation>) or [OTC Lock Up Only Agreements](<agreements_define.md#otc-lock-up-only>). Where this is the case, collateral of this type is only ever allocated toward lock up margin requirements.  
  
If collateral positions for this margin type exist any other agreement type, they are treated are variation collateral for margin calculation purposes.  
  
**Variation:** for OTC agreements that don't segregate collateral positions, and for Repo and Securities Lending Agreements, collateral positions should always be for a Margin type of variation. Collateral for a margin type of variation is automatically allocated toward lock up requirements (if there are any) first, and then variation requirements.  
  
Where collateral of this margin type exists for [OTC Agreements that separate Lock Up and variation requirements](<agreements_general.md#collatallocation>) the collateral is only ever allocated toward variation requirements.  
  
**Surplus** \- this margin type is only applicable to Client Clearing Agreements.  
  
**Guarantee** \- this margin type is only applicable to Central Clearing Agreements.  
  
**Note:** Collateral is segregated by margin type for purposes of calculating available notional above.  
Instrument Ref | The Primary ID of the Instrument with the upcoming dividend. By clicking on the [instrument](<instruments_debt.md#general>), a new tab in the browser will appear landing on the page with the instrument's details where the user can view or edit the details.  
Next Dividend Date | The Next dividend date for the Instrument.  
Ex-Date | The Ex-date defined on the equity instrument.  
Settled Notional | This is the current settled position for the instrument for the Agreement.  
Available Notional | Available notional is a calculated control figure to prevent users entering collateral return movements in excess of what has been delivered.  
  
It is calculated by taking into consideration certain movements, and is delineated by margin type. That is, available notional will be calculated separately for collateral positions for margin type of lock up to margin type of variation.  
  
The two margin types are not commingled.  
  
It is calculated by taking into consideration certain movements:  
  
A **Held** settled position is adjusted to take into account **Return to Counterparty** movements.  
  
A **Posted** settled position is adjusted to take into account **Return to Principal** movements.  
  
The movements which are used in the adjustment are those which are not in an end state. (This would be [movements entered via](<margin_calls_movements.md>) a Workflow which are either "In Progress", "To Be Approved", "Rejected" or " InTransit" and [manually entered movements](<movements.md#create-a-manual-movement>) which are either "To Be Approved" or "InTransit".)  
  
If there are no such movements, then available notional will be the same as notional.  
  
## Create Substitution

Some Collateral Practitioners may elect to deal with upcoming dividends by substituting the affected equities prior to the Record Date. TLM® Collateral Management allows for substitutions to be created for positions in securities where the dividend is upcoming.

The substitutions can be created directly from the Inventory Management screen. If they are created directly from the Inventory Screen, the position data in the grid is used to populate the return leg of the Substitution.

This saves the operational effort and potential error of having to create and populate this manually.

**Procedure**

  1. To create a substitution, select the position by clicking the radial button next AgreementName. The **Substitute Position** button will become enabled.
  2. The substitution of Collateral form will open, prepopulated for the substitution return movement with details taken from the highlighted position.
  3. Go to [Create Substitutions from in Positions](<positions.md#create-substitutions>) to see the available fields and complete the substitution.

**Note the following:**

     * Notional to be substituted is prepopulated with the Available Notional amount.
     * Reason for substitution is prepopulated with "Upcoming Dividend."
     * Settlement Date is defaulted as per the configured equity instrument offset for the system.
     * The collateral movements created by the substitution will be for the same Margin Type as the collateral position selected in step 2) 

Any of the first three values can be amended if required, but will be subject to validation. It is not possible to amend the margin type on the collateral movements created by the substitution.

  4. Click **Save** to save the return movement for the Collateral Substitution.

  5. The Substitution is created, and placed in the _Substitutions Workflow - Pending Substitutions_ state, with the return collateral movement saved.

The substitution, now created, can be processed as a per any other substitution.

When the user attempts to save the substitution, a series of validations are performed by the system. These validations are identical to those performed if the user had manually created a substitution return collateral movements.



