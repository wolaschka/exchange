
# Grouped Workflow

## Behavior for Messaging Grouped Interest Payments

This topic outlines the behavior for Margin Calls in the grouped margin call workflow that are subject to electronic processing with Acadia via the TLM® Collateral Management Margin Call Messaging Adapter

## Unsent State

Initially, all [Messaging Eligible](<messaging_margincalls.md#messaging-eligibility>) Margin Calls [Demands, Anticipated Demands and No Actions] for Agreements that are members of a [Combined Business Lines Agreement Group](<reference_related_data.md#agreement-group>) are placed within the Unsent Demands Workflow State.

When **Send Grouped Calls** is selected, the following happens:

  1. TLM Collateral Management publishes margin call notification messages for the selected items.
  2. In turn the TLM Collateral Management Margin Call Messaging Adapter "Adapter" subscribes to the notification messages.
  3. For any margin call where the [Agreement has been configured with an Agreement Short Name plus Agreement Currency against a group alias](<messaging_agmt_link.md>) the Adapter takes the Margin Call information and sends an electronic Margin Call message to Acadia.
  4. For those Margin Calls in step 3) which have a **call type** of _Demand_ , the message sent is a Margin call notification; for call types of No Actions and Anticipated Demands, the message is a notification.(i.e. it is expected that the Counterparty will send their own call message for Anticipated Demands / No Actions)
  5. Demands from step 3) are tagged with an external Id number.
  6. An email margin call notice is also sent to any of the [contacts for the Agreement](<contactinfo.md#contact-information>) which are defined to receive it. That is, even Messaging Eligible margin calls will also send email margin call notices if the Agreements are configured to do so.
  7. Simultaneously, within TLM Collateral Management the selected margin call(s) are transitioned into the [Sent Calls](<>) workflow state to await, and process, Counterparty message responses.



**Note:**

  1. If any other transition is selected from this screen [**Waive** , or **Already Notified** , these will not cause any notifications to be published to Acadia - _Only_ the **Send** transition will cause a message to be sent through the Adapter]
  2. Incoming Margin Call Notifications received from Acadia are only matched to Grouped Margin Calls that are in the **Sent Calls** state. It is therefore _imperative that all margin calls are transitioned into that state_ in order that they are available to be matched.



## Sent Calls State

It is expected that Messaging Eligible calls will remain in this workflow state until a response is received from the Counterparty via the Acadia Adapter.

If the message was not received by the Counterparty, the user can use the **Resend Call(s)** button to send the message again. However, when this is done, TLM Collateral Management will not check whether it has already been sent, which may result in duplicate calls being issued, so it is recommended to use this with caution.

Margin Calls are processed in this workflow state according to their **call type**.

**Processing Counterparty Responses for a Principal's Demand Margin Call**

**Receiving an Agreed Response**

For a Demands in the _Awaiting Collateral Details_ the Counterparty can provide one of three responses. These responses are all treated automatically and behave identically to the corresponding scenarios for messaging eligible demands in the standard margin call workflow, so please see the following sections in the [Demand Workflow: Behavior for Messaging Margin Calls](<messaging_demand_workflow.md>) topic:

  1. [Counterparty agrees in full](<messaging_demand_workflow.md#receiving-an-agreed-response>)
  2. [Counterparty agrees partially](<messaging_demand_workflow.md#receiving-an-agreed-response>)
  3. [Counterparty disputes in full](<messaging_demand_workflow.md#receiving-an-agreed-response>)



Assuming that the Counterparty either fully or partially agrees, the expectation is that the Demand will remain in this workflow state until the Counterparty provides a collateral pledge message (i.e. what they will provide as collateral to cover the agreed amount of the Demand)

The receipt of **collateral pledge** messages for Demands is treated in this grouped workflow state identically to how it is in the standard Demands workflow state, so please see [Collateral Pledge Message receipt](<messaging_demand_workflow.md>) for more details.

Once collateral pledge information has been received and validated for Demands, they are automatically transitioned to the Grouped Margin Calls Workflow - Confirmed to be Approved State for approval. This grouped workflow state is identical to how it is in the standard Demands workflow state, so please see [Demand Margin Calls Workflow - Confirmed State](<margin_calls_overview.md#demand-standard-workflow>).

The receipt of **Pledge Amend** messages for Demands is treated in this grouped workflow state identically to how it is in the standard demands workflow state, so please see [Receiving Pledge Amend messages on Demands](<messaging_demand_workflow.md#receiving-collateral-pledge-information>) for more details.

**Processing Counterparty Responses for a Principal's Anticipated Demand Margin Call**

## Receiving a Counterparty Call

For Anticipated Demands in the Awaiting Collateral Details it is expected that the call will remain in this state until a corresponding Counterparty Call is received, matched and processed. There are four likely scenarios that can occur. Again these scenarios and how they are processed are functionally identical to scenarios for messaging eligible Anticipated Demands in the standard Anticipated Demands workflow state, so please see the following sections in the Anticipated Demand Workflow: Behavior for Messaging Margin Calls topic:-

  1. [The Principal agrees in _full_ to the received electronic Counterparty Demand message](<messaging_anticdemand_workflow.md>).
  2. [The Principal agrees _partially_ to the received electronic Counterparty Demand message](<messaging_anticdemand_workflow.md>).
  3. [The received Counterparty Margin Call message is matched to a Principal's _Demand_ Margin call](<messaging_anticdemand_workflow.md>).
  4. [The received Counterparty Margin Call message is matched to a Principal's _No Action_ Margin call](<messaging_anticdemand_workflow.md>).



Assuming that the Principal either fully or partially agrees to a received Counterparty Call Message (scenario 1 or 2 above), the next stage of the process is to book one or more collateral movements to satisfy the Total Agreed amount and meet the margin requirement. This can be accomplished in two ways:

  1. Principal books the collateral movements and transitions the Anticipated Demand to the **Confirmed Approval** grouped margin call workflow state. This is standard functionality, so please see **Grouped Margin Calls Workflow - Agreed** for more details on this if needed.
  2. Receive an Acadia "suggested" collateral pledge message. This process is identical to the _standard_ Anticipated Demands workflow, so please see *_Anticipated Demands Margin Call Workflow - Agreed_ State for more details on this if needed.



## Processing Counterparty Responses for a Principal's No Action Margin Call

**Receiving a Counterparty Call**

For No Actions in the Awaiting Collateral Details it is expected that the call will remain in this state until a corresponding Counterparty Call is received, matched and processed. As the Principal has calculated that there is no margin requirement due, any call received and matched to the No Action will generate a full dispute. This functionality is identical to how messaging eligible No Actions are treated in the standard No Actions margin call workflow state so please see the [No Actions Workflow Behavior for Messaging Margin Calls](<messaging_noactions_workflow.md>) topic for more details

### Resetting Agreed Amount

Unless absolutely necessary, it is not recommended to reset the agreed amount for calls in this margin call state. The behavior here is identical to the behavior in the standard margin call workflow states and will vary depending on the call type of the margin call.

Therefore see the corresponding topics:

  * [Resetting the Agreed Amount for Agreed Messaging Demand Margin calls](<messaging_demand_workflow.md#confirmed-approval-state>)
  * [Resetting the Agreed Amount for Agreed Messaging Anticipated Demands Margin Calls](<messaging_anticdemand_workflow.md#confirmed-approval-state>)
  * [Resetting the Agreed Amount for No Action Margin Calls](<messaging_noactions_workflow.md#no-actions-state>)



Note: Margin Calls this Workflow State can be affected by margin recalculations on the same day that generate differing Margin Calculation Results. If the New Margin Result is selected - see [Recalculations for Messaging Margin Calls](<messaging_recalc_mc.md>) for messaging specific behavior.

## Confirmed Approval State

Messaging eligible Margin Calls in this Workflow state are subject to either automatic or manual approval. This process is identical to the _standard_ Demand and Anticipated Demand workflow states, so please see [Demand Margin Call Workflow - Confirmed Approval State](<margin_calls_workflow.md#in-progress>) and / or [Anticipated Demand Margin Call Workflow - Confirmed Approval State](<margin_calls_workflow.md#in-progress>).

The following behavior occurs when a Messaging Eligible Margin Call is approved in this workflow state.

**Approving the Margin Call:** when Approve Pending Cpty is selected for a margin call in this state the following occurs

  1. For _Demands_ : when Approve for a Demand margin call is selected in this state the following occurs
     1. the Margin Call and its attached Collateral Movements are transitioned to [Grouped Margin Calls Workflow - Confirmed State](<margin_calls_workflow.md#approvals>).
     2. A **Pledge Accepted** Message is sent to the Counterparty via Acadia. This completes the margin call processing cycle for the Demand in Acadia.
  2. For _Anticipated Demands_ :
     1. A Collateral Pledge message is sent via the adapter to Acadia which contains details of the collateral movements that the Principal will instruct to cover the Total Agreed Amount of the call.
     2. The Anticipated Demand and the collateral movements attached to it are transitioned to [Grouped Margin Calls Workflow - Pending Cpty Response State](<margin_calls_workflow.md#approvals>).



**Note:**

  1. While Approved Pending Counterparty can be selected to approve a Demand margin call, it is recommended to select Approve in the Grouped Margin Call Workflow. Selecting Approved Pending Counterparty for a Demand will approve the margin call and transition it to Grouped Margin Calls Workflow - Confirmed Pending Cpty Response State, where the user will then have to select Counterparty Accept to transition the margin call to Grouped Margin Calls Workflow - Confirmed Sent to Settlements State.
  2. While Approve can be selected to approve an Anticipated Demand margin call, it is recommend to select Approved Pending Counterparty in the Grouped or Approve Pending Counterparty in the Standard Margin Call Workflow, that is if the intent is to have TLM Collateral Management process incoming Pledge Accepted or Pledge Rejected messages sent by the Counterparty via Acadia.

  3. For approved calls, TLM Collateral Management will email collateral confirmation notices to those [Agreement Contacts](<contactinfo.md#contact-information>) which are configured to receive them.




**Rejecting the Demand** : when a Messaging Eligible Demand is rejected in this workflow state, the following occurs:

  1. The Demand and its attached Collateral Movements are transitioned to [Agreed workflow state](<margin_calls_workflow.md#in-progress>), and the movements updated to a **Rejected** settlement state.
  2. TLM Collateral Management publishes a message that the Margin Call and associated movements have been rejected.
  3. The Messaging Adapter listens for messages, and will therefore consequently, send a **Pledge Reject** message to the Counterparty via Acadia. 



**Processing Pledge Cancel Messages**

While in this workflow state, Demands can be processed by receiving a **Pledge Cancel** message from Acadia. Should this occur, the margin call is processed as follows:

  1. The Demand and its attached Collateral Movements are transitioned to [Grouped Margin Calls Workflow - Agreed State](<margin_calls_workflow.md#in-progress>), and the movements updated to a Rejected settlement state.
  2. The Demand can then be further processed in that state via **Pledge Amend** messages.



## Agreed No Action State

**Note:** No Actions this Workflow State can be affected by margin recalculations on the same day that generate differing Margin Calculation Results. If New Margin Result is used - see [Recalculations for Messaging Margin Calls](<messaging_recalc_mc.md#recalculations-for-messaging-margin-calls>) for messaging specific behavior.

## Waived Approval State

Standard workflow behavior applies to messaging eligible **Demands** in this **workflow state** with the following exceptions.

**Approving the Waive** : causes the following behavior to occur:

If the Margin Call is a **Demand** :

  1. The Demand is transitioned to Grouped - Waived workflow state.
  2. Simultaneously, TLM Collateral Management publishes a message that the margin call (and any associated calls if they exist) have been cancelled.
  3. The TLM Collateral Management Margin Call Messaging Adapter in turn, listens for messages, and sends a Cancel Margin Call message via Acadia to the Counterparty.



If the Margin Call is a **Anticipated Demand** or **No Action** :

  1. The Margin Call is transitioned to Grouped - Waived workflow state.
  2. Unlike Demands, no message is sent to Acadia.



**Rejecting the Waive**

When a waive is rejected for a demand, it is transitioned back to the **Sent Calls** state. When a demand is waived, the **Agreed Amount** will be reset.

If a Waive is rejected, the agreed amount will need to be reset and then book the movements. The call can then be transitioned and approved as needed.

**Note** : However, rejecting may not work. When pledges are rejected, the pledge amp ids that are being rejected are sent to Acadia. This would have been set as the external movement id when the movements were originally created. As the movements are being reprocessed are not the same as the ones that had been set to Ignored when the agreed amount was reset when Waive was selected, a reject at this point would not be communicated properly to Acadia, but would transition in TLM Collateral Management. If the movements need to be rejected at this point (after a Waive and then a reject is tried), it is best to coordinate with the counterparty, directly.

**Note:** Margin Calls in this Workflow State can be affected by margin recalculations on the same day that generate differing Margin Calculation Results. If the New Margin Result is selected - see [Recalculations for Messaging Margin Calls](<messaging_recalc_mc.md>) for messaging specific behavior.

## Waived State

**Note:** Margin Calls in this Work flow State can be affected by margin recalculations on the same day that generate differing Margin Calculation Results. If the New Margin Result is selected - see [Recalculations for Messaging Margin Calls](<messaging_recalc_mc.md>) for messaging specific behavior.

## Confirmed - Pending Cpty Response

Margin calls may now transition to the Confirmed - Pending Cpty Response workflow state from the Confirmed - to be Approved. This provides a step in the workflow for the margin call to be updated with the counterparty’s response (accept/reject) to the principal’s proposed margin call movements. Margin calls in this state can be transitioned either via a subscribed message or through the UI.

  * For _Demands_ :
    * the Margin Call and its attached Collateral Movements are transitioned to Group Margin Calls Workflow - Confirmed to be Approved State and the movements updated to an In Transit settlement state. 
    * A **Pledge Accepted** Message is sent to Counterparty via Acadia. This completes the margin call processing cycle for the Demand in Acadia.
  * For _Anticipated Demands_ :
    * If the Counterparty sends a Pledge Accept message, the Margin Call and its attached Collateral Movements are transitioned to Grouped Margin Calls Workflow - Confirmed Sent to Settlements State. The movements are updated to a status of In Transit. This completes the margin call processing cycle for the Anticipated Demand in Acadia. 
    * If the Counterparty sends a Pledge Reject message, the Margin Call and its attached Collateral Movements are transitioned to Grouped Margin Calls Workflow - Agreed Awaiting Collateral Details State. The movements are updated to a status of Rejected, and a message is sent to the Counterparty via Acadia cancelling the movements. The movements are cancelled so that any changes that are made by the user in the Agreed-Awaiting Collateral Details State and then approved will send the movements as new movements to the Counterparty via Acadia.



**Rejecting the Anticipated Demand** : when a Messaging Eligible Demand is rejected in this workflow state, the following occurs: 

## Disputes State

**Resetting Agreed Amount**

Unless absolutely necessary, it is not recommended to reset the agreed amount for calls in this margin call state. The behavior here is identical to the behavior in the standard margin call workflow states and will vary depending on the _call type_ of the margin call.

Therefore see the corresponding topics:

  * [Resetting the Agreed amount for disputed Messaging Margin Calls](<messaging_demand_workflow.md#disputes-state>).
  * [Resetting the Agreed amount for disputed Anticipated Demand Messaging Margin Calls](<messaging_anticdemand_workflow.md#disputes-state>).
  * [Resetting the Agreed amount for disputed No Action Messaging Margin Calls](<messaging_noactions_workflow.md#no-actions-state>).



**Note:** Margin Calls in this Workflow State can be affected by margin recalculations on the same day that generate differing Margin Calculation Results. If the New Margin Result is selected - see [Recalculations for Messaging Margin Calls](<messaging_recalc_mc.md>) for messaging specific behavior.
