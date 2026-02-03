
# Workflow Filters

## Overview

The Margin Call Workflow has predefined filters based on the Workflow State. The user can view all calls under the [**All**](<#all>) filter. The calls can be fully progressed through this filter to the settlement state.

## All

This filter provides the user with a single point of reference to view all margin calls from the initial state of being executed to the point of confirmed to be settled.

The results of this predefined filter can contain pages of data but has the ability to be further refined based on the [search criteria](<margin_calls_overview.md#search-criteria>).

When a margin call(s) is selected by checking the box located on the left side of the margin call, action buttons become available based on the workflow state of the call(s) and/or if multiple calls are selected.

## To Be Started

Calls that are in this predefined filter are ones that are waiting to be started. They are in a workflow state of the following:

  * Unsent
  * Anticipated
  * No Action
  * Unsent SVA
  * To Be Reviewed



The workflow state and the call type will determine which actions buttons will become available when a call(s) is (are) selected.

The availability of actions that can occur are the following:

Action | Description  
---|---  
[Send Call(s)](<margin_calls_send_call.md>) | The Margin Call notice is sent to the counterparty and the call is moved to the workflow state of **Sent** and the call moves to the predefined filter of [**In Progress**](<#in-progress>).  
[Agree](<margin_calls_agree.md>) | When this button is selected, the user is prompted with another window to enter the Cpty Call Amount and a required Agreed Amount. The user can then promote the event to the workflow state of _Agreed_ by clicking on the **Agreed** button.  
[Waive](<margin_calls_waived.md#waived>) | The call is waived due to a credit, or trades are closed out, or other reasons. The call will move to a **Waive** workflow state.  
[Dispute](<margin_calls_disputes.md#standard-margin-call-disputes>) | The call is disputed due to a disagreement on the call amount. The user will be prompted with another window and is required to select a preset category and a comment of why the call is disputed. The call will then move to a workflow state of [Disputed](<#disputed>). See [How to enter a Dispute](<margin_calls_disputes.md#standard-margin-call-disputes>)  
[Already Notified](<margin_calls_already_notified.md>) | The counterparty was already notified so by selecting this option, no notice is sent to the counterparty but the call is progressed to the workflow state of **Sent** and the call moves to the predefined filter of [**In Progress**](<#in-progress>).  
[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>) | When selected, the exposure statement will be sent to the counterparty.  
  
The user will be notified if the statement has not been successfully sent by an error message appearing on the screen stating "A statement cannot be generated if there are no exposure trades for this margin call or if the analysis has not been run for this margin call". If the message disappears before the user had a chance to read it all, the user can click on the notifications which is the bell in the top right corner of the screen.  
[Send Position Statement](<margin_calls_statements.md#position-statement>) | When selected, a statement in Microsoft™ Excel spreadsheet software format will be emailed to those contacts on the agreement who are configured to receive Collateral Position Statements.  
[Send Custom Statement](<margin_calls_statements.md#custom-statement>) | When selected, the custom statement that has been defined on a contact that is associated with the agreement will be sent.  
[View Call Notice](<margin_calls_statements.md#margin-call-notice>) | When selected, a pdf file will generate for the user to view the margin call notice.  
[View Exposure Trades](<margin_calls_statements.md#exposure-statement>) | When selected, a Microsoft™ Excel spreadsheet will get generated for the exposure trades used in Margin Calculations.  
  
## In Progress

Margin Calls that are in this predefined filter are in progress (i.e. sent and/or awaiting collateral response). They are in a workflow state of the following:

  * Agreed
  * Sent SVA
  * Awaiting Collateral
  * Pending Cpty
  * Sent



Depending on the type of the call and the workflow state that it is in will determine which actions become available.

The availability of actions that can occur are the following:

Action | Description  
---|---  
[Agree](<margin_calls_agree.md>) | When this button is selected, the user is prompted with another window to enter the Cpty Call Amount and a required Agreed Amount. The user can then promote the event to the workflow state of *_Agreed_ by clicking on the Agreed button.  
Partially Agreed |   
Dispute | The call is disputed as a partial due to a disagreement on the call amount. The user will be prompted with another window and is required to select a preset category and a comment of why the call is being disputed. The call will then move to a workflow state of **Disputed** and can be viewed in the predefined filter of [Disputed](<#disputed>).  
[Create Movement](<movements.md#add-movement-on-a-margin-call>) | Enter the corresponding details of the piece(s) of collateral that will be used to meet the margin requirement.  
Full Return | If a call has a return, using the "Full Return Positions" allows the user to return the entire position with a click of a button. After the call has been agreed, from the positions tab, select position(s) to be fully return and the associated movement(s) will automatically be generated. This will use the full available notional, as well as the default maturity date and SSI for that instrument.  
[Send for Approval](<margin_calls_send_for_approval.md>) | The call will be move to the predefined filter of **Approvals** with a workflow state of **Confirmed Approval** for another user to approve the movements.  
  
Once all the required collateral movements have been entered, the next stage of process is to submit the Demand and its associated Collateral Movements for Movement Approval. This assumes that the standard TLM® Collateral Management workflows have been implemented in their default state. It is possible to disable the requirement for margin calls to be approved. Should workflow approvals be disabled, this topic is still relevant. When transitioning the Margin Call to the Confirmed Approval Workflow state, each Demand Margin Call and its associated Collateral Movements must be approved before the Margin Call can be advanced into the Demand Workflow - Confirmed state.  
[Resend Calls](<margin_calls_resend.md>) | Margin call Notices can be resent. This may be necessary if the Counterparty has not received, or has misplaced the Margin Notice, or if the transmission of the Notice failed and the cause of that failure has not been remediated.  
[Waive](<margin_calls_waived.md#waived>) | Waive a margin call that will transition to a **To be Approved** workflow state.  
[Reset Agreed Amount](<margin_calls_reset_agreed.md>) | This allows the user to reset the agreed amount for the call or on a partial dispute and send the call back the **Sent** state.  
[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>) | When selected, the exposure statement will be sent to the counterparty.  
  
The user will be notified if the statement has not been successfully sent by an error message appearing on the screen stating "A statement cannot be generated if there are no exposure trades for this margin call or if the analysis has not been run for this margin call". If the message disappears before the user had a chance to read it all, the user can click on the notifications which is the bell in the top right corner of the screen.  
[Send Position Statement](<margin_calls_statements.md#position-statement>) | When selected, a statement in Microsoft™ Excel spreadsheet software format will be emailed to those contacts on the agreement who are configured to receive Collateral Position Statements.  
[Send Custom Statement](<margin_calls_statements.md#custom-statement>) | When selected, the custom statement that has been defined on a contact that is associated with the agreement, will be sent.  
[View Call Notice](<margin_calls_statements.md#margin-call-notice>) | When selected, a pdf file will generate for the user to view the margin call notice.  
[View Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) | When selected, a Microsoft™ Excel spreadsheet will get generated for the exposure trades used in Margin Calculations.  
  
## Approvals

Calls that are in this predefined filter are ones that are waiting to be approved. They are in a workflow state of the following:

  * Waived Approval
  * Confirmed Approval
  * To Be Approved



Depending on the type of the call and the workflow state that it is in will determine which actions become available.

The availability of actions that can occur are the following:

Action | Description  
---|---  
[Approve](<margin_calls_approve.md>) | Approve the Margin Call and its associated movements, the Margin Call is then advanced to a **Confirmed** or **Approved** workflow state and the Market Value of (the now In Transit state) Collateral Movements is taken into consideration in subsequent Margin Calculations.  
[Reject](<margin_calls_reject.md>) | Rejecting a margin call with collateral movements will require an explanatory comment. The call will be transitioned back to the In Progess predefined filter for further processing.  
[Approve Pending Counterparty](<margin_calls_approve_pending_cpty.md>) | For Anticipated Demands, this is a final approval before sending the call onto settlement. The Principal has proposed movements on the call and the Counterparty needs to provide confirmation.  
[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>) | When selected, the exposure statement will be sent to the counterparty.  
  
The user will be notified if the statement has not been successfully sent by an error message appearing on the screen stating "A statement cannot be generated if there are no exposure trades for this margin call or if the analysis has not been run for this margin call". If the message disappears before the user had a chance to read it all, the user can click on the notifications which is the bell in the top right corner of the screen.  
[Send Position Statement](<margin_calls_statements.md#position-statement>) | When selected, a statement in Microsoft™ Excel spreadsheet software format will be emailed to those contacts on the agreement who are configured to receive Collateral Position Statements.  
[Send Custom Statement](<margin_calls_statements.md#custom-statement>) | When selected, the custom statement that has been defined on a contact that is associated with the agreement, will be sent.  
[View Call Notice](<margin_calls_statements.md#margin-call-notice>) | When selected, a pdf file will generate for the user to view the margin call notice.  
[View Confirmation Notice](<margin_calls_statements.md#confirmation-notice>) | When selected, a pdf file will generate for the user to view the details of the Collateral Movements that are associated to those Margin Calls that have been selected for the inclusion on the notice.  
[View Exposure Trades](<margin_calls_statements.md#exposuretrades>) | When selected, a Microsoft™ Excel spreadsheet will get generated for the exposure trades used in Margin Calculations.  
  
## Disputed

Calls that are in this predefined filter have been disputed. They are in a workflow state of the following:

  * [Disputed](<margin_calls_disputes.md#standard-margin-call-disputes>)



Depending on the type of the call and the workflow state that it is in will determine which actions become available.

The availability of actions that can occur are the following:

Action | Description  
---|---  
[Reset Call Amount](<margin_calls_disputes.md#resetting-agreed-amount>) | This allows the user to reset the call that was disputed in full and send the call back to its initial state.  
[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>) | When selected, the exposure statement will be sent to the counterparty.  
  
The user will be notified if the statement has not been successfully sent by an error message appearing on the screen stating "A statement cannot be generated if there are no exposure trades for this margin call or if the analysis has not been run for this margin call". If the message disappears before the user had a chance to read it all, the user can click on the notifications which is the bell in the top right corner of the screen.  
[Send Position Statement](<margin_calls_statements.md#position-statement>) | When selected, a statement in Microsoft™ Excel spreadsheet software format will be emailed to those contacts on the agreement who are configured to receive Collateral Position Statements.  
[Send Custom Statement](<margin_calls_statements.md#custom-statement>) | When selected, the custom statement that has been defined on a contact that is associated with the agreement, will be sent.  
[View Call Notice](<margin_calls_statements.md#margin-call-notice>) | When selected, a pdf file will generate for the user to view the margin call notice.  
[View Exposure Trades](<margin_calls_statements.md#exposure-statement>) | When selected, a Microsoft™ Excel spreadsheet will get generated for the exposure trades used in Margin Calculations.  
  
## Confirmed

Calls that are in this predefined filter are ones that have been confirmed (awaiting settlement or waived). They are in a workflow state of the following:

  * Waived
  * Confirmed
  * Approved
  * No Action



Depending on the type of the call and the workflow state that it is in will determine which actions become available.

The availability of actions that can occur are the following:

Action | Description  
---|---  
[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>) | When selected, the exposure statement will be sent to the counterparty.  
  
The user will be notified if the statement has not been successfully sent by an error message appearing on the screen stating "A statement cannot be generated if there are no exposure trades for this margin call or if the analysis has not been run for this margin call". If the message disappears before the user had a chance to read it all, the user can click on the notifications which is the bell in the top right corner of the screen.  
[Send Position Statement](<margin_calls_statements.md#position-statement>) | When selected, a statement in Microsoft™ Excel spreadsheet software format will be emailed to those contacts on the agreement who are configured to receive Collateral Position Statements.  
[Send Custom Statement](<margin_calls_statements.md#custom-statement>) | When selected, the custom statement that has been defined on a contact that is associated with the agreement, will be sent.  
[View Call Notice](<margin_calls_statements.md#margin-call-notice>) | When selected, a pdf file will generate for the user to view the margin call notice.  
[View Confirmation Notice](<margin_calls_statements.md#margin-call-notice>) | When selected, a pdf file will generate for the user to view the details of the Collateral Movements that are associated to those Margin Calls that have been selected for the inclusion on the notice.  
[View Exposure Trades](<margin_calls_statements.md#exposure-statement>) | When selected, a Microsoft™ Excel spreadsheet will get generated for the exposure trades used in Margin Calculations.
