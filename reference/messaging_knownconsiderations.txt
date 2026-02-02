# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/messaging_knownconsiderations.html

# Known Considerations

For the initial implementation of Messaging Functionality, there are some restrictions in terms of how specific functionality interacts with Acadia.

These are summarized in the below table:

Area | Comment  
---|---  
Matching an Incoming call to a Demand | TLM Collateral Management has the ability to match an Incoming call from Acadia to a Demand within its system (where no other call type is present).  
  
The Demand call will transition to the Disputes state as a fully disputed margin call, updated with the Cpty's call and margin details, and the configured Messaging Dispute Reason and Comment. A message is then published to Acadia responding to the Counterparty's Incoming call but not for the Outgoing Demand.  
  
This means there will be an extra unactioned margin call in Acadia. The expectation is that the Counterparty will dispute the Outgoing Demand, sending a fully disputed message from Acadia to TLM Collateral Management. TLM Collateral Management will then publish an error message to the TLM Collateral Management Messaging Intervention Tool indicating the Principal's Demand is no longer in a valid workflow state to be disputed.  
Received Pledges | Manually adding to or editing received collateral pledge data, will not be picked up and communicated back to Acadia. Therefore any of the following actions:  
  
Editing Collateral Movement  
  
Deleting Collateral Movement  
  
Manually Adding Collateral Movement  
  
when performed on a Messaging Eligible Demand are not communicated back to Acadia.  
Resetting Agreed Amount | Resetting the Agreed Amount on Margin Calls will not reset the Agreed state with Acadia.  
  
**For Demands** \- It will not change the Agreed state in MS. TLM Collateral Management cannot receive pledges from a counterparty when the Agreed Amount is not set. The Agreed will not set again, unless MS sends an ‘Agreed’ business state, prior to sending pledges.  
  
The following workaround can be used to get the call back into an eligible state for TLM Collateral Management and MS to proceed Reset Agreed amount after counterparty pledges. Counterparty can cancel their pledge, sending the call back to Agreed state, TLM Collateral Management will poll for and get this agreed state and then update the agreed amount. The Counterparty can then resend their collateral pledge details.  
  
**Waiving a call in TLM Collateral Management will reset the agreed amount** \- Resetting the Agreed Amount will set the status for any movements to Ignored. This may impact any requests from a cpty to amend or cancel pledges, as well as, rejecting the cpty's pledges, as the principal, from TLM Collateral Management. In each of these cases, TLM Collateral Management uses the pledge amp id from Acadia to process these actions. By setting the original movements to Ignored, TLM Collateral Management may not be able to find these movements by the pledge amp id to process them.  
Margin Call Resend | Resending a call may duplicate the call.  
Send Messages to Acadia | The following are actions that send messages to MS:  
  
1\. **Send Call(s)** – Unsent Demands, Unsent – SVA Anticipated Demands, Unsent – SVA No Actions  
  
2\. **Send Grouped Call(s)** – Unsent Calls  
  
3\. **Resend Call(s)** – Sent Demands, Sent – SVA Anticipated Demands, Sent – SVA No Actions  
  
4\. **Agree Call** \- Sent Awaiting Collateral Details, Agreed Awaiting Collateral Details  
  
5\. **Approve** \- Confirmed – to be Approved and Movements module  
  
It is required to run the Margin Calculation Analysis task directly after the Margin Calculation task in order to publish Collateral Positions used within the margin calculation. If the Margin Calculation Analysis task is not run, live Collateral Positions publish.  
Collateral Movement Settlement adjustments | The processing cycle for margin calls in Acadia does not consider settlement activity.  
  
Therefore any adjustments to the settlement state of collateral movements on a margin call, e.g:  
  
Failing, cancelling, cancel correcting a collateral movement cannot be sent to or received from the Counterparty via Acadia.  
Dispute Categories and Comments | TLM Collateral Management defaults the Dispute Category and Comments.  
  
They are defaulted as per the web.config and Algo.Collateral.Services.MessagingSubscriptionService.exe.config to Messaging Dispute and Messaging Dispute.  
  
TLM Collateral Management will use these for any Acadia disputes. These values can be changed to suit the user.  
  
**Demands** \- TLM Collateral Management will append Dispute Categories and Comments from Acadia to Dispute Comment  
  
**Antics / No Actions** \- TLM Collateral Management will send its Dispute Categories and Comments; the Adapter will supply Acadia with a Dispute Category of Call Amount Discrepancy and Comment that contains TLM Collateral Management Dispute Categories and Comments in a concatenated format.  
Pledge Information | Pledge information received from Acadia with regards to Price, FX Rate, Haircut, Pre Haircut Market Value and Post Haircut Market Value will be populated in the Create Reason for a movement. The user can use this to compare to the movement valuations calculated by TLM Collateral Management.  
Agreement Linking | TLM Collateral Management uses an Alias Group in which the **Acadia Agreement Short Name plus Agreement Currency** is populated.  
  
This will be used for sending and receiving margin calls with Acadia. (_Alias Group_ needs to be created in TLM Collateral Management reference data, and that Alias Group Name needs to be populated in all of the following configuration files:  
  
**Web.config** \- MessagingAgreementGroupAliasName  
  
**Algo.Collateral.Services.WindowsServiceHost.exe.config** \- MessagingAgreementGroupAliasName  
  
**Algo.Collateral.Services.MessagingSubscriptionService.exe.config** \- MessagingAgreementGroupAliasName  
  
**Acadia.properties.cfg ** - AgreementAliasGroupName  
Dispute Tolerance | For Anticipated Demands where the Cpty call amount is greater than the Principal call amount, but _within dispute tolerance_ , the Adapter will only communicate the _agreed amount_ back to Acadia, but not any dispute details. This is because TLM Collateral Management _has not created a dispute_ because the difference is _within_ your defined internal dispute tolerance policy amount.  
  
As such, the Principal’s details, outside of the agreed amount, will not be communicated to Acadia for an Anticipated Demand where the Principal call amount is less than Cpty call amount, but within dispute tolerance.  
Collateral Movement Notifications | When processing a Pledge Amend message, TLM Collateral Management will perform additional background processing to ensure the original movements have been correctly set to ignored _and_ no longer associated with the margin call. These processes will generate two Movement Notifications that will look identical except for the Version number. The second message gets generated during the process to disassociate the ignored movements from the margin call in order to book the amended movements. This may appear to be a duplicate message but is not.  
Zero Call Amount | Presently, TLM Collateral Management is unable to match received calls where the counterparty call amount is zero. This is accordance with the application's business logic where users cannot enter a counterparty call amount of zero in the GUI.  
Agreed Cancel | While TLM Collateral Management supports Agreed Cancel for Demand and Anticipated Demands, coordination will be needed with Acadia and the client to determine if there is additional set up required in Acadia.  
Pledge Cancel, Pledge Amend | TLM Collateral Management supports Counterparty responses of Pledge Cancel and Pledge Amends from Acadia provided the margin call is in a valid workflow state of _Sent - Awaiting Collateral Details_.  
  
Pledge Amend responses from the counterparty will result in two messages being sent to TLM Collateral Management from Acadia; one for the Amend and one for a Pledge. This is a result of Acadia resetting their margin call to a Pledged state right after the Amend is executed. Both messages will be sent to TLM Collateral for processing. However, the Pledge message will generate an error and publish to the TLM Collateral Interventions tool. This will only occur for a full replacement of the existing Pledge with a new Pledge.  
Counterparty Margin Call Cancel | TLM Collateral Management supports a counterparty response from Acadia to cancel the Counterparty's margin call provided the margin call is in a valid workflow state of _Agreed - Awaiting Collateral Details state_.  
Auto Approvals | While TLM Collateral Management supports automatically approving Demand and Anticipated Demand margin calls, coordination will be needed with Acadia and the client regarding the setup required within Acadia to achieve this.  
  
**Note:** Collateral Pledges booked via the Pledge Amend message are not subject to Auto Approval. The process to amend existing pledges is deemed an exception process requiring manual approval of the pledges.  
Interest Calculation Type | TLM Collateral Management has Interest Calculation types of Simple, Compounding on Business Days and Compounding on Calendar Days with their Corresponding "Allows Negative" types. When sending the "Allows Negative" types, the Interest Adapter converts them to either Simple, Compounding.  
Interest Benchmark | It is recommended that Acadia Benchmarks be used as the Cash Interest Indexes. Acadia uses Benchmark as a matching criteria for interest payments. The Interest Adapter does not convert the Index name to match the Benchmark name.  
Sending Value Date | Value Date is published for distributions when the interest payment is published, and is based upon the default settlement date from when the interest payment is sent. Acadia uses the value date for finalizing interest payments.  
Updating Agreed Amount and Settlement Date | Agreed Amount and Settlement Date will be updated based upon the provided matched and finalized interest payment information from Acadia. Please see Acadia documentation for further information on how the payment amount and value date fields may be set based upon operational tolerances and cash cut offs.  
Asynchronous Indexes | It is possible to set different Indexes in TLM Collateral Management for Held and Posted balances when calculating interest payments. Netted payments may have both a Held and Posted Index. Only one Index will be published for interest payments that are sent to Acadia. TLM Collateral Management will publish the Index that is related to the direction of the payment (Due to Prin / Posted Index, Due to Cpty Held Index). Gross payments will only have either a Held or Posted Index, not both.  
Interest Payment Rejections | Acadia will attempt to match the TLM Collateral Management interest payment statement to the one sent by your counterparty. Once Acadia matches the details of each parties' interest payment statement, it will look to finalize the payment and value date. The Finalized payment is processed in TLM Collateral Management and sent for workflow approval. While this workflow approval is a step in TLM Collateral Management, any rejections in TLM Collateral Management may require the user to coordinate further processing with their counterparty, as the interest payment is considered agreed and final in Acadia.
