
# Movements

## Overview

In the normal course of business, Collateral Movements are entered in association with [Margin Calls](<margin_calls_overview.md>), [Substitutions](<substitutions.md>) and [Interest](<interest.md>). The system also allows movements to be entered manually.

Examples of why a manual movement would be entered may be one of the following reasons:

  * Represent a historic movement of collateral, as Collateral Movements entered on margin calls cannot have settlement dates in the past
  * Position adjustment
  * Represent a Collateral Movement that is not associated with a margin call



In addition to creating movements, the ability to [Fail](<movement_actions.md#fail-a-collateral-movement>), [Cancel](<movement_actions.md#cancel-a-movement>), [Approve](<movement_actions.md#approve-or-reject-manual-movements>) or [Reject](<movement_actions.md#approve-or-reject-manual-movements>) movements can also be performed through the Movements screen.

See the [Collateral Movement Life-Cycle Schematic](<collateral_movement_schematic.md>).

## Search Criteria

The system allows the user to view Collateral Movements for all Agreements within the users scope for a specific criteria.

No movements will be returned upon entering the screen.

Use the filter fields to search for a movement(s) then click the **Search** button.

A description of the search criteria fields and which ones are required are given below.

There are 3 different searching methods. Depending on which method is selected will determine which fields become available for the search.

The methods are Movement Filters, Movement ID, and All Pending Cancellations.

The required fields are noted in red.

**Note:** All required fields must be entered before the **Search** button will become enabled.

Search By Method | Available Filters | Description  
---|---|---  
**Movement Filters** | Settlement Date From | Select a Settlement Date for the beginning of a date range for the movements.  
| Settlement Date To | Select a Settlement Date for the ending of a date range of the movements.  
| Agreement Name | The agreement which the collateral movement was entered under.  
| Status | Select movements according to settlement status:| Field| Description  
---|---  
**In Progress**|  There are several ways that a movement can have an "In Progress" state:  
  
a. This is the first state for a movement when entered via the Agreed - Awaiting Collateral Workflow screen.  
| b. Movements exist in an "In Progress" state until the user elects to send them for managerial approval by clicking on the send for approval button. At that point the Collateral Movements are transitioned into the Confirmed to be Approved state and updated to a "To be Approved" state.  
| c. [Substitution movements](<substitutions.md>) when first created are in this state, and remain so until they are advanced to [Substitutions Workflow - Confirmed](<substitutions_workflow.md#confirmed>) state. While in this state, any Collateral Movements that were entered via the Margin call Workflow, can be edited or deleted from the Agreed Awaiting Collateral Details screen.  
**To Be Approved**|  This is the state for a Collateral Movement that has been entered and requires approval.  
  
They are entered in one of the following scenarios:  
  
a. Scenario 1)  
Collateral Movement Approval has been configured as [required](<system_configuration.md#collateral-movement>).  
Standalone Collateral Movement has been manually entered via the Movement Screen.  
Upon entry, Standalone Collateral Movements exist in To be Approved.  
For any Collateral Movement entered via the Movements screen and in To be Approved State, they cannot be subsequently edited or deleted.  
  
b. Scenario 2)  
Collateral Movement(s) have been entered via the Workflow via the Send - Awaiting Collateral Details screen.  
User has advanced the Margin Call and associated Collateral Movements to the Confirmed to be Approved Workflow state. Once advanced to this Workflow state, Collateral Movements are updated from an In Progress State to an Open State.  
Once in the Confirmed to be Approved state the Collateral Movement is in an Open State, and cannot be edited or deleted.  
  
Irrespective of the scenario under which the Collateral Movement was entered, any Collateral Movements that are in the To be Approved state are not taken into consideration for Margin calculation purposes.  
**In-Transit**|  Collateral Movements are marked as In Transit as a result of one of the following scenarios:  
  
a. Scenario One  
Collateral Movements entered via the Workflow have been managerially approved in Confirmed to be Approved state.  
Collateral Movements are then advanced to Confirmed Sent to Settlements state and state is updated from Open to In Transit.  
  
b. Scenario Two  
Collateral Movement Approval Requirement has been configured as being enabled.  
Standalone Collateral Movement has been entered via the Movements Screen, and then approved in Movements Screen, and updates from Open to In Transit as soon as approved.  
  
c. Scenario Three  
Collateral Movement Approval Requirement has not been configured as enabled.  
Standalone Collateral Movement has been entered and successfully saved via the Movements Screen.  
Upon Saving, the state of the Standalone Collateral Movement is In Transit.  
  
d. Scenario Four  
A substitution has been created and the return and delivery movements on it populated.  
The substitution and all its movements have been advanced by the user to the Substitutions Workflow - Sent to Settlements state.  
  
e. Scenario Five  
An Interest Movement has been created on an Interest Payment. Once the Interest Payment is approved the Interest Movement is updated to an In Transit state.In Transit Collateral Movements have not yet reached their settlement date, or the settlement task has not yet been run to update them to a settled state.  
While in this state - the market value of the In Transit Collateral Movements is taken into consideration of any subsequent Margin Calculations.  
  
f. Scenario Six  
A Collateral Movement has been created from a successfully imported Profit and Loss record. Collateral Movements created from P&L imports are identifiable by having a Movement Type of Profit and Loss.  
**Note:** The exception to this is In Transit Movements for an Interest Movement where the Distribution preference is "Distribute". These are not taken into consideration as part of the Collateral Balance for Margin Calculations.  
**Settled**|  A Collateral Movement is in a settled state once it reaches its settlement date and the settlement task successfully updates the Collateral Movement state from In transit to Settled.  
  
A settled movement can be cancelled and it can be Failed.  
  
A settled movement can be cancel/replaced.  
**Cancelled**|  Collateral movements are manually updated to a cancelled status via the cancel movements function.  
  
Cancelled collateral movements are not taken into consideration for any margin calculations, and they are not included in the settle movements task.  
  
Cancelled collateral movements cannot be re-opened or edited. They are in an end-state.  
**Rejected**|  This state is only applicable for Collateral Movements entered through the Movements Screen, when Movement Approval is enabled.  
  
It is always applicable for all Collateral Movements that are entered via Workflow.  
  
Collateral Movements in a to be approved state can either be approved or rejected.  
  
If approved, the state will update to in Transit, and the Margin Result and associated Collateral Movements will be transitioned to the Confirmed Sent to Settlements state.  
  
If rejected, that is the approver clicks on the reject button, then the movements which are rejected are updated to a rejected status.  
  
**Note:**  
a. If the Collateral Movement was manually entered through the Movements screen and is subsequently updated to a state of Rejected - the movement cannot be further edited or deleted. The user would need to input a replacement movement.  
b. If the Collateral Movement was manually entered via the Workflow and sent for approval, and the movements were rejected, again the Collateral Movements would be updated to a rejected state, but the user would be able to edit, add or delete them in the Agreed Awaiting Collateral Details screen.  
  
Collateral movements in a rejected state are not taken into consideration for Margin calculations.  
**Rejected Replace**|  There are two mechanisms by which movements in TLM Collateral Management are cancelled and replaced. Either method can result in movements in a rejected replaced state.  
  
When a collateral movement is cancel/replaced the original movement is cancelled and a replacement movement is created. If manual movement approval requirement is enabled, the replacement movement is created with a status of To Be Approved.  
  
If the replacement movement is rejected, (rather than approved) then it is updated from To be Approved to a state of Rejected Replace and the original cancelled movement is updated back to its prior cancel/replaced status.  
  
Collateral movements can also be cancelled and then replaced.   
When a replacement movement is booked from a cancellation,and manual movement approval requirement is enabled, the replacement movement is created with a status of To Be Approved.  
  
If the replacement movement is rejected, (rather than approved) then it is updated from To be Approved to a state of Rejected Replace. Note that the original cancelled movement remains cancelled.  
  
Collateral movements in a state of Rejected Replace can no longer be edited. They are not taken into consideration for margin calculation purposes, and are therefore considered as being in an end settlement state.  
**Failed**|  A Collateral Movement is marked as failed when a user updates the movement to be failed.  
  
An in transit or settled Collateral Movement can be marked as failed.  
  
Failed Collateral Movements are taken into consideration for any subsequent margin calculations.  
  
A failed collateral movement is not processed by the Settlement Task, and as such is regarded as an intermediate settlement state that requires further processing.  
  
A failed collateral movement can be subject to the following processes:  
a. It can be cancelled.  
b. It can be Reopened and set back to In Transit without changes  
c. It can be cancel / replaced (that is edited for Notional, Settlement Date, and Physical Movement Indicator).  
**Ignored**|  There are 3 principal ways in which Collateral Movements can be set to an ignored settlement state.  
  
a. As A result of a New Margin Calculation replacing an existing Calculation with Movements attached.  
  
Collateral movements are set to an ignored status when the margin calculation to which they are attached is replaced by a new margin calculation.  
  
For example, consider a Demand for USD 10,000,000 existed and was in the Agreed state and had some movements attached to it:  
  
Consider that before advancing the margin call to the confirmed state, that a revised margin calculation was run which presented a new Margin Call of USD 11,000,000.  
  
If using the new margin calculation for USD 11,000,000, the original calculation is cancelled, and the collateral movements which were attached to the original calculation are set to an ignored status.  
  
Ignored movements cannot be re-attached to revised Margin Calculation Results.  
  
Collateral Movements that are set to ignored under this scenario can be seen in the Movements screen in the grid, but the read only report include details of the Original Margin Call (i.e. the one that was cancelled) that they were attached to.  
  
b. As a result of Resetting the Agreed Amount on an Antic Demand or Demand.  
  
If Collateral Movements are attached to an Antic Demand or Demand, and a user elects to reset the agreed amount, or adjusts the Agreed amount to zero, then any attached Collateral Movements are set to Ignored settlement state, and disassociated from the Margin Call.  
  
Collateral Movements that are set to ignored under this scenario can be seen in the Movements screen in the grid, but the read only report will not include details of the Margin Call that they were originally entered on.  
  
c. As A result of Waiving a Demand that had Collateral Movements attached.  
  
If Collateral Movements are attached to a Demand, and a user elects to waive the Demand from Demand Workflow - Agreed Awaiting Collateral Details then any attached Collateral Movements are set to Ignored settlement state, and disassociated from the Margin Call.  
  
Collateral Movements that are set to ignored under this scenario can be seen in the Movements screen in the grid, but the read only report will not include details of the Margin Call that they were originally entered on.  
  
Collateral Movements in a state of ignored are not taken into consideration for margin calculations.  
| Type | To restrict selected movements to a particular Movement Type, select one of the following values from the drop-down:  
  
Distribution  
Manual  
Margin Call  
Profit and Loss  
Roll In  
Substitution  
| Instrument Class | To restrict selected movements to a particular Instrument Class, select one of the following values from the drop-down:  
  
All  
Cash  
Debt  
Equity  
Letter of Credit  
| Principal | Select the [Principal Name](<entities.md#overview>) from the drop-down box.  
| Include Principal Descendants | If this value is checked, this will include movements for any Agreement that has been created with any descendants of the Principal Entity. Meaning, Agreements with any children of that Entity as well as Agreements with children of the children, and so on.  
| Filter by Pending Cancellation | This will restrict the selected movements to those that are flagged for Pending Cancellation.  
  
Movements are flagged as pending cancellation when the system is configured to require approval for movement cancellations, and a user has selected to cancel a movement.  
The movement remains in flagged as Pending Cancellation until it is either approved or rejected.  
**MovementID** | Movement ID | This method will search for a specific single ID only.  
**All Pending Cancellations** |  | Used to restrict the selected movements to those that are flagged for Pending Cancellation.  
  
Movements are flagged as pending cancellation when the system is configured to require approval for movement cancellations, and a user has selected to cancel a movement. The movement remains in flagged as Pending Cancellation until it is either [approved](<movements_approval_pendcancel.md>) or [rejected](<movements_reject_pendcancel.md>).  
  
Only movements that are in a Settled, In Transit or Failed state will be retrieved.  
|  |   
  
## Grid Features

The movement grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## View Movements

When movements are returned through the search criteria, the below data can be viewed on the grid.

Field | Description  
---|---  
Actions | There are four options under the Actions column.  
  
| Action| Description  
---|---  
[View Details](<#view-details>)| Clicking on the magnifying glass will open the movement to view the [Transition History](<#transition-history>) and [SSI tabs](<#view-ssi>).  
[View Eligibility Breaches](<#view-eligibility-breaches>)| This will expand the screen below the agreements grid and display the exposure trades for the agreement.  
[View Principal Concentration Results](<#view-concentration-results>)| This will expand the screen below the movements grid and display all concentration rules that are applicable when the Principal is holding the collateral. This applies to the rules which have been defined for the agreement with the "Applies To Party" option set to either Principal or Both.  
[View Counterparty Concentration Results](<#view-concentration-results>)| This will expand the screen below the movements grid and display all concentration rules that are applicable when the Counterparty is holding the collateral. This applies to the rules which have been defined for the agreement with the "Applies To Party" option set to either Counterparty or Both.  
[View Instrument](<instruments.md>)| When this link is selected, a new window will open up in the browser and will display the instrument details of the movement.| [View Margin Call](<margin_calls_tabs.md>)| When the movement is association with a margin call, this link will become available. When this link is selected, a new window will open up in the browser and will display the margin call details of the movement.| [View Substitution](<substitutions_detail.md>)| When the movement is association with a substitution, this link will become available. When this link is selected, a new window will open up in the browser and will display the substitution details of the movement.| [View Interest Payment](<interest_details.md>)| When the movement is association with a interest payment, this link will become available. When this link is selected, a new window will open up in the browser and will display the interest payment details of the movement.  
Settlement Date | The Settlement Date that was entered on the collateral movement.  
Agreement Name | The agreement which the collateral movement was entered for.  
Type | Type refers to how the collateral movement was originated. It is a system generated label. There are nine types of movements:  
  
**Interest Roll-In** \- The collateral movement is as a result of a Roll-In Interest Payment, created via the Interest Roll in Workflow.  
  
**Interest Distribution** \- The collateral movement is as a result of a Distribution Interest Payment, created via the Interest Distribution Workflow.  
  
**Interest Roll-In Uploaded** \- The collateral movement automatically created for a Grouped Roll In Interest Payment that was processed via the Payment Summary File.  
  
**Interest Distribution Uploaded** \- As above but for Grouped Distribution Interest Payments  
  
**Manual** \- The collateral movement was manually entered by the user via the Movement Screen.  
Additionally when Interest is Migrated from V4 two types of movements are shown here with a type of Manual.  
Migrated Roll In Interest Payments.  
Migrated Cash Movements subsequent to last closed Interest Payment in V4.  
  
**Margin Call** \- The collateral movement was entered by the user via the Margin Call Workflow.  
Collateral Movements autobooked by the system are also set with a type of Margin Call.  
  
**Margin Call Uploaded** \- The collateral movement was loaded via the Call Sheet.  
  
**Profit and Loss** \- The collateral movement was created as a result of importing Profit and Loss record.  
Profit and Loss Movements are further classified by having a P&L Type value.  
  
**Substitution** \- The collateral movement is part of a substitution created by the user via the Substitution Workflow.  
Status | The current settlement status for the individual collateral movement.  
Eligibility | The current eligibility of the instrument on the collateral movement as defined by the Basic, Advanced Eligibility, Ratings Based and Wrong Way Risk rules of the Agreement.  
Direction | The direction of the collateral movement which will be _Deliver_ or _Return_.  
Receiving Party | The party receiving the collateral which will be the _Principal_ or _Counterparty_.  
Instrument | The Primary id of the instrument on the collateral movement.  
Description | The textual description of the instrument on the collateral movement.  
Notional | The notional quantity of the instrument on the collateral movement.  
Currency | The Instrument Currency.  
Market Value (Agmt Ccy) | The market value of the collateral movement in agreement Ccy, as calculated: [Notional * Price * Valuation % tage * FX conversion Rate]  
Market Value (Inst Ccy) | The market value of the collateral movement in the Ccy of the actual instrument.  
User | The user who created the collateral movement.  
Create Date | Time and Date stamp at movement creation point.  
Reviewed By | The name of the approving user who either approved or rejected the Collateral Movement. Collateral Movements entered through the Workflow or Standalone Collateral Movements entered via the Movements screen will have this field populated once the Collateral Movements are approved or rejected.  
Reviewed Date | The time that the Reviewed By user Approved or Rejected the Collateral Movement and therefore updated its state.  
Margin Type | For OTC Agreements, where Collateral Allocation is defined as Segregate Lock up and Variation, this value identifies whether the collateral trade is allocated toward the Variation or LockUp margin requirement.  
  
See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) for more details.  
  
For OTC Agreements, where Collateral Allocation is defined as Lock Up Only, this value identifies the collateral trade as allocated toward a Lock Up margin requirement only.  
  
See [How to Define an OTC Lock Up Only Agreement](<agreements_define.md#otc-lock-up-only>) for more details.  
  
For all other OTC Agreements, and for Repo and Securities Lending Business lines, the value here is ignored for Margin Calculation purposes.  
Physical Settlement | Indicates whether the movement is to be settled physically via real movements, or alternatively is a entry level adjustment without physical movements.  
P&L Type | Populated when Movement Type = Profit and Loss.  
  
This indicates what type of Profit and Loss amount was imported to create the collateral movement.  
  
There are six permissible P&L types:  
  
Cash Flow  
CCP Fees  
Clearing Member Fees  
Consideration  
Coupon  
Price Aligned Interest  
Asset Pool | This is populated in the following circumstances:  
  
\- For Deliver to Counterparty collateral movements that used an available Asset Pool Balance as the source of the movement.  
\- For the corresponding Return to Principal collateral movements, that are returning the instrument to the Asset Pool it was originally sourced from.  
  
In either case, the Asset Pool which was the source from where the instrument was taken is listed.  
Movement ID | This is an internally generated unique identifier assigned to each single collateral movement when it is created.  
  
For example, if a Margin Call has three collateral movements attached to it, a unique Movement ID is assigned to each collateral movement.  
  
It is included on Collateral Confirmation Notices, so can be quoted to clients to assist in identifying particular movements.  
  
For Instrument Distribution Movements this Id is prefixed with "D".  
  
For other movements, it is numeric.  
Margin Call ID | Where the collateral movement is directly associated to a Margin Call, The Id of the Margin call is listed here.  
Pending Cancellation | Indicates that the movement is awaiting cancellation approval.  
  
Movements are flagged as pending cancellation when the system is configured to require approval for movement cancellations, and a user has selected to [cancel a movement](<#cancel-a-manual-movement>). The movement remains in flagged as **Pending Cancellation** until it is either [approved](<movements_approval_pendcancel.md>) or [rejected](<movements_reject_pendcancel.md>).  
  
Only movements that are in a Settled, In Transit or Failed state can be cancelled, and thus only movements in these settlement states can have a populated Pending Cancellation flag.  
  
### View Details

This screen will display details of the movement based on the following:

  * Movement Status is not set to "Ignored".
  * Movement Type is not "Manual" or "Profit and Loss".



The [Transition History](<#transition-history>), the [SSI](<#view-ssi>), and depending on the type of movement, the [Related Movements](<#related-movements>) tab will appear.

The following workflow details are displayed at the top of the screen:

Field | Margin Call | Substitution | Interest | Note  
---|---|---|---|---  
Detail | X | X | X | This an icon that when clicked is linked to either the associated [Margin Call](<margin_calls_workflow.md>), [Substitution](<substitutions_workflow.md>), or [Interest](<interest_workflow.md>) Payments workflow. When the icon is clicked, it will open a new tab to _All_ preset filter where the movement is sitting within the corresponding workflow.  
Agreement | X |  | X |   
Principal Name | X |  | X |   
Counterparty Name | X |  | X |   
Margin Type | X |  | X |   
Call Amount | X |  |  |   
Amount |  |  | X |   
Agreed | X |  | X |   
Dispute | X |  |  |   
Movements | X |  |  |   
Workflow - State | X | X | X |   
Calculation Date | X |  |  |   
Calculation Timestamp |  |  | X |   
Margin Type |  | X |  |   
Position Type |  | X |  |   
Return Market Value |  | X |  |   
Substitute Market Value |  | X |  |   
Total Market Value Difference |  | X |  |   
Status |  | X |  |   
Preference |  |  | X |   
Period End |  |  | X |   
  
#### Transition History

The transition history can be seen on each individual movement by clicking on the movement.

When the movement is clicked, it will drill down to the **Transaction History** of the movement.

Field | Description  
---|---  
Movement ID | The internal identifier of the Movement.  
State | The settlement state of the movement as per the **Updated Date/Time**.  
Asset Pool | [Asset Pool](<assetpools.md>) is defined on a movement in the following circumstances:  
  
a. For _Deliver to Counterparty_ collateral movements that used an available Asset Pool Balance as the source of the movement.  
b. For the corresponding _Return to Principal_ collateral movements, that are returning the instrument to the Asset Pool it was originally sourced from.  
  
If Asset Pool was defined on the movement it will be shown.  
Notional | The notional amount of the Instrument Ref for the movement as per the Updated Date/Time.  
Settlement Date | The Settlement Date that was entered on the collateral movement.  
Reason | The comments entered by the user in the field Reasons for manual entry when the user input the Collateral Movement are displayed here.  
Instrument Ref | The Instrument on the Movement at Updated Date/Time.  
Parent Movement | This is populated when the movement is created as a **replacement movement** via the **cancel / replace** action. The Parent Movement will show the original movement that was cancelled to create this replacement movement.  
User | The user who updated the movement to the current State.  
Updated Date/Time | The time of when the movement was update to the current **State**.  
Required Approval | Approval is required from a different user than the user who entered the movement.  
Pending Cancellation | Denotes that the movement is pending cancellation approval.  
  
When [cancellation approvals are configured as required](<movements_cancellation_required.md>) and a user [requests to cancel a movement](<#cancel-a-manual-movement>), the Pending Cancellation flag is set. The flag is cleared only when the cancellation is approved or rejected.  
  
#### Related Movements

If the movement is on a margin call or a substitution, the user may need access to see all the movements associated with the single margin call or substitution.

Only movements with the type of "Margin Call" or "Substitution" will have this additional tab while viewing the movement details.

This tab will display additional details of the movement being viewed in addition to the related movements.

**Note:** If the movement status is "Ignored", then this tab will not appear for margin calls and substitutions.

The following fields are displayed:

Field | Description  
---|---  
Settlement Date | The Settlement Date that was entered on the collateral movement.  
Agreement Name | The name associated with the movement.  
Type | Type refers to how the collateral movement was originated. It is a system generated label.  
  
**Margin Call** \- The collateral movement was entered by the user via the Margin Call Workflow.  
Collateral Movements autobooked by the system are also set with a type of Margin Call.  
  
**Margin Call Uploaded** \- The collateral movement was loaded via the Call Sheet.  
  
**Substitution** \- The collateral movement is part of a substitution created by the user via the Substitution Workflow.  
Status | The current settlement status for the individual collateral movement.  
Eligibility | The current eligibility of the instrument on the collateral movement as defined by the Basic, Advanced Eligibility, Ratings Based and Wrong Way Risk rules of the Agreement.  
Direction | The direction of the collateral movement which will be _Deliver_ or _Return_.  
Receiving Party | The party receiving the collateral which will be the _Principal_ or _Counterparty_.  
Instrument | The Instrument on the Movement at Updated Date/Time.  
Instrument Description | The textual description of the instrument on the collateral movement.  
Notional | The notional amount of the Instrument Ref for the movement as per the Updated Date/Time.  
Currency | The Instrument currency.  
Market Value (Agmt Ccy) | The market value of the collateral movement in agreement Ccy, as calculated: [Notional * Price * Valuation % tage * FX conversion Rate]  
Market Value (Inst Ccy) | The market value of the collateral movement in the Ccy of the actual instrument.  
User | The user who updated the movement to the current State.  
Created Date | Time and Date stamp at movement creation point.  
Reviewed By | The name of the approving user who either approved or rejected the Collateral Movement. Collateral Movements entered through the Workflow or Standalone Collateral Movements entered via the Movements screen will have this field populated once the Collateral Movements are approved or rejected.  
Reviewed Date | The time that the Reviewed By user Approved or Rejected the Collateral Movement and therefore updated its state.  
Margin Type | For OTC Agreements, where Collateral Allocation is defined as Segregate Lock up and Variation, this value identifies whether the collateral trade is allocated toward the Variation or LockUp margin requirement.  
  
See [Working with OTC Agreements that Segregate Lock Up and Variation Margin](<segregate_lockup_varmargin.md>) for more details.  
  
For OTC Agreements, where Collateral Allocation is defined as Lock Up Only, this value identifies the collateral trade as allocated toward a Lock Up margin requirement only.  
  
See [How to Define an OTC Lock Up Only Agreement](<agreements_define.md#otc-lock-up-only>) for more details.  
  
For all other OTC Agreements, and for Repo and Securities Lending Business lines, the value here is ignored for Margin Calculation purposes.  
Physical Settlement | Indicates whether the movement is to be settled physically via real movements, or alternatively is a entry level adjustment without physical movements.  
P&L Type | Populated when Movement Type = Profit and Loss.  
  
This indicates what type of Profit and Loss amount was imported to create the collateral movement.  
  
There are six permissible P&L types:  
  
Cash Flow  
CCP Fees  
Clearing Member Fees  
Consideration  
Coupon  
Price Aligned Interest  
Asset Pool | This is populated in the following circumstances:  
  
\- For Deliver to Counterparty collateral movements that used an available Asset Pool Balance as the source of the movement.  
\- For the corresponding Return to Principal collateral movements, that are returning the instrument to the Asset Pool it was originally sourced from.  
  
In either case, the Asset Pool which was the source from where the instrument was taken is listed.  
Movement Id | The internal identifier of the Movement.  
Margin Call Id | Where the collateral movement is directly associated to a Margin Call, The Id of the Margin call is listed here.  
Pending Cancellation | Denotes that the movement is pending cancellation approval.  
  
When [cancellation approvals are configured as required](<movements_cancellation_required.md>) and a user [requests to cancel a movement](<#cancel-a-manual-movement>), the Pending Cancellation flag is set. The flag is cleared only when the cancellation is approved or rejected.  
  
#### View SSI

When Collateral Movements are created, the system will attempt to automatically populate the movement with the matching SSI record that has been set as default. If no default is available, matching SSI records can be manually selected by the user. See [Understanding SSI hierarchy, defaults and derivation](<agreements_settleinstr.md#understanding-ssi-hierarchy>) for more details on this process.

Typically SSI's are saved as part of the Collateral Movement record at creation point. However, in certain places, the SSI's displayed are live.

All Collateral Movements can be seen from the Movement Screen. The data was saved when the movement was created.

**Procedure**

  1. To view the SSI's for a Collateral Movement, enter the search criteria pertinent to locating the actual Collateral Movements.
  2. Click on the movement.
  3. Select the **SSI** tab.

Within each tab the following information is shown:

  4. Custodian

  5. Custodian ID
  6. Account Number
  7. Account Name
  8. Beneficiary Number
  9. Beneficiary Name
  10. Reference
  11. Comment
  12. Place of Settlement



The Receiver/Sender Party varies depending on the direction of the collateral movement:

Movement Type | Movement Direction | Receiver is? | Sender is ?  
---|---|---|---  
Manual | Deliver to Principal | Principal | Counterparty  
Manual | Return to Principal | Principal | Counterparty  
Manual | Deliver to Counterparty | Counterparty | Principal  
Manual | Return to Counterparty | Counterparty | Principal  
Margin Call | Deliver to Principal | Principal | Counterparty  
Margin Call | Return to Principal | Principal | Counterparty  
Margin Call | Deliver to Counterparty | Counterparty | Principal  
Margin Call | Return to Counterparty | Counterparty | Principal  
Substitution | Deliver to Principal | Principal | Counterparty  
Substitution | Return to Principal | Principal | Counterparty  
Substitution | Deliver to Counterparty | Counterparty | Principal  
Substitution | Return to Counterparty | Counterparty | Principal  
Interest Distribution | Deliver to Principal  
(Due to Principal Interest Payment) | Principal | Counterparty  
Interest Distribution | Return to Counterparty  
(Due to Counterparty Interest Payment | Principal | Counterparty  
  
This information is sourced from the SSI record for each party where the Movement Type and Direction values defined correspond with the collateral movement direction 

Collateral Movement Direction | Principal SSI details taken from SSI records where Movement Type | Principal SSI details taken from SSI records where Direction | Counterparty SSI details taken from SSI record where Movement Type | Counterparty SSI details from SSI record where Direction  
---|---|---|---|---  
Deliver to Principal | Deliver | To | Deliver | From  
Return to Principal | Return | To | Return | From  
Deliver to Counterparty | Deliver | From | Deliver | To  
Return to Counterparty | Return | From | Return | To  
  
### View Eligibility Breaches

When Collateral Movements are created, the system checks to see whether the Instrument selected on the Collateral Movement matches the following Agreement eligibility rules

  * [Basic Eligibility](<basiceligibility.md>)
  * [Advanced Eligibility](<advancedeligrules.md>)
  * [Ratings Based Eligibility](<ratingbasedeligrules.md>)
  * [Wrong Way Risk Eligibility](<wrongwayrisk.md>)



Within the Agreements Positions grid, Eligibility is one of the fields displayed.

If there are any eligibility breaches on a collateral position or in transit movement on the agreement, the field will display a ![ineligible.jpg](Images/ineligible.jpg) icon.

To view the breaches, follow the below procedure.

**Procedure:**

  1. Select the ![dotdotdot.jpg](Images/dotdotdot.jpg) icon for a specific movement; a menu will appear.
  2. Select the **View Eligibility Breaches** and a new window will open up at the bottom of the page with the eligibility breaches information.



The Eligibility Breaches grid will display the following information for the selected position:

Field | Description  
---|---  
Rule Name | This will read "Basic Eligibility" if that is the evaluation that has failed. If the failure is due to an Advanced and/or Ratings Based evaluation then this field will list the actual Rule Names that the movement has failed evaluations for.  
Reason | This provides additional information as to how the nature of eligibility failure.  
  
For Basic Eligibility breaches, the cause maybe that there are no eligible buckets set up on the Agreement for the instrument to fall into.

Or because the instrument on the movement could fall into more than one collateral bucket assigned to the Agreement.

For Advanced and Ratings Based Eligibility Failures, the failure is typically because one criteria on the rules have not been met. The reason field provides information as to which criteria these are.

See [Eligibility and Concentration Breaches](<eligibility_and_concentration_breaches.md>) for more details.

### View Concentration Results

When Principal or Counterparty Concentration Results is selected, it will expand the screen below the movements grid and display all concentration rules that are applicable.

When the movement has the rules defined for the agreement with the "Applies to Party" option set to either Principal or Both, this will be applied to the collateral being held by the Principal. If the "Applies to Party" is set to Counterparty or Both, this will be applied to the collateral being held by the Counterparty.

**Procedure**

  1. Select the ![dotdotdot.jpg](Images/dotdotdot.jpg) icon for a specific movement; a menu will appear.
  2. Select either the **Principal Concentration Results** or **Counterparty Concentration Results**.



Each rule which has been defined for the relevant party is displayed along with it's current status using the following Status symbols:

Symbol | Status | Description  
---|---|---  
![failed_icon.jpg](Images/failed_icon.jpg) | Failed | The limit has not been calculated due to one of the following items of data being missing:  
  
\- FX Rate required in the calculation  
\- Amount Issued or Amount Outstanding (only where these parameters are used in the calculation)  
![warning_icon_mc.jpg](Images/warning_icon_mc.jpg) | Breached | The limit has been calculated and has resulted in a breach situation.  
![run_task_success.jpg](Images/run_task_success.jpg) | Passed | The limit has been calculated and no breach has occurred.  
  
The fields displayed in the grid are listed below in the default display order:

  * Status
  * Rule
  * Description



The default sorting order is by the status.

To view the Result Details of the concentration rule, click on the magnifying glass. A window will appear below the concentration rules with the results which are calculated live live. This will return the status, result and context.
