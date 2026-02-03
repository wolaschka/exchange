
# No Actions Workflow

## Behavior for Messaging Margin Calls

This topic outlines the behavior for **No Actions Demands** in the standard margin call workflow that are subject to electronic processing with Acadia via the TLM® Collateral Management Messaging Adapter

The following No Action Workflow queues have specific behavior exhibited when processing [messaging eligible](<messaging_margincalls.md#messaging-eligibility>) demands:

## Unsent SVA No Actions

Initially, all [messaging eligible](<messaging_margincalls.md#messaging-eligibility>) No Actions generated for Agreements where the Principal is set as the Valuation Agent, are contained within the Unsent SVA No Actions Workflow Queue.

When selecting on or more No Actions and then **Send Call(s)** is clicked, the following happens:

  1. TLM Collateral Management publishes notification messages for the selected items.

**Note:** These are not margin call notification messages

  2. In turn, the TLM Collateral Management Messaging Adapter "Adapter" subscribes to the notification messages.

  3. For any of the items selected in step 1) where the [Agreement has been configured with an Agreement Short Name plus Agreement Currency](<messaging_agmt_link.md>) against a group alias the Adapter takes the No Action Margin Call information and sends an electronic notification to Acadia.
  4. A no action margin call notice is also emailed to any of the Agreement contacts that are defined to receive it. That is, even Messaging Eligible calls will also send email margin call notices to the [contacts for the Agreement](<contactinfo.md#contact-information>) defined to receive it.
  5. Simultaneously, within TLM Collateral Management the selected margin call(s) are transitioned into the **Sent - SVA No Actions** workflow state to await, and process, the Counterparty's message response.



## Sent SVA No Actions State

While in this workflow, state, [messaging eligible](<messaging_margincalls.md#messaging-eligibility>) No Actions can be processed automatically by incoming electronic messages from Counterparties that are received via the TLM Collateral Management Messaging Adapter

That is, Counterparties can send their Margin Call Notifications through Acadia and the TLM Collateral Management will [match](<messaging_margincalls.md#margin-call-matching-criteria>) and automatically process the received message, and respond accordingly.

If the notification message was not received by the Counterparty, the Resend Call(s) button can be used to send the notification again. However, when this is done, TLM Collateral Management will not check whether it has already been sent, which may result in duplicate calls being issued, so it is recommended to use this with caution.

As the Principal, has calculated an No Action, and consequently cannot agree to any margin amount, there is only one main scenario of how a corresponding incoming Counterparty Margin Call Notification can be processed:

  1. The Incoming Counterparty Call is matched to a Principal's No Action Call which the Principal disputes in full.



The scenario is processed automatically.

How the scenario is processed in this workflow state is identical to how it would be processed if it were in the No Actions state, so please see the No Actions section, later in this topic for worked examples.

**Note:** No Actions this Workflow state can be affected by margin recalculations on the same day that generate differing Margin Calculation Results. If the New Margin Result is used - see [Recalculations for Messaging Margin Calls](<messaging_recalc_mc.md#recalculations-for-messaging-margin-calls>) for messaging specific behavior.

## No Actions State

Initially, all No Actions are contained within the Anticipated Demands Workflow state.

While in this workflow state, [messaging eligible](<messaging_margincalls.md#messaging-eligibility>), No Actions, can be processed automatically by incoming electronic messages received via the Acadia interface.

Counterparties can send Margin Call Notifications through via Acadia messaging, and TLM Collateral will [match](<messaging_margincalls.md#margin-call-matching-criteria>) and automatically process the received electronic demand, responding accordingly.

As the Principal, has calculated a No Action, and therefore that there is no margin requirement due, there is only one real scenario:

  1. The Incoming Counterparty Call is matched to a Principal' No Action Call which the Principal disputes in full.



All of these scenarios are processed automatically by messaging.

**Scenario 1:** The Principal receives a Counterparty Demand via messaging that it fully disputes

When TLM Collateral Management matches an incoming margin call to an No Action, it can only be fully disputed, and so the following happens:

  1. A **Fully Disputed** message is published and passed onto Acadia via the TLM Collateral Management Messaging Adapter
  2. For matched calls, the Counterparty Margin Details in TLM Collateral Management will be populated as per details received from Acadia:

Acadia Margin Call Data updated in TLM Collateral Management

Acadia Value | TLM Collateral Management Value  
---|---  
Counterparty Mark to Market | Net Exposure; Net Exposure favour of  
Counterparty Initial Margin | Lock Up Margin; Lock Up Margin favour of  
Counterparty Collateral Balance | Held / Posted Collateral  
  3. A **Full Dispute** message is published and passed onto Acadia via the TLM Collateral Management Messaging Adapter.

     1. _Dispute Categories_ and _Dispute Comments_ are published back to Acadia using _categories_ and _comments_ defined in the TLM Collateral Management _Windows service config file_.
  4. For the TLM Collateral Management No Action, the **Agreed Total** is set to zero and the call is transitioned to **No Actions - Disputes** workflow state.
     1. Dispute Amount is populated with the absolute difference between the **Cpty Call Amount** and **Agreed Total**.



## Disputes State

**Resetting Agreed Amount**

Unless absolutely necessary, it is not recommended to reset the agreed amount for calls in this margin call state. Be aware that when the agreed amount is reset in TLM Collateral Management, it will send a **Cancel Dispute** message to Acadia where the call will revert to a Received State. When the TLM Collateral Management Messaging Adapter re-polls Acadia, the margin call will be re-matched.

**Note:** No Actions this Workflow Queue can be affected by margin recalculations on the same day that generate differing Margin Calculation Results. If the New Margin Result is selected - see [Recalculations for Messaging Margin Calls](<messaging_recalc_mc.md>) for messaging specific behavior.
