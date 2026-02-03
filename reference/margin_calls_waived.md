# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/margin_calls_waived.html

# Waived

## Overview

Demands and Grouped Demands can be placed in the Waived state when the call is promoted from one of the following states:

  * Unsent
  * Sent
  * Agreed
  * Confirmed Approval (Demands only)



## Waive

**Procedure**

  1. To request that a Demand be waived for an individual margin call, select the check box to the left of the corresponding Agreement and click the **Waive** button.

  2. More than one Margin call can be requested to be waived at a time by selecting the check boxes for the corresponding calls.

  3. Alternatively, to request Waive approval for all of the Margin Calls for this workflow state, select the _Select/Deselect All_ check box and then click the **Waive** button. Clearing this check box will deselect all margin calls.

  4. This will open up the Waive Margin Call dialog box, where the user must choose one or more **Waive Categories** by selecting the appropriate check boxes. Additionally, an explanatory reason must be entered for waiving the call in the **Waive Comment** text box.

  5. At least one _Waive Category_ and a _Waive comment_ are required to enable the **Waive** button that will progress the call to the _Waived_ state else the waive item(s) will not be able to save.

  6. Click the **Waive** button once the data is entered. Items that have been processed will be transitioned into the Waived Approval state where they are subject to managerial approval. A manager can reject the request in which case the demand will be transitioned with a rejected status, or they can approve the request in which case the Demand will be transitioned to Demands - Waived state.

  7. The Waive Comment that is entered can be viewed within the Transition History tab of the Margin Call.

**Note:** Should multiple Margin Calls be selected for waive approval in this manner, that the same Waive Category and Waive Comment will be applied to each item.

  8. The call will progress to the **Waiting Approval** state and remain there until either:

     * The call is [approved](<#approve-or-reject-waived-call>) and is transitioned to a Waived state.

or

     * The call is [rejected](<#approve-or-reject-waived-call>) and it will be returned to the prior state before the waive was initiated.

There are two important points to bear in mind concerning approve/reject functionality:

     1. The user who originally submitted the margin call to a **Waive Approval** state by clicking on the **Waive** Button cannot approve.

     2. Only users with certain privilege levels can approve or reject items. See the system administrator for more information regarding user roles.

Until an action is performed, the call(s) will remain in the Waiting Approval state.




**Note:**

The following important considerations are applicable in this Workflow state:

  1. Waived Demands exist in this state only on the day in which they were transitioned into this state. The date of this transition is based on the time & date of the Agreement's Principal Entity Managing Location. Once the date in the Agreement's Principal Managing Location has rolled onto the next day, then the item will no longer viewable from this screen, but can be seen by selecting a date range which includes that calculation date in the search criteria.
  2. The local time/date may not be same as principal ML time/date and therefore the items may be seen here with differing dates to the local timezone and items expiring from this grid during the day.
  3. Items in this state are filtered according to the Agreement Scope and Agreement Responsibility Groups that the user is assigned to. See [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md>).



### Non Auto Allocate Agreement

**Note:** OTC Agreements that have a Collateral Allocation Method of Segregate LockUp And Variation can generate two separate demand requirements on a single demand Margin Call. See [How to View the Margin Call Calculation Details](<margin_calls_ex_details_tab.md#isda-unsecured-with-non-netted-lock-up-margin-and-auto-allocate>) for more details.

The **Margin Type** field in the grid identifies whether the requirement is for LockUp or Variation.

Each of these requirements has its own lifecycle.

It is therefore possible to waive one of the requirements, leaving the other untouched.

## Approve or Reject Waived Call

**Procedure**

  1. Select the demand or grouped call by clicking in the left hand check box in the grid or clicking on the call.
  2. The Reject button will become enabled and the Approve button will become enabled provided the user who is doing the approving is not the same as the user who promoted the call to this state.
  3. Make a selection of whether to Approve or Reject a call.



**Reminder:** If the **Approve** button is not enabled, then the user either has insufficient privileges to perform the task, or the user is the one who originally requested the Demand be Waived.

**Approve Call**

  1. Click the [**Approve**](<margin_calls_approve.md>) button.
  2. The call will transition into a **Confirmed Approval** state.



**Reject Call**

  1. Click on [**Reject**](<margin_calls_reject.md>) button.
  2. The Reject Comment box opens.
  3. Enter a comment as to why the the user's request is being rejected to Waive a Call (the user will be able to see the comments as a tooltip in the status field).
  4. The call will be returned to a prior state depending on the state the call was waived. See [Reject from Waived Approval State](<margin_calls_reject.md#reject-from-waived-approval-state>).


