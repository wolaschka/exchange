
# Reject a Call

## Reject a Margin Call with Movements

Only Collateral Movements that have been entered on Margin Calls can be rejected via the Workflow.

If rejection of a Collateral Movement that has been entered via the Movement screen can only be done via the rejection process in the Movement Screen.

However, it is also possible that Collateral Movements entered on a Margin Call can also be rejected via the Movements screen.

Rejecting a Margin Call and its associated Collateral Movements will cause the Margin Call to be moved back to the preceding Workflow state (either Demand Workflow - Agreed state or Antic Demands Workflow - Agreed state) with a rejected state, where the user will need to correct the offending entries.

While in a rejected state - the value of the Agreed Total and not the Movement Total will be taken into consideration for Margin Calculation purposes.

**Procedure**

  1. Navigate to the Confirmed Approval filter in the Navigation pane.
  2. Select the Margin call by clicking on the Margin Call directly. The breakdown of the Margin Calculation can be seen by selecting the Details tab.

Or

Select the Margin Call by clicking the checkbox next to the Margin Call.

  3. If the user who is trying to approve the call is not the user who promoted the call to this state, then the buttons, **Approve** and **Reject** will become enabled. Else, just the **Reject** button will be enabled.

  4. If the user is unsatisfied with the Collateral Movements that have been entered, Click the **Reject** button.

The Reject Comments dialog box appears. Enter a required comment. The comment entered will be viewable to users once the Margin Call is rejected, so it is recommended to enter clear reasons as to why the item is being rejected.

When the comment is entered, click the **Reject** button that appears in the Reject dialog box.

  5. The Margin call, together with all attached Collateral Movements will be moved back to one of the following Workflow states with a rejected status-

The actual state it is moved to depends on the type of margin call.

Margin Call Type | State Margin call will be moved to  
---|---  
Demand | Demand Workflow - Agreed  
Antic Demand | Antic Demands Workflow - Agreed  
  6. The Collateral Movements are updated to a settlement state of **Rejected**.

Consider the following:

a. To be able to approve a Margin Call with Collateral Movements, the user cannot be the same user who submitted the Margin Call itself for Approval and cannot be the last user to "touch" a Margin Call event. For example:

     * User A books a movement, User B promotes to 'To Be Approved'. User A can now approve
     * User A books a movement, User A promotes to 'To Be Approved'. User B Rejects, and re Promotes to 'To Be Approved'. User A can now approve

b. Irrespective of the above, only users with certain privilege levels can approve or reject items. See your system administrator for more information on user roles.

     * This means that if the user does not see or, the user is either the user who submitted the item for approval, and/or the user does not have the necessary privilege levels to approve or reject Collateral Movements.

c. Collateral Movements on a Margin Call are approved or approved in entirety. Where more than one Collateral Movement exists on a Margin Call, it is currently not possible to approve or reject a single movement. Either all must be approved or all rejected.

d. There is an exception to the above consideration for OTC Agreements that segregate requirements. For these form of agreements, separate margin call requirements are generated for the Lock Up and for the Variation Requirements. Each requirement therefore has a margin type of either Lock Up or Variation.

Collateral movements are added per margin requirement - that is collateral movements are added per margin type.

Therefore when collateral movements are rejected - they are rejected per margin requirement. The collateral movements for margin type lock up can be rejected on the lock up requirement, but collateral movements may exist for the variation requirement and require approval/rejection separately.




## Re-processing Rejected Antic Demands

If an Antic Demand has been rejected, it will be moved back from the Antic Demands Workflow - Confirmed state to this Workflow state.

When one rejects the Collateral Movements on an Antic Demand, they are required to enter an explanatory comment as to why they have done this.

Any Antic Demand that has been rejected will show in the Status field. If the status field is not shown in the grid, the columns can be altered to include the field. Hovering the mouse over will show a ToolTip which will detail the user who performed the rejection, the date and time, and the explanatory comments that were entered to justify the rejection. The time/date stamp shown is based on the timezone of the Agreement's Principal Managing Location.

## Reject from Waived Approval State

If a Demand has been rejected, depending on the state the the waive occurred will determine which state the margin call will be returned.

When a user requests that a demand be waived, that request is subject to managerial approval in the [Demand Workflow - Waived Approval](<margin_calls_approve.md>) state.

When the waived margin call is rejected, the call will progress back to the following states:

Waived State | Reject to State  
---|---  
Unsent | Unsent  
Sent | Sent  
Agreed | Sent  
Agreed w/movement(s) | Sent  
  
By selecting the optional field Status to be displayed, any item that has ![rejected_icon.jpg](Images/rejected_icon.jpg) in the Status field indicates that it was rejected from an approval Workflow state. By hovering the mouse over the Status field for a rejected item, the system will display a tool tip detailing the user, the rejection time and date, and the rejection comments that were entered at the point of rejection.

**Important Considerations**

  1. Should the Margin Calculation Task be re-run, the New Margin Calculation Results will be processed as follows:
     * If the Collateral Allocation type is "auto allocate", then the original demand in this Workflow state will be replaced in entirety by the latest Margin Calculation Result. See [How to Process Original or New Margin Calculation Results](<margin_calls_recalc.md#processing-original-or-new-margin-calculation-results>).
     * If the Collateral Allocation type is "Segregate Lock Up and Variation" (that is, the agreement is " do not auto allocate"), then an evaluation takes place to determine whether the item will be replaced or a side by side evaluation must occur. See [How to Process Original or New Margin Calculation Results for Non Auto Allocate Agreements](<margin_calls_recalc.md#how-to-process-original-or-new-margin-calculation-results-for-non-auto-allocate-agreements>) for more details.
  2. Demands exist in this state on the day that they were calculated. If they are not actioned by the end of the calculation date, then they are removed from the grid and are viewable by selecting the calculation date through the [filters](<margin_calls_overview.md#calcdate>).
  3. The Calculation Date and time used to determine whether the Demands are shown in this state is based on the timezone and date of the Managing Location of the Principal Entity on the Agreement.

This means that Demand Calls may be seen in this state that have a Calculation Date that differs from the local timezone and date if Agreements exist with a variety of Principal Entity Managing Locations that are in the users Agreement Responsibility Group.

Conversely, it also means that some of the items disappear from this state as the date in the Principal Managing Location for an Agreement changes and is no longer the same date as the Calculation date. Should items "expire" in this manner you will be prompted to refresh the grid contents.

  4. Items in this state are filtered according to the Agreement Scope and Agreement Responsibility Groups that the user is assigned to. See [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md>).



