
# Central Clearing - To Be Reviewed State

All Imported Margin Calls for Agreements associated to the Central Clearing Business Line are placed in the **To Be Reviewed** Workflow state.

The margin calls that are visible to the user in this workflow state are those that fall within:

  * The Agreement Scope of the logged in user.
  * The Client Clearing Agreement groups that the user is assigned to.



In order for the signed in user to see a Margin call in this workflow, it must be for an Agreement with a Principal Managing Location that falls within the user's Agreement scope, and the Agreement must be covered an Central Clearing Agreement group that the user is assigned to.

## Actions Permissible

**Accepting the Margin Call**

  1. Select the check boxes to the left of those Margin Calls that should be accepted. More than one margin call can be selected.

  2. Click the **Accept** button.

When the Accept button is clicked, the **Call Amount** is populated with the value from Expected Call Amount per CCP.

The **Agreed Total** is populated with **Call Amount** value.

Then the selected margin calls are transitioned according to the following logic:

     * **No Actions** are transitioned to Agreed - No Action state.
     * **Demands** and **Anticipated Demands** are transitioned according to whether [Autobooking](<collateral_movement_autobooking.md#eligibility-for-autobooking>) Criteria are met. 
     * If [Autobooking](<collateral_movement_autobooking.md>) is enabled and criteria is met, the system automatically books collateral movements to satisfy the Agreed Total, and transitions the Margin Calls to Central Clearing Margin Call Workflow - Confirmed - Awaiting Settlements Queue. 
     * If [autobooking](<collateral_movement_autobooking.md>) is not enabled or criteria is not met, the Margin calls are transitioned to Awaiting Collateral Details Queue. 

See [Collateral Movement AutoBooking](<collateral_movement_autobooking.md>) for further details.




**Note:** Margin Calls exist in this state on the day that they were imported. If they are not "reviewed" to transition to Awaiting Collateral state or Agreed - No Action state by the end of the Import date, then they are removed from the grid and are viewable only ( i.e. cannot be actioned) via the All Workflow. The Import Date/Time used to determine whether the Margin Calls are shown in this state is based on the time-zone and date of the Managing Location of the Principal Entity on the Agreement.

This means that items can be seen in this state that have an Import Date that differs to the local time zone and date if the Central Clearing Agreement Group selected contains Agreements for numerous Principal Managing Locations.

Conversely, it also means that some items disappear from this state as the date in the Managing location for an Agreement changes and is no longer the same date as the Calculation date.

Although (Comparison Call Type, Comparison Call Amount and Call Amount Difference) can be selected for display in the grid, these fields can only be populated for Client Clearing Agreements via uploaded comparison files.
