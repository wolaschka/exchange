# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/central_clearing_tobeapproved.html

# Central Clearing - To be Approved State

Margin Calls in this state have been sent for managerial approval by the users in the preceding Awaiting Collateral Upload Workflow state by the user clicking on **Send for Approval** button.

While in this state - the Collateral Movements attached to the Margin Calls are in a **To Be Approved** state.

## Actions Permissible

Items remain in this **To be Approved** state until they are either approved or rejected. To approve, click on the **Send for Approval** button. To reject, click on the **Reject** button.

  * **Approved** \- in which case the Margin Call and the Collateral Movements attached to it are transitioned to Central Clearing Margin Call Workflow - **Confirmed** state. Simultaneously, the Collateral Movements are updated to an In Transit Settlement State. To approve a Margin call and its Collateral Movements, see [Sending Margin Grouped Margin Calls for Approval for Central Clearing Workflow](<central_clearing_awaiting_collateral.md#sending-margin-grouped-margin-calls-for-approval>).
  * **Rejected** \- in which case the Margin Call and its associated collateral movements will be moved. Simultaneously, the Collateral Movements are updated to a Rejected Settlement State. When the Margin Call and Collateral Movements are rejected, see [How to re-process a Rejected Margin Call for Central Clearing Workflow](<central_clearing_awaiting_collateral.md#Re-processing Rejected Margin Calls>).



**Note:**

  1. Items remain in this Workflow state and are not expired at the end of the day.
  2. Items displayed to the user in this workflow state are subject to applied filters.
  3. Although (Comparison Call Type, Comparison Call Amount and Call Amount Difference) can be selected for display in the grid, these fields can only be populated for Client Clearing Agreements via uploaded comparison files.



## View Collateral Confirmation Notice

This option can be selected by clicking on the **More** button, then clicking **View Confirmation Notice** button.

The functionality is identical to that in other margin call workflows in the system. Please see [How to View Collateral Movement Confirmation Notice](<margin_calls_statements.md#confirmation-notice>)
