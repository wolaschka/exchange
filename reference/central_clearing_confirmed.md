# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/central_clearing_confirmed.html

# Central Clearing - Confirmed State

Margin Calls are moved into this Workflow state once they have been approved in the Central Clearing Margin Call Workflow - To be Approved state and remain in this Workflow state until they are fully completed.

## Actions Permissible

There are no transition actions that can be applied to margin calls within this workflow state. They remain in this state until completed.

## Completion process

A Margin Call is only fully completed when all the collateral movements have been updated to a settlement state of either

**Settled** , which is done by the Settle Movements task.

or

**Cancelled** , which is manually set.

Once all the Collateral Movements for a particular Margin Call have been marked as such, then the item will be removed from this state.

Once fully completed, the Margin call is viewable from the All tab with a status of completed.

**Note:**

  1. Items remain in this Workflow state until all collateral movements attached to the call are set to either a settled or cancelled state.
  2. Items displayed to the user in this workflow state are subject to applied filters.
  3. Although (Comparison Call Type, Comparison Call Amount and Call Amount Difference) can be selected for display in the grid, these fields can only be populated for Client Clearing Agreements via uploaded comparison files.



## View Collateral Confirmation Notice

This option can be selected by clicking on the **More** button, then clicking **View Confirmation Notice** button.

The functionality is identical to that in other margin call workflows in the system. Please see [How to View Collateral Movement Confirmation Notice](<margin_calls_statements.md#confirmation-notice>)
