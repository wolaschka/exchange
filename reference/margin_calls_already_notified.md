# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/margin_calls_already_notified.html

# Already Notified

## Demand

It is possible to advance Demands to the Demand Workflow - Sent Demands without physically sending a Margin Call notice to the Counterparty.

This may be done for operational or relationship reasons, such as a Counterparty preference to only receive verbal Margin Calls.

**Procedure**

  1. Select the check box(es) beside the Demand(s) that need to be transition to the Sent workflow state.
  2. Click the **Already Notified** button located in the top right corner of the grid.
  3. The Demand(s) selected is (are) then advanced to Demand Workflow - Sent Demands.



**Note:**

  1. Demands that are transitioned into the Sent state via this process are identifiable.
  2. In situations for segregated OTC agreements where both requirements are Demands in this state, performing the above action of one of the Demand requirements will automatically select and perform the same action on the other.



Additionally where an OTC Agreement separates Lock Up and variation requirements, the following additional considerations apply in terms of advancing items in this state:

### Lock Up and Variation

When both requirements are demands, sending one requirement, automatically selects and sends the other.

OTC Agreements that have a Collateral Allocation Method of Segregate Lock Up And Variation can generate two separate demand requirements on a single demand Margin Call.

The Margin Type field in the grid identifies whether the requirement is for Lock Up or Variation.

As these separate requirements exist on the same single margin call, selecting an individual item to send will also result in the system sending the other item simultaneously.

## Anticipated Demand or No Action

It is possible to advance Antic Demands to the Antic Demand Workflow - Sent SVA or a No Action to a No Action - Unsent SVA without physically sending a Margin Call notice to the Principal.

This may be done for operational or relationship reasons, such as a Principal preference to only receive verbal Margin Calls.

**Procedure**

  1. Select the check box(es) beside the Antic Demand(s) or the No Action(s) Unsent SVA that needs to be transition to the Sent SVA workflow state.
  2. Click the **Already Notified** button located in the top right corner above the grid.
  3. The Antic Demand(s) or No Action selected is (are) then advanced to Sent SVA state.



**Note:** The following important considerations applicable in this Workflow state:

  1. Should the Margin Calculation Task be re-run, the New Margin Calculation Results will be processed as follows:

a. If the Collateral Allocation type is "Auto Allocate", then the original antic demand in this workflow state will be replaced in entirety by the latest Margin Calculation Result. See [How to Process Original or New Margin Calculation Results](<margin_calls_recalc.md#processing-original-or-new-margin-calculation-results>).

b. If the Collateral Allocation type is "Segregate Lock Up and Variation" (that is, the agreement is "do not auto allocate"), then an evaluation takes place to determine whether the item will be replaced or a side by side evaluation must occur. See [How to Process Original or New Margin Calculation Results](<margin_calls_recalc.md#processing-original-or-new-margin-calculation-results>) for Non Auto Allocate Agreements for more details.

  2. Additionally, if an SVA Antic Demands exist in this state on the day that they were calculated and they are not actioned by the end of the calculation date, then they are removed from the grid and are viewable only through the [Calculation Date](<margin_calls_overview.md#calcdate>) filter.

  3. The Calculation Date and time used to determine whether the SVA Antic demands are shown in this state is based on the timezone and date of the Managing Location of the Principal Entity on the Agreement.

This means that the SVA Antic Demand Calls can be seen in this state that have a calculation date that differs to the local timezone and date if Agreements exist with a variety of Principal Entity Managing Locations in the Agreement Responsibility Group.

Conversely, it also means that items will disappear from this state as the date in the Principal Managing Location for an Agreement changes and is no longer the same date as the Calculation date.

  4. Items in this state are filtered according to the Agreement Scope and Agreement Responsibility Groups that the user is assigned to. See [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md>)




## Grouped

It is possible to advance Margin Calls to the Grouped Calls - Sent state without including them being sent on the Margin Call Summary Sheet file that gets sent to the Agreement Group contacts. Additionally, this means the accompanying individual margin notices will not have been sent to the respective Agreement contacts.

This may be done for operational or relationship reasons, such as a Counterparty preference to only receive verbal Margin Calls.

**Procedure**

  1. Select the call or click the check box(es) beside the Margin Calls (s) that need transitioning to the **Sent** state.
  2. Click the **Already Notified** button located in the top right corner above the grid.
  3. The call will transition to the Grouped Calls **Sent** state.


