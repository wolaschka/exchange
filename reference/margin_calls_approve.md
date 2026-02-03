
# Approve a Margin Call with Movements

The Demand and the Collateral Movements attached to call are transitioned to Demand Workflow - Confirmed state with an In-Transit State.

Additionally, once approved, for a Collateral Movement Confirmation Notice is sent via email to [contacts that have been specified to receive the notice](<contactinfo.md>).

Only Collateral Movements that have been entered on Margin Calls can be approved via the Workflow screens.

Collateral Movements that have been entered via the Movements screen, can only be approved via the Movements Screen.

However, it is also possible that Collateral Movements entered on a Margin Call can also be approved via the Movements Screen.

When Collateral Movements are awaiting approval, they are in a to be approved state.

By approving the Margin Call and its associated movements, the Margin Call is advanced to the Confirmed state and the Market Value of (the now In Transit state) Collateral Movements is taken into consideration in subsequent Margin Calculations.

**Procedure**

  1. Navigate to the **Approvals** filter.
  2. The grid will populate with Margin Calls which have attached movements which have been sent for approval. 

**Note:** There are currently two levels of approval possible in the Demands or Antic Demands workflow. The current level of approval can be identified via a selectable field called the Required Approval Level stating either First or Second. 

  3. Select a single or multiple check boxes to the left of those Margin Calls that need approval. The **Approve** and **Reject** buttons will become enabled once at least one call's check box has been selected.

**Note:** The buttons will become enabled based upon if the user has sufficient privileges to approve Collateral Movements and the user is the not the one whom transitioned the Margin Call into this state.

  4. Click on the **Approve** button.




**Note:** If Collateral Movements are subject to a Second level of approvals, they will not yet be transitioned to the next state and remain in the To be Approved status. Follow the guides on [Understanding High Value Movement Approval Controls](<high_value_movement.md>) and [How to Approve High Value Collateral Movements](<approve_highvalue_collat_mvmt.md>) in Margin Call Workflow for further information.

  1. The actual workflow state that the call is moved to, and the update to settlement state depends on the type of margin call.



The below table summarizes the transitions.

Margin Call Type | State Margin call will be moved to | Settlement State Updated to  
---|---|---  
Demand | Demand Workflow - Confirmed | In Transit  
Antic Demand | Antic Demands Workflow - Confirmed | In Transit  
  
Simultaneously, a Collateral Movement Confirmation Notice will be sent via email to the contacts specified to receive the notice.

**Consider the following:**

  1. In order for a user to be able to approve or reject a Margin Call with Collateral Movements, they:

a. Cannot have been the user who submitted the Margin Call itself for Approval.

b. Cannot have been the last user to "touch" a Margin Call event.

For example: 

User A books a movement, User B promotes to 'To Be Approved'. User A can now approve.

User A books a movement, User A promotes to 'To Be Approved'. User B Rejects, and re-promotes to 'To Be Approved'. User A can now approve.

  2. Notwithstanding the above, only users with certain privilege levels can approve or reject items. See the system administrator for more information on user roles.

This means that if the user does not see, either the user is the one who submitted the item for approval, and/or the user does not have the necessary privilege levels to approve Collateral Movements.

  3. Collateral Movements on a Margin Call are approved or rejected in entirety. That is to say, where more than one Collateral Movement exists on a Margin Call, it is currently not possible to approve one movement only, or approve one movement and reject another. All movements must either be approved or rejected.

There is an exception: For OTC Agreements that segregate requirements, separate margin call requirements are generated for the Lock Up and for the Variation Requirements. Each requirement therefore has a margin type of either Lock Up or Variation.

Collateral movements are added per margin requirement - that is collateral movements are added per margin type.

Therefore when collateral movements are approved - they are approved per margin requirement. That is, the collateral movements for margin type lock up can be approved on the lock up requirement, but collateral movements may exist for the variation requirement and require approval separately.



