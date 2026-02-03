
# Margin Call Details

At the top of the screen, relevant information to the call is displayed for reference for the user.

  * Agreement
  * Principal Name
  * Counterparty Name
  * Margin Type
  * Call Amount
  * Movements
  * Workflow - State



Each Margin Call contains 5 tabs of detailed information. If a call is disputed, then it will have 6 tabs which will include [**Dispute Info**](<#dispute-info-tab>).

The tab information is listed below.

## Details Tab

The Margin Call Details tab provides a preview of the breakdown of the call. The details of the margin calculation are displayed in a read-only report. 

The details displayed in the report are driven by the [Calculation Type](<agreements_general.md#calctype>), [Lock Up Calculation Type](<agreements_general.md#lockupcalc>) and [Collateral Allocation Method](<agreements_general.md#collatallocation>).

In all cases, the top of the report displays the Calculation Type, the date and timestamp of the margin calculation (from the timezone perspective of the Principal Managing Location) and the margin call currency.

For Repo and Securities Lending agreements, the Internal or Agreement Margin Terms used can be seen on the Margin Calculation.

Collateral position and movement values that are displayed in these reports are calculated using the latest price and valuation percentage values as of the time when the margin calculation was run. Should price or valuation percentage be updated after the margin calculation has been run, the revised values will not be applied until the margin calculation is next run.

**Calculation Detail Examples**

[Examples](<margin_calls_ex_details_tab.md>) of the calculation details with different agreement setups.

## Counterparty Tab

The system provides functionality to record and store a Counterparty's calculation details.

This information can be invaluable in assisting users in understanding how a Counterparty has derived the amount of collateral they are calling for, or can agree to.

Additionally, this information can be very useful in understanding how a dispute is created.

Counterparty Calculation Data can be added to any current Margin Call that is not in a completed state.

The Principal information is populated upon opening the tab and is un-editable.

Although it is not mandatory to enter any Counterparty data, it is recommended to record as much information as possible to assist in any future inquiries regarding the Margin Call.

Numbers should be always entered as positives.

The corresponding **Favor Of** drop down field should be used to differentiate the parties. The field will become enabled once a number is entered into the Counterparty column on the Net Exposure, Additional Margin or Lock Up Margin fields.

Enter the following information obtained from the Counterparty:

  * Calculation of Net Exposure and whose favor it is in
  * Calculation of Variation Collateral held
  * Calculation of Lock Up Collateral held
  * Calculation of Variation Posted Collateral
  * Calculation of Lock Up Collateral Post
  * Calculation of Additional Margin Requirement and which Party it is due to
  * Calculation of Lock Up Margin Requirement and which Party it is due to
  * Calculation of Variation Demand amount
  * Calculation of Variation Antic Demand amount
  * Calculation of Lock Up Demand amount
  * Calculation of Lock Up Antic Demand Amount

**Note:** Not all of these fields are applicable to all margin calls. Certain fields are greyed out based on an Agreement's Margin Type. These results are stored at the Margin Calculation level and not at the individual margin requirement level. Therefore, if there is a variation call and a lock up call for an OTC Agreement, entering the figures on either call will store them against both.




Enter any additional explanatory comments in the General Comments field.

Click the **Submit** button to save the changes.

## Dispute Info Tab

When a margin call is disputed, whether partially or fully, this additional tab will become visible.

The Dispute Category and Dispute Comment will be displayed. The values can be edited then saved by clicking on the **Dispute** button.

**Note:** When a dispute is initiated, it is possible to record the details of the Counterparty's Margin Calculation. Although not mandatory to do so, it is recommended best practice to record as much information from the Counterparty's calculation as possible as this can further assist in validating the reasons for the dispute. Any details recorded for the Counterparty's Calculation can be further added or edited in later workflow states.

## Transition History Tab

Margin Calculation Results typically have a life cycle, progressing through the various states of the Workflow.

This tab will provide a historical progress of a Margin Calculation Result.

This tab is sorted by Transition Date (from the Perspective of the Principal Managing Location) by default and contains the following information for the Margin Calculation:

Field | Comments  
---|---  
From | The Workflow State that the Margin Calculation was in prior to the transition.  
To | The Workflow State that the Margin Calculation was transitioned to.  
Transition Date | The time and date of the transition (from the perspective of the Principal Managing Location) on the Agreement.  
Transitioned By | The user whom initiated the transition.  
Comment | Any comments associated with the transition - e.g. comments added when a waive was requested, or comments added when an approval was rejected.  
  
There may situations where an entry exists in the table, but the transitioned _from_ and _to_ values are identical. In these situations, it means that an item was updated in a Workflow state but did not actually leave that Workflow state when the update occurred.

## Positions Tab

When progressing Margin Calculation results through the Margin Workflows, users may often need to reference the detailed underlying information that constitutes the Margin Calculation Result.

Typically, this is to provide the Counterparty with more information supporting the Margin Call Notice, or to assist in clarifying the differing requirements on the Margin Calculation Result.

The settled and in-transit positions that were used when the margin calculation was generated can be viewed on the Positions tab.

To view this tab, select the _View Details_ icon which will bring the user to call details. Then select the _Positions_ tab.

When the **Positions** tab is selected, the user can see the following information:

  * **Total Held** \- Calculated as the (Market Value of Held positions in Settled Status + Market Value of Held In Transit Deliver to Prin positions) - (Market Value of Held In Transit Return to Cpty positions).
  * **Total Posted** \- Calculated as the (Market Value of Posted positions in Settled Status + Market Value of Posted In Transit Deliver to Cpty positions) - (Market Value of Held In Transit Return to Prin positions).
  * **Entered Returns** \- For Demands, this is calculated as the sum of the Market Value (Agmt Ccy) fields where Direction is Return to Principal. For Antic Demands, this is calculated as the sum of the Market Value (Agmt Ccy) fields where Direction is Return to Counterparty.
  * **Entered Delivers** \- For Demands, this is calculated as the sum of the Market Value (Agmt Ccy) fields where Direction is Deliver to Principal. For Antic Demands, this is calculated as the sum of the Market Value (Agmt Ccy) fields where Direction is Deliver to Counterparty.
  * **Entered Total** \- The sum of Entered returns and Entered Delivers.
  * **Remaining** \- Calculated as the (Agreed Amount - Market Value of movements)



The data for the positions that were used for the Margin Calculation and also the Live Positions and Movements can be viewed on their respective tab.

### Positions Used For Calculations

This tab lists collateral positions that existed on the agreement at the time the margin calculation was executed.

The positions are grouped by Settlement State, Position Type, [Asset Pool](<assetpools.md>), Margin Type and Instrument.

The following fields are displayed.

Field | Comments  
---|---  
Action | When the ![dotdotdot.jpg](Images/dotdotdot.jpg) icon is clicked, there is currently one option to be selected:  
  
| Action| Description  
---|---  
[View Instrument](<instruments.md>)| When this is selected, a new window will open up in the browser and will display the instrument details of the position that was selected.  
State | The settlement state of the position(s) and/or movement(s). Only the settled or in-transit position(s) and/or movement(s) are used in the calculation.  
Eligibility | The Eligibility of the position or collateral movement at the time of the Margin Calculation.  
Position | Held or Posted  
Instrument | The Primary ID of the Instrument.  
Description | The textual description for the Instrument.  
Instrument Type | The type of the Instrument.  
Issuer | Instrument Issuer  
Notional | The Notional on the Position or Collateral Movement.  
Ccy | The native currency of the Instrument.  
Price | The Dirty Price that was used in the calculation of Market Value.  
Price Source | The origin of the price.  
Price Quote | The Quote type of the dirty price, e.g. Mid, Bid, Offer.  
Price Date | The price date of the Dirty Price.  
Instrument FX Rate | The FX rate of the Instrument currency back to [system currency](<system_currency.md>).  
Instrument FX Rate Date | The Date of the rate used above.  
Agreement FX Rate | The FX rate of the Agreement currency back to [system currency](<system_currency.md>).  
Agreement FX Rate Date | The Date of the rate used above.  
Valuation % | The Valuation Percentage that has been applied to the collateral position of movement based on Basic Eligibility on the Agreement.  
Market Value (Agmt Ccy) | The Market Value of the position or collateral movement.  
  
Notional * Dirty Price * Valuation Percentage converted into Agreement Currency using Instrument FX rates and Agreement FX rates as necessary  
Market Value (Sys Ccy) | The Market Value of the Position or Movement.  
  
Notional * Dirty Price * Valuation Percentage converted into [system currency](<system_currency.md>) using Instrument FX rates.  
Bucket | The collateral bucket record on the Agreement Eligibility tab that the position of movement is covered by.  
Asset Pool | This is populated as follows:  
  
\- For _Deliver to Counterparty_ collateral movements/positions that used an Asset Pool Instrument Balance as the source of the movement  
\- For the corresponding _Return to Principal_ collateral movements, that are returning the instrument to the Asset Pool it was originally sourced from.  
  
In either case, the [Asset Pool Name](<assetpools.md>) which was the source from where the instrument was taken is listed.  
Tri-Party Custodian | Displays the Tri-Party Custodian that has been defined on the agreement for collateral movements of this margin type.  
  
It will be blank if no Tri-Party Custodian has been defined.  
Margin Type | For OTC Agreements, where Collateral Allocation is defined as Segregate Lock up and Variation, this value identifies whether the collateral position is allocated toward the Variation or LockUp margin requirement.  
  
For OTC Agreements, where Collateral Allocation is defined as Lock Up Only, this value identifies the collateral trade as allocated toward a Lock Up margin requirement only.  
  
For all other OTC Agreements, and for Repo and Securities Lending Business lines, the type value here is ignored for Margin Calculation purposes.  
  
### Live Positions and Movements

This tab gives the user the ability to view live positions which may differ than the value of positions that the margin call used in its calculation. The tab will also displays In-Transit movements.

**Concentration Status**

Just above the live positions and movements grid, are two fields that evaluates the collateral positions and movements involved in the margin calculation against concentration rules that apply to the Principal and the Counterparty.

The results of the evaluation are displayed next to appropriate labels, Held Concentration Status and Posted Concentration Status, via a dynamically updating button.

Should the collateral positions or movements not breach any rules for a Party the button will be disabled and display **_Passed_**.

If the collateral movements breach any concentration rules, **_Failed_** is displayed. Clicking on the button will display details of the rule breach.

The evaluation is conducted live, and therefore can change dynamically as movements are added.

**Live Positions and Movements Grid**

Below are the available fields in the grid to view the positions and movements.

Field | Comments  
---|---  
Actions | There are two option under the Actions column.  
  
| Action| Description  
---|---  
[Edit](<#edit-collateral-movement>)| Edit a collateral movement.  
[View Eligibility Breaches](<view_eligibility_breaches.md>)| Clicking on the magnifying glass will open a window below the positions and movements grid to view the [Eligibility Breaches](<view_eligibility_breaches.md>).  
[View Instrument](<instruments.md>)| When this is selected, a new window will open up in the browser and will display the instrument details of the position or movement that is was selected.| [View Settlement Instructions](<#view-settlement-instructions>)| When this is selected, the details of the settlement instructions will be displayed below the current grid of positions and movements.  
State | The settlement state of the collateral positions for the margin type for the agreement.  
  
Only movements and positions for the following settlement states are included:  
  
**In-Transit** \- Once the margin call to which the collateral movements are attached is transitioned to Confirmed Sent to Settlements Workflow state, the collateral movements are deemed "In Transit" and their market value is taken into consideration in Margin Calculations and will appear in the read only report and Margin Call Notices as In Transit collateral. Until this transition any movements entered will be in a settlement state of "To Be Approved" and will not be considered in margin calculations - the previously entered agreed amounts will be.  
  
There are four possible values for this state:  
  
\- In Transit Deliver to Prin.  
\- In Transit Return to Prin.  
\- In Transit Deliver to Cpty.  
\- In Transit Return to Cpty.  
  
**Settled** \- Collateral Movements are updated to a settled status by the Settle Movements task.  
The Settle Movements task can be configured to settle movements on or before Yesterday, or on or Before Today.  
Eligibility | Validation is performed to determine whether the collateral positions satisfies Basic, Advanced, Ratings Based, Wrong Way Risk eligibility rules as defined on the Agreement. If the position passes, a green check mark will appear. If it fails, a red x will appear.  
See [Eligibility and Concentration Breaches](<eligibility_and_concentration_breaches.md>) for more details.  
Position | The type of the position which will be either Held or Posted.  
Instrument | The Primary ID of the Instrument.  
Description | The textual description for the Instrument.  
Instrument Type | The type of the Instrument.  
Maturity Date | Maturity Date of the Instrument (applicable to Debt Instruments only).  
Notional | The Notional on the Position or Collateral Movement.  
Ccy | The native currency of the Instrument.  
Price | The Dirty Price that was used in the calculation of Market Value.  
Valuation % | The Valuation Percentage that has been applied to the collateral position of movement based on Basic Eligibility on the Agreement.  
Settlement Date | The date that the movement  
Market Value (Agr Ccy) | The Market Value of the position or collateral movement. Notional * Dirty Price * Valuation Percentage converted into Agreement Currency using Instrument FX rates and Agreement FX rates as necessary.  
Market Value (Sys Ccy) | The Market Value of the Position or Movement. Notional * Dirty Price * Valuation Percentage converted into [system currency](<system_currency.md>) using Instrument FX rates.  
Bucket | The collateral bucket record on the Agreement Eligibility tab that the position of movement is covered by.  
Asset Pool | This is populated as follows:  
  
\- For Deliver to Counterparty collateral movements/positions that used an Asset Pool Instrument Balance as the source of the movement  
\- For the corresponding Return to Principal collateral movements, that are returning the instrument to the [Asset Pool](<assetpools.md>) it was originally sourced from.  
  
In either case, the Asset Pool Name which was the source from where the instrument was taken is listed.  
Created Date/Time | System applied time stamp of when the collateral movement was saved, in DD/MM/ YYYY HH:MM: SS format.  
  
#### Edit Collateral Movement

Collateral Movements on a Margin Call can only be edited when the movement is in either a _Rejected_ or _In Progress_ state.

That is, the Margin Call to which the Collateral Movements are attached, is in one of the following Margin Call Workflow States:

  * Demand Workflow - Agreed
  * Antic Demands Workflow - Agreed
  * Grouped Calls Workflow - Agreed



**Procedure**

  1. Select the position or movement that requires editing.
  2. Click the **Edit** button.
  3. The Edit Movement dialog box will open up.
  4. Make the required changes. The following fields can only be edited:
     1. Instrument Ref
     2. Asset Pool - Editable only on Deliver to Counterparty / Return to Principal Movements.
     3. Target dropdown and amount
     4. Receiving Instruction - see important note below.
     5. Sending Instruction - see important note below.
     6. Trade Date
     7. Settlement date
     8. Physical Settlement Indicator
  5. Click **Save** to commit the changes.
  6. The Entered Deliver/Return, the Entered Total and Remaining amounts will be updated accordingly.



**Note:**

  1. When collateral movements are uploaded for grouped workflow, the Physical Settlement indicator is set as on. It can be set as off here.
  2. When a movement is edited, the Receiving Instruction & Sending Instruction fields "reset", and the system will automatically populate these fields with the matching SSI records that have been set as default. (See Understanding SSI hierarchy, defaults and derivation for more details on how SSI's are matched to collateral movements.) What is important to consider is the following:
     * The Default SSI records may be different to those on the original collateral movement booking.
     * The default values for the Settlement Date field is derived from the settlement offset value of the selected Receiving InstructionSSI record. Should the Receiving Instruction SSI record alter, the Settlement Date default value will be refreshed.
     * Care should therefore be exercised when cancel / replacing a movement to ensure that the SSI's records selected are as intended. To assist, Booked Instructions section details the SSI record names previously recorded on the collateral movement.
  3. When the Collateral Movement is edited, the Price and Valuation fields will be taken from the current values for these in the system. These could be different from when the Collateral Movement was originally entered.
  4. The Movement type is updated to Margin Call when saved. This means that if editing a Collateral Movement that has been Uploaded, type will be changed from Margin Call Upload to Margin Call.
     * Collateral movements can only be edited that have not yet been sent to the settlements Workflow state. i.e. Collateral Movements can only edited from within either the Demand - Agreed Workflow State or Antic Demands Agreed State that are in an "In Progress" settlement state. In-Transit movements cannon be edited from this screen.
     * The revised details entered will be subject to collateral movement entry validation rules.
     * Where a collateral movement is for an OTC Agreement that separates Lock Up and Variation requirements or has a Lock Up Only Calculation type, it should be noted that the Margin Type of the Collateral Movement cannot be edited and will be the same as the Margin Type of the margin call requirement. See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) or [How to Define an OTC Lock Up Only Agreement](<agreements_define.md#otc-lock-up-only>) for more details.



For guidance on how to populate these fields, see [How to Create a Collateral Movement](<margin_calls_movements.md#create-movement\(s\)-on-a-margin-call>) for more details.

#### View Settlement Instructions

When the view Settlement Instructions is selected, the data is displayed below the _Live Positions and Movements tab_.

This is only available for movements that have the following:

  1. The movement is in the state of _In Progress_ , _Rejected_ , or _To be Approved_.
  2. The movement has a status of _In Transit_ or _Failed_.



When the data is returned, it will be read-only details for both Receiver and Sender for each movement.

See [Settlement Instructions](<agreements_settleinstr.md#settlement-instructions>) for more information regarding Settlement Instructions.

### Asset Allocations

Collateral that is shown in the Asset Allocation tab can be selected for allocation to meet the Agreed Delivery Amount requirement on an Antic Demand. Available to Allocate balances are calculated using an optimistic methodology and shown across a five settlement day range, beginning from Today (T) to four business days in the future (T+4). 

Items of available collateral shown here come from and are listed according to their "source". There are two main sources:

  1. Held Collateral positions received on Collateral Agreements which have been defined as rehypothecatable.
  2. Positive instrument balances on [Asset Pool(s)](<assetpools.md>) that have been associated to the Principal.



These two sources of available collateral are differentiated via the Asset Pool field in the form:

  * A blank Asset Pool field denotes that the collateral's source is from the rehypothecatable inventory.
  * Collateral balances that originate from an asset pool, are clearly denoted with the Asset Pool name in this field.



To assist the user, the available to allocate balance for an instruments default settlement offset date is indicated in **bold** type. This means that when you select an asset, the amount allocated is the balance shown in bold, and the settlement date applied will be the corresponding date that was shown in bold.

During the allocation process, the system will attempt to match the amount of the collateral selected to the Antic Demand Agreed Delivery Amount.

It is also possible to override the selected details, or remove a collateral position selected for allocation.

The purpose of this screen is to allow the user:

  * To see what rehypothecatable assets are available for allocation to satisfy the antic demand agreed amount.
  * To see what asset pool balances are available for allocation to satisfy the antic demand agreed amount.
  * To list the priority preference for how available assets should be used. (This requires Collateral Ladder functionality from TLM® Collateral Manager web application.)
  * To indicate the default settlement date offset for an available collateral balance.
  * To select a sufficient quantity of an available asset or series of assets to meet the agreed delivery amount.
  * To automatically create collateral movements based on the assets selected for allocation.



**Process for Allocating Assets**

  1. To see allocations available, click on **Asset Allocations** tab.
  2. Select the allocation by clicking the radial button on the left side of asset.
  3. The **Asset Allocation** will become enabled. Click the button.
  4. A pop-up movement screen will appear pre-populated. The user can create the movement or adjust the amount then create the movement.
  5. The movement that was just created can be viewed under the **Live Positions and Movements** tab.



See [Creating Allocated Movements](<margin_calls_movements.md#creating-allocated-movements>).

## Exposures Trades Tab

Within the margin call, the Exposure Trade tab displays the exposure trades used in the calculation but will also display the exposure differences over the last 3 business days.

**3 Day Exposures**

At the top of the tab is a section called **3 Day Exposure**. This section helps determine the validity of the margin call.

Displayed are the trade count, exposure details for the current margin calculation result, the last 2 days difference, and the last successful margin calculation results from the previous two business days. A business day is currently any non-weekend day from 12 midnight to 12 midnight based on the Principal Managing Locations timezone.

**Note:** The date and time stamp displayed in this section corresponds to the time that the Margin Calculation Configuration task was run (from the perspective of the Principal Managing Location). The date does **not** represent the close of business date to which the calculation relates.

The Last 2 Days Difference column shows the change in trade count and exposure between the last two business days.

**Exposure Differences**

This section gives the user information on the exposure difference and how it is attributable to certain classifications of trades.

In the Exposure Differences column, how much of the exposure difference is attributable to certain classifications of trades can be seen.

By clicking on the magnifying glass for the different trade classifications, the trades per that classification type are returned in the bottom grid in the [Margin Call Trades](<#margin-call-trades-tab>) tab and the [3 Day Difference](<#3-day-difference-tab>) tabs.

Field | Comment  
---|---  
Missing Trades | These are trades which existed yesterday but do not exist today and the Maturity Date is greater than today. "Today" is determined using the Date in the Principal Managing Location. That is, these are trades which are now missing from the portfolio but have not yet matured.  
Matured Trades | These are trades which existed yesterday but do not exist today and the Maturity Date is less than or equal to today. "Today" is determined using the Date in the Principal Managing Location. That is, these are trades which are missing from the portfolio and have matured.  
New (Trade Date)Trades | These are trades which did not exist yesterday but exist today, where the Trade Date is greater than or equal to the close of business date AND less than today. "Today" is determined using the Date in the Principal Managing Location. The close of business date is the previous non-weekend date. That is, these are trades which have appeared on the portfolio today and are new trades according to the trade date.  
New (Other) Trades | These are trades which did not exist yesterday but exist today where the Trade Date is less than the close of business date. "Today" is determined using the Date in the Principal Managing Location. That is, these are trades which have appeared on the portfolio today but are not new trades according to the trade date.  
Other | This is the exposure difference for all other trades which existed for the last two business days. The total of these classifications "All Trades"should equal the Exposure figure shown in the Last 2 Days Difference column above.  
All Trades | Summation of trades that fall into each of the classifications.  
  
The total of these classifications, **All Trades** , should equal the Exposure in the Last 2 Days Difference column.

In the **Total Trades** column, it shows how many trades fall into each of the classifications.

All of the information shown in this **3 Days Exposure and Exposure Differences** section is available after the [Margin Calculation Configuration](<task_margin_calc.md>) is run.

#### Margin Call Trades Tab

After selecting the trade classification, the trades in that classification will get returned in this tab for more detail.

**Note:** Trades in the _Missing_ or _Matured_ classification will not appear in this tab. They will only appear in the 3 Day Difference Tab.

Exposure Trades details are associated to a margin calculation result via the [Margin Calculation Analysis](<task_margincalc_analysis.md>) task.

Once associated to the Margin Calculation Result, they can be seen within the workflow.

Exposure trades are not permitted on any Central Clearing or Client Clearing Agreements that don't have a Margin Type of **Variation**. The option to view Exposure Trades on Margin Calculation Results for these Agreements is disabled.

**Procedure**

  1. Click on **All Trades** section in the Exposure Differences section.
  2. The section will be blank if the Margin Calculation Analysis task has not been run.
  3. The Exposure Trades are then shown in the grid.

The exposure trade fields that are displayed:

     * Trade Ref
     * Trade Type
     * Source Trade Type
     * Notional 1 Ccy
     * Notional 1
     * Notional 2 Ccy
     * Notional 2
     * Trade Date
     * Effective Date
     * Maturity Date
     * Exposure Ccy
     * Exposure Amount
     * Exposure Date
     * Exposure FX Rate
     * Exposure Amount (Agmt Ccy)
     * Quantity
     * Strike Price
     * Spread
     * Buy/Sell
     * Put/Call
     * Option Type
     * Underlying
     * Underlying Instr Identifier
     * Lock Up Method
     * Lock Up
     * Lock Up Ccy
     * Lock Up (Agmt Ccy)
     * Lock Up Due To
     * Additional Method
     * Additional
     * Additional Ccy
     * Additional (Agmt Ccy)
     * Additional Due To
     * Source Principal
     * Principal Branch
     * Source Principal Branch
     * Source Counterparty
     * Counterparty Branch
     * Source Counterparty Branch
     * Source Agreement
     * Trader Name
     * Book
     * Desk
     * Secondary Trade Ref
     * DTCC Trade Ref
     * Import Configuration
     * Deal Ref
     * CLIPS Code
     * Counterparty Trade Ref
     * Exposure Trade Comment
     * Clearing House Reference
     * Clearing House
     * Clearing Status



By default, the system is configured to return only 100 items at any one time in the grid. The default is to return the data in "pages" of 100 items per page. This [items per page count](<grid_features.md#paging>) can be changed. Alternatively, it may be easier to [view all the Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) for the Margin Calculation in Microsoft™ Excel Spreadsheet Software format.

#### 3 Day Difference Tab

This tab shows all individual trades which were included in the current margin calculation result as well as any additional trades included in the margin calculation results for the previous two date/times shown. The data in this grid is only available after the Margin Calculation Analysis Configuration is run.

The fields displayed (in default column order) are:

  * Trade Ref
  * Trade Type
  * Exposure Diff
  * Exposure COB
  * Exposure COB-1
  * Exposure COB-2
  * Exposure Type
  * Trade Date
  * Maturity Date
  * Configuration
  * Book



The Exposure Difference is calculated as Exposure COB-1 minus Exposure COB.

The Exposure COB-2 details are displayed for information purposes and to help identify trends or blips in exposure.

The Exposure Type field displays the classification for exposure changes. The values shown here correspond to the classifications used in the **Exposure Differences** section.

## Statements

Within the margin call workflow, the following statements can be sent or viewed from any state.

  * [Exposure Statement](<margin_calls_statements.md#exposure-statement>)

  * [Position Statement](<margin_calls_statements.md#position-statement>)

  * [Margin Call Notice](<margin_calls_statements.md#margin-call-notice>)

  * [Confirmation Notice](<margin_calls_statements.md#confirmation-notice>)

  * [Custom Statement](<margin_calls_statements.md#custom-statement>)



