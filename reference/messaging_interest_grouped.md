
# Grouped Interest Payments

## Behavior for Messaging Grouped Interest Payment

This topic outlines the behavior for Interest Payment Distributions and Roll Ins in the grouped interest payment workflow that are subject to electronic processing with Acadia via the TLM® Collateral Management Messaging Interest Adapter.

## Unsent

Initially, all [Messaging Eligible](<messaging_margincalls.md#messaging-eligibility>) Interest Payment Distributions and Rolls Ins for Agreements that are members of a [Combined Business Lines Agreement Group](<reference_related_data.md#agreement-group>) are placed within the Due to be Sent Workflow state.

When Send Grouped Interest Payments are selected, the following happens:

  * TLM Collateral Management publishes interest payment notification messages for the selected items.
  * In turn, the TLM Collateral Management Messaging Interest Adapter "Interest Adapter" subscribes to the notification messages.
  * For any interest payment where the Agreement has been configured with an [Agreement Short Name plus Agreement Currency against a group alias](<messaging_agmt_link.md>) the Interest Adapter takes the Interest Payment information and sends an electronic Interest Payment message to Acadia.
  * The Interest Payments are tagged with an external Id number.
  * An email interest payment notice is also sent to any of the contacts for the Agreement which are defined to receive it. That is, even Messaging Eligible interest payments will also send email interest payment notices if the Agreements are configured to do so. 
  * Simultaneously, within TLM Collateral Management the selected interest payment(s) are transitioned into the Sent workflow state to await, and process, interest payment updates from Acadia.



**Note:**

  1. If any other transition is selected from this screen [Already Notified, these will not cause any notifications to be published to Acadia - Only the Send transition will cause a message to be sent through the Interest Adapter]
  2. Response statuses received from Acadia for the interest payments are only updated in the Sent state. It is therefore imperative that all interest payments are transitioned into that state in order that they can be updated.



## Sent

It is expected that Messaging Eligible interest payments will remain in this Workflow state until a status update response is received Acadia via the Interest Adapter.

If the original interest payment message was not received by the Counterparty, the user can use the **Resend** button to send the interest payment notification message again. However, when this is done, TLM Collateral Management will not check whether it has already been sent, which may potentially result in duplicate interest payment notifications being issued which may result in an error response from Acadia for a duplicate message. It is recommended to use this with caution.

Interest payments in this state that are cancelled through recalculation (single or via task) or transition: extend settlement date, cancel extend settlement date, cancel ad hoc payment or change in netting (i.e. gross to net; net to gross) will publish message that will be relayed to cancel the original interest payment in Acadia. This will clear the way for the updated interest payment to be sent by the user.

**Interest Payment status responses from Acadia**

While in the Sent workflow state, the Interest Adapter will process interest statements for the following statuses:

## Finalized

  1. [Agreed amount and Settlement Date](<messaging_understanding_interest_payment.md>) will be updated based upon the provided match and finalized interest payment from Acadia. Please see Acadia documentation for further information on how the payment amount and value date fields may be set based upon operational tolerances and cash cut offs.
  2. SSIs will be applied.
  3. Physical Settlement flag will be marked as checked.
  4. Interest Payment will be transitioned to Agreed – to be Approved.



## Mismatched or Disputed

A message exception will be published to the TLM® Collateral Management Messaging Intervention Tool for statuses of Mismatched or Disputed with details for the user to investigate.

**Note:**

  * Additional interest payment statuses (i.e. Unpaired) will not be processed by the Interest Adapter and may need further investigation within Acadia.
  * Process as Distribution and Process as Roll In are outside the scope of this integration. Additional processing may be required where the interest statement sent to Acadia from TLM Collateral Management may need to be cancelled, prior to sending an updated statement.



## Agreed Approval

Once Interest Payments have been agreed with the Counterparty and the Agreed Amount and Settlement Date for the payment recorded (whether manually entered or uploaded via a payment summary file), the Interest Payment needs to be independently approved before it can be further processed through the Workflow.

Interest Payment Items that are sent for managerial approval are displayed in the grid when this Workflow State name is clicked.

Interest Payments can be approved or rejected from this state.

**Note**

  * Actions within this state are not integrated with Acadia.
  * Interest payments that have been transitioned to this state have been finalized in Acadia.
  * While the state and actions are fully audited within TLM Collateral Management, [rejecting](<messaging_knownconsiderations.md>) an interest payment that has been finalized in Acadia will require coordination with the Counterparty to resolve.


