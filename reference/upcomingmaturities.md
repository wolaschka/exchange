
# Upcoming Maturities

## Overview

Debt Instruments that are provided as Collateral have a maturity or redemption date. The Maturity Date is when the principal amount of the bond is repaid to the Bond Holder. That is, the bond debt is repaid in cash, and the bond as a Debt Security no longer exists.

The re-payment of bond principal can have ramifications for Collateral Practitioners:

  * The cash from the bond's principal repayment may not be eligible under the Collateral Agreement.
  * It may not be desirable to have cash collateral positions for funding reasons.
  * There is operational overhead involved in transferring the bond redemption proceeds to a cash collateral account.



For these and other reasons, many Collateral Practitioners wish to know in advance that bonds in their collateral inventory, whether held or posted, are due to mature. They can then decide as to how best to action the situation.

The Inventory Management Module provides functionality to deal with upcoming instrument Maturities:

  * Bond positions in the collateral inventory that are due to mature can be identified.
  * [Substitutions](<#create-substitution>) can be created for the bond positions that are due to mature.



## Search Criteria

To identify upcoming maturity of debt instruments, filters can be applied to return a subset of specific data within the following parameters:

Field | Description  
---|---  
Principal | By default, all principals within the user's [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>) will be returned unless specific principals are selected from the drop-down. The selectable principals within the drop-down is based also based upon the user's [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>).  
From | The start date for the range to search in terms of of debt instrument maturity. This value will default to today's date.  
To | The end date for the range to search in terms of debt instrument maturity. By default, the value will be today's date plus 10 calendar days.  
  
This filter will be applied after pressing the **Search** button.

To clear the fields, click on the **Clear Filters** button.

## Grid Features

The upcoming maturities grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Grid View

The grid will populate with held and/or posted collateral positions per Agreement in bonds which match the above search criteria within the inclusive date range specified. By default, the grid contents will be sorted by:

  * Maturity Date (Ascending Order)
  * Instrument Reference
  * Agreement Name

Field Name | Comment  
---|---  
Agreement Name | The name of the Agreement with the collateral position.  
Principal | The Principal on the Collateral Agreement.  
Counterparty | The Counterparty to the Collateral Agreement.  
Held/Posted | Indicates which party holds the collateral position:  
  
**Held:** The Position is held by the Principal.  
  
**Posted:** The Position is held by the Counterparty.  
Margin Type | Indicates which margin requirement the collateral position is defined to be allocated toward.  
  
There are two possible values:  
  
**LockUp:** collateral positions of this type should only exist for OTC Agreements that separate Lock Up and variation requirements or OTC Lock Up Only Agreements.Where this is the case, collateral of this type is only ever allocated toward lock up margin requirements.  
  
If collateral positions for this margin type exist any other agreement type, they are treated are variation collateral for margin calculation purposes.  
  
**Variation:** for OTC agreements that don't segregate collateral positions, and for Repo and Securities Lending Agreements, collateral positions should always be for a Margin type of variation. Collateral for a margin type of variation is automatically allocated toward lock up requirements (if there are any) first, and then variation requirements.  
  
Where collateral of this margin type exists for OTC Agreements that separate Lock Up and variation requirements the collateral is only ever allocated toward variation requirements.  
  
**Note:** Collateral is segregated by margin type for purposes of calculating available notional above.  
Instrument Ref | The Primary ID of the Instrument with the upcoming maturity. By clicking on the [instrument](<instruments_debt.md#general>), a new tab in the browser will appear landing on the page with the instrument's details where the user can view or edit the details.  
Maturity Date | The Maturity Date for the Instrument.  
Settled Notional | This is the current settled position for the instrument for the Agreement.  
Available Notional | Available notional is a calculated control figure to prevent users entering collateral return movements in excess of what has been delivered. It is calculated by taking into consideration certain movements, and is delineated by margin type. That is, available notional will be calculated separately for collateral positions for margin type of lock up to margin type of variation. The two margin types are not commingled.  
  
It is calculated by taking into consideration certain movements:  
  
A **Held** settled position is adjusted to take into account Return to Counterparty movements.  
  
A **Posted** settled position is adjusted to take into account Return to Principal movements.  
  
The movements which are used in the adjustment are those which are not in an end state. (This would be movements entered via a workflow which are either "In Progress", "To Be Approved", "Rejected" or "InTransit" and manually entered movements which are either "To Be Approved" or "InTransit".)  
  
If there are no such movements, then available notional will be the same as notional.  
  
## Create Substitution

Some Collateral Practitioners elect to deal with upcoming maturities by substituting the affected bond(s) prior to maturity date. TLM® Collateral Management allows for substitutions to be created for positions in securities where a maturity is upcoming.

These substitutions can be created directly from the Inventory Management screen. If created from the Inventory Screen, the position data in the grid is used to populate the return leg of the Substitution.

This saves the operational effort and potential error of having to create and populate this manually.

**Procedure**

  1. To create a substitution, select the position by clicking the radial button next Agreement Name. The Substitute Position button will become enabled.
  2. The substitution of Collateral form will open, pre-populated for the substitution return movement with details taken from the highlighted position.
  3. Go to [Create Substitutions from in Positions](<positions.md#create-substitutions>) to see the available fields and complete the substitution.

**Note the following:**

     * Notional to be substituted is prepopulated with the Available Notional amount.
     * Reason for substitution is prepopulated with "Upcoming Maturity".
     * Settlement Date is defaulted as per the configured debt instrument offset for the system.
     * The collateral movements created by the substitution will be for the same Margin Type as the collateral position.

Any of the first three values can be amended if required, but will be subject to validation. It is not possible to amend the margin type on the collateral movements created by the substitution.

  4. Click **Save** to save the return movement for the Collateral Substitution.

  5. The Substitution is created, and placed in the _Substitutions Workflow - Pending Substitutions_ state, with the return collateral movement.

The Substitution can be [processed](<substitutions_workflow.md>) as a per any other substitution.

When the user attempts to save the substitution, a series of validations are performed by the system. These validations are identical to those performed if the user had manually created a substitution return collateral movements.



