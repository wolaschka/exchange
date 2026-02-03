
# Short Positions

## Overview

In general short positions occur when the amount of an instrument posted (or booked to be delivered to a Counterparty) is in excess of the available quantity that exists in the corresponding "source pool".

Within TLM® Collateral when collateral is posted to a Counterparty (or a movement has been booked to deliver to a Counterparty) it is possible to define that it has been sourced from a specific Asset Pool. If no Asset Pool source is specified, posted collateral is assumed to have been sourced from the Principal's held position.

(For the purpose of explanation in this topic, this "source" will be referred to as _Principal's Internal pool_.)

In general, short positions occur when the amount of an instrument posted (plus netted unsettled movements) is in excess of the **available quantity** that exists in the corresponding "source pool" for a given date.

An _"optimistic"_ methodology toward unsettled movements is undertaken. That is movements that are coming in and movements that are going out are included in any determinations of the available quantity.

Contrast this to a _"pessimistic"_ view which does not consider movements coming in.

Short positions can therefore occur within the system for each of these "source pool" levels on a settlement date, when any of the following conditions occur:

  * At the Principal "Internal Pool" level
    * Settled Posted Positions (minus Return to Principal Movements, plus Deliver to Counterparty Movements) exist for a quantity of an Instrument in excess of the Principal's Available Quantity in the Internal Pools.
    * Available Quantity Calculation for Internal Pool
  * At the Specific Asset Pool level
    * Deliver to Counterparty Collateral Movements (or Posted to Counterparty positions) exists for an Instrument that the Asset Pool does not have any available quantity of.
    * Deliver to Counterparty Collateral Movements (or Posted to Counterparty positions) exists for an Instrument in excess of the available quantity for that Instrument in the Asset Pool.
    * A negative balance for an Asset Pool Instrument has been imported.



In either case a short position will be created for the amount of the Instrument on the movement/position that is in excess of the actual comparable source position.

Short Positions are displayed at the level of the Principal Internal Pool and Specific Asset Pool.

The system provides functionality to allow users to identify any short positions that exist, or (based on unsettled collateral movements) will exist over the next 5 settlement days, and to take remedial action to correct these.

## Search Criteria

To identify short positions, filters can be applied to return a subset of specific data within the following parameters:

Field | Description  
---|---  
Principal | By default, all principals within the user's [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>) will be returned unless specific principals are selected from the drop-down.  
  
**Note:** Although all Principals are displayed and selectable, the population that is returned is still subject to [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>) filtering, and those that are defined, to [Monitor Short Positions](<entities_general.md#shortpositions>).  
  
This filter will be applied after pressing the **Search** button.

To clear the fields, click on the **Clear Filters** button.

## Grid Features

The short positions grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Grid View

Short positions are displayed, grouped by Instrument, Principal and Asset Pool in the Live Short Positions grid. The purpose of the grid is to identify any short positions which will exist or increase over those five dates.

By default, all the Principals from the user's [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>) which have been defined to [monitor short positions](<entities_general.md#shortpositions>) will be included in any returned results.

Field | Description  
---|---  
Inspect Icon | By clicking on the inspect icon, a new window will open up and allow the user to see the three different areas can be adjusted to fix the short position. See [Short Position Resolution](<#short-position-resolution>) on these three options.  
Instrument Ref | The Primary ID of the Instrument with the short position over the five dates displayed in the grid. By clicking on the [instrument](<instruments.md>), a new tab in the browser will appear. From here, the user can view or edit the instrument details.  
Principal | The entity associated with the Asset Pool.  
Asset Pool | A collection of assets (securities, cash) that is comprised of four data elements. (Asset Pool Name, Instrument Reference, Instrument Balance, Effective Date)  
Date | This date is the first date displayed and the earliest date still active anywhere in the world based on the dates and time zones settings on the Application Server.  
  
Example: A user logging into the application at 7am on the morning of 2nd March, with the Application Server being in London, would still see 1st March displayed in the first column as it is still 11pm in California which is 8 hours behind GMT.  
Date + 1 | These next four dates are business days, where a business day is any day which does not fall on the weekend, will contain what the short position will be on that specific day.  
Date + 2 |   
Date + 3 |   
Date + 4 |   
  
## Short Position Resolution

The user has three options to resolve the short position. By clicking on the search icon next to the instrument, the screen will display Instrument and Principal Name at the top of the screen. Then three tabs will be available and they are explained below.

### Current Demands

The _Current Demands_ tab identifies any existing Demands in the Workflow which could be used to help resolve the short position which has been selected in the Live Short Positions grid. That is, Demands where the Principal is asking for a return of collateral and the counterparty is currently holding the instrument for which there is a short position.

The Demands included in this tab are only those which are currently in one of the following Workflow states:

  * Sent - Demands
  * Agreed - Awaiting Collateral Details
  * Confirmed - To Be Approved

Field | Description  
---|---  
Agreement Name | An identifier to the margin call.  
Margin Type | This will be the value that is defined at the Agreement level. (Example: Lock Up or Variation)  
Workflow State | This is the state that the demand is currently sitting in under the workflow.  
Posted Settled | This column does not include any outstanding movements. If this amount meets the short position, then by actioning the demand it will solve the short position. By asking the counterparty to satisfy the Demand by returning the instrument in question and, if they agree, the short position would be resolved.  
Agreed Return Equivalent | This column is updated by the system once the user processing the Demand has entered an Agreed Amount. The figure shown here will be the notional amount of the instrument in question which needs to be returned in order to satisfy the Agreed Amount (taking into consideration current price and valuation percentage)  
Return Specified | If the Demand includes an Agreed Return and an Agreed Delivery amount, it is only the Agreed Return portion which is taken into account in calculating the Agreed Return Equivalent. There may also be situations where this field will be blank even though an Agreed Amount has been entered on the Demand. This will occur if the system cannot convert the Agreed Amount into a notional value.  
  
Example:  
\- the instrument has no price  
\- there is no FX rate available for any necessary conversion  
\- there is a valuation percentage of 0 for the relevant Eligible Instrument or Bucket  
\- the instrument is not eligible under the agreement to which it has been posted.  
-The Return Specified column has not yet been updated because at this stage no movements have not been entered. Once a movement has been entered this column will be updated. You will only continue to see the Demand on the Current Demands tab if the movements entered have not already satisfied the Agreed Amount.  
  
### Movements

This _Movements_ tab is for looking at any outstanding movements which could potentially be amended or cancelled to improve the short position. The Movements tab will display any movements, which are not in an end state and which could affect the short position. That is, Return to Principal or Deliver to Counterparty movements for the relevant instrument. The movements listed will also contain the movement margin type.

Field | Description  
---|---  
Actions | There is one option under the Actions column.  
  
| Action| Description  
---|---  
View Settlement Instructions| When this is selected, the details of the settlement instructions will be displayed below the current grid of positions and movements.  
  
When the data is returned, it will be read-only details for both Receiver and Sender for the movement selected.  
  
See [Settlement Instructions](<agreements_settleinstr.md#settlement-instructions>) for more information regarding Settlement Instructions.  
Agreement | An identifier to the movement.  
Margin Type | This will be the value that is defined at the Agreement level. (Example: Lock Up or Variation)  
Origin | This is the type of workflow that the movement was created.  
State | This is the state of the movement within the workflow.  
Direction | Movement direction of Deliver to Principal or Return to Counterparty.  
Notional | The notional quantity of the instrument of the collateral movement.  
Settlement Date | The day the movement is scheduled to settle.  
  
As well as the above selection criteria, any movement displayed in this screen also has to meet the below criteria:

  * For an Agreement that is covered by the user's [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>).
  * For a Principal Entity that has the [Monitor Short Positions](<entities_general.md#shortpositions>) flag enabled.



### Available for Substitution

The third resolution option would be to set up a substitution. 

If the user has no _Current Demands_ or _Movements_ which can address the problem, the user can set up a substitution to get a counterparty to return the instrument in question and deliver them something else instead.

The _Available For Substitution_ tab will show the user any agreements for which the instrument in question has a posted position.

Field | Description  
---|---  
![shortpositionsubstitute.jpg](Images/shortpositionsubstitute.jpg) | When this button is clicked, a popup screen will generate allowing the user to create a substitution. Information needed for the substitution will automatically be populated. The only field that will need to be populated is the _Reason for Substition_.  
Agreement Name | The unique name of the agreement that is referenced across the system.  
Margin Type | This will be the value that is defined at the Agreement level. (Example: Lock Up or Variation)  
Available Notional | The amount available to be substituted after taking into consideration any outstanding Return to Principal (that is, movements entered manually or via the workflow which are not in an end state).   
Date | Available notional that can be used for a substitution today.  
Date + 1 | These next four dates are business days, where a business day is any day which does not fall on the weekend, will contain what the available notional will be on that specific day.  
Date + 2 |   
Date + 3 |   
Date + 4 |   
  
#### Substitute

When ![shortpositionsubstitute.jpg](Images/shortpositionsubstitute.jpg) is clicked, a popup screen will generate allowing the user to request a substitution. 

The Notional to be substituted field is prepopulated with the _Available Notional_ amount. The user can reduce this notional but cannot increase it above the _Available Notional_ value. The validations performed are the same as if return component of the substitution from the Substitution screen was entered. For further information about completing the substitution of collateral form see [How to Create Return Movement(s)](<positions.md#create-substitutions>) for Collateral Substitutions.

**Note:** The margin type on the collateral movements created on the substitution will be for the same margin type as the agreement. Once the return component of the substitution is entered, the user must go to the Substitutions screen to enter the Substitute Movement. The substitution is then processed via the workflow as normal.

In addition, the item shown here are filtered to those:

  * Agreements that are covered by the user's [Agreement Scope](<understand_scope_responsibility.md#agreement-scope>).
  * Agreements for Principals that has the [Monitor Short Positions](<entities_general.md#shortpositions>) flag enabled.



**Considerations for those OTC Agreements that segregate lock up and variation requirements and collateral.**

The functionality above works identically for these types of agreements, with the minor distinction that these agreements explicitly define collateral positions as being of a margin type of variation or lock up. This has a consequence of separating collateral positions for these agreements by margin type. Although the short position number in the upper grid is indifferent to margin type, collateral positions are not. Therefore the user can potentially see two posted positions for the same agreement and security in the available for substitution tab.
