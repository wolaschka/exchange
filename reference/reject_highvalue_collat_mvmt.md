# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/reject_highvalue_collat_mvmt.html

# Reject High Value Collateral Movements in Margin Call Workflow

## Overview

In Scope High Value Movements that are subject to a Second level of approval can be rejected.

During the Second level of approvals, margin call and its associated collateral movements can be rejected which will cause the Margin Call to be moved back to the preceding Workflow state which is the _Agreed_ state with a rejected state, where the user will need to correct the offending entries.

For further understanding of applicability, refer to the topic [Understanding High Value Movement Approval Controls](<high_value_movement.md#understanding-high-value-movement-approval-controls>).

While in a Rejected state - the value of the Agreed Total and not the Movement Total will be taken into consideration for Margin Calculation purposes.

**Procedure**

  1. Select the **Confirmed Approval** state.
  2. The Grid will populate with Margin Calls with attached movements which have been sent for a First level of approval or have already been First level approved and are awaiting a Second level of approval. 
  3. Select the Margin Call awaiting a Second level of approval that needs to be reject by either clicking the checkbox or clicking on the Margin Call. 
  4. Once the call is selected, the **Approve - Second Level** and **Reject - Second Level** buttons will become eneabled if:

     1. The user has sufficient privileges to approve High Value Collateral Movements.
     2. The user is not the user who promoted the collateral movements for the First level of approval.
     3. The user is not the user whom approved the First Level.
  5. If unsatisfied with the Collateral Movements that have been entered, click the **Reject - Second Level** button.

  6. The _Reject Comments_ dialog box will appear and a comment is required. 
  7. Click the **Reject** button. The Margin call, together will all attached Collateral Movements will be moved back to _In Progress_ state with a Rejected status.



**Please note the following:**

  1. Collateral Movements on a Margin Call are approved or rejected in entirety. That is to say, where more than one Collateral Movement exists on a Margin Call, it is currently not possible to approve one movement only, or approve one movement and reject another. The user must either approve all movements or reject all movements.
  2. There is an exception to 1) for OTC Agreements that segregate requirements. For these form of agreements, separate margin call requirements are generated for the Lock Up and for the Variation Requirements. Each requirement therefore has a margin type of either Lock Up or Variation.

Collateral movements are added per margin requirement - that is collateral movements are added per margin type. Therefore when collateral movements are approved - they are approved per margin requirement. That is, the collateral movements for margin type lock up can be approved on the lock up requirement, but collateral movements may exist for the variation requirement and require approval separately.



