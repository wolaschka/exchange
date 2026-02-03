
# Central Clearing - Awaiting Collateral State

## Overview

When a margin call is accepted, the call is automatically agreed to in full, and consequently the Agreed Total field is populated with the full imported Margin Call Amount.

There are two possible business scenarios that can occur with the Margin Call at this point.

1) It can be recognized that the Margin Call should not have been accepted and therefore should be set back **To Be Reviewed** before being processed further.

or

2) The Margin Call should be further processed by booking collateral movements onto the call to satisfy the Agreed Total Amount, and then sent for approval. 

## Actions Permissible

The actions that can be applied to Margin calls in this workflow state follow on from the possible business scenarios:

For scenario 1), the Margin Call can be transition back to the **To Be Reviewed** state.

For scenario 2), the following standard workflow actions can be performed to facilitate the processing of collateral movements on the Margin Call:

### Create Movements

Collateral Movements can be entered on a standard margin call by the following: 

  * Manually [add a Collateral Movement On A Margin Call](<margin_calls_movements.md>).

  * [Allocate or view collateral available](<margin_calls_movements.md#allocate-collateral-for-an-antic-demand>) on an Anticipated Demand

    * Click into the call to drill down into the details.
    * Select the Live Positions tab.
    * Expand on Asset Allocations.



Once the collateral movements have been added to a Margin Call, then the movement can be [edited](<#manually-edit-collateral-movements>), [deleted](<#delete-collateral-movements-on-margin-call>), or the call can be [sent for approval](<#sending-margin-grouped-margin-calls-for-approval>).

### Delete Collateral Movements on Margin Call

While in this workflow state, it is possible to delete Collateral Movements of type Margin Call Upload, as well as those of type Margin Call.

The process for deleting either type is identical to deleting collateral movements on a standard margin call. Therefore please see topic [How to Delete a Collateral Movement On a Margin Call](<margin_calls_movements.md#delete-collateral-movements-on-margin-call>)

Once the collateral movement(s) have been added to the Margin Call, the next stage of processing is to send it for managerial approval.

### Sending Margin Grouped Margin Calls for Approval

Once all the required collateral movements have been recorded on a Margin Call, the next stage of process is to submit the Margin Call and its associated Collateral Movements to the **To Be Approved** state for Approval.

Each Margin Call and its associated Collateral Movements must be approved before the Margin Call can be advanced into the Central Clearing Margin Call Workflow - **Confirmed** state.

Once the user is satisfied that all necessary Collateral Movements have been added, the Margin Call can be sent with its attached Collateral Movements for approval.

To Approve:

  1. Select the Margin Call.
  2. Click on the **Approve Send to Settlements** button.

The Margin Call is transitioned to Central Clearing Margin Call Workflow - Confirmed Approval state and the attached collateral movements are updated to a settlement state of In Transit.




**Note:** That is only enabled once the Margin call has one or more collateral movements attached to it.

### Re-processing Rejected Margin Calls

It is also possible that a Margin Call has been rejected from the approval process in the **To be Approved** state, in which case it will have been transitioned back into this state, where it can be reprocessed.

Re-process Rejected Central Clearing Margin Calls Re-processing Rejected Collateral Movements on a Margin Call

If a Margin Call has been rejected, it will be moved back from Central Clearing Margin Call Workflow - Confirmed To be Approved Queue to Central Clearing Margin Call Workflow - Awaiting Collateral Details Queue

When a one rejects the Collateral Movements on a Margin Call, they are required to enter an explanatory comment as to why they have done this.

Any Margin Call that has been rejected will show in the Status field. If the status field is not shown in the grid, columns can be altered to include it.

Hovering the mouse over will show a Tool Tip which will detail the user who rejected the Margin Call and the explanatory comments that were entered to justify the rejection. The time/date stamp shown is based on the time zone of the Agreement's Principal Managing Location.

The user will therefore need to take any remedial action as required. The Collateral Movements can be loaded, or manually added or edited.

Alternatively the remedial action may require reference or price data updates.

**Note:**

  1. Margin Calls in this Grouped Workflow state remain in this state at the end of the day, and are not expired.
  2. As Margin Calls remain in this state until advanced to other states, it is possible that this state could contain Margin Calls for the Same Counterparty, that were generated on different days. It is therefore recommended, that the optional field of Imported Date / Time is set to display in the grid to clarify to the user which call was generated on which date.
  3. Items displayed to the user in this workflow state are subject to applied filters.
  4. Although (Comparison Call Type, Comparison Call Amount and Call Amount Difference) can be selected for display in the grid, these fields can only be populated for Client Clearing Agreements via uploaded comparison files.


