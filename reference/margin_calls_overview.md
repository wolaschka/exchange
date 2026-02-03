
# Margin Calls

## Overview

The standard Margin Calls calculation results for agreements from OTC, Repo, Securities Lending, Central Clearing and Client Clearing Business Lines can be viewed through pre-defined filters.

The workflow contents are filtered according to the [user’s scope and responsibilities](<understand_scope_responsibility.md>) and can be filtered further using the navigation pane which allow users ease of access to their day-to-day operations.

All call types can be seen within each of the predefined filters which includes [Demands](<#demand-standard-workflow>), [Anticipated Demands](<#anticipated-demand-standard-workflow>), [No Actions](<#no-action-standard-workflow>) and [Groups](<#grouped-demand-workflow>).

The predefined workflow filters are:

Filter | Description  
---|---  
[All](<margin_calls_workflow.md#all>) | This displays all call types in workflow states from unsent to confirmed.  
[To Be Started](<margin_calls_workflow.md#to-be-started>) | This predefined filter contains all calls that are generated for today that have not been actioned (i.e. sent or answered).  
[In Progress](<margin_calls_workflow.md#in-progress>) | This predefined filter contains all calls that have been initiated and have either sent or received a notice or agreed to the amount.  
[Approvals](<margin_calls_workflow.md#approvals>) | This predefined filter contains calls where collateral movement(s) have been added to the Margin Call and need approval.  
[Disputed](<margin_calls_workflow.md#disputed>) | This predefined filter contains partial or fully disputed calls.  
[Confirmed](<margin_calls_workflow.md#confirmed>) | This predefined filter contains calls that have been approved and waiting for settlement.  
  
## Search Criteria

Within each workflow filter, the user can view a subset of the margin calls by selecting specific data in the search criteria.

The [Workflow State](<#workflowstate>), the [Call Type](<#calltype>) and the [Agreement Name](<#agmtname>) are the first fields that a user will see where a refined search can be performed.

To see more fields available, click on the drop-down to the right of the _Agreement Name_ field. When a selection is made from the drop-down, the drop-down color will change to signal that a filter is applied.

Once the selection is made, click on the **Search** button.

To clear the search criteria, click on the **Clear Filters** button.

The fields available for searching are the following:

Field | Description  
---|---  
Workflow State | The fields will automatically be selected based on the workflow filter that the user is currently on. The user has the ability to select one, multiple or all of the states. The states available are Unsent, Anticipated, No Action, Unsent SVA, To Be Reviewed, Agreed, Sent SVA, Awaiting Collateral, Pending Cpty, Sent, Waived Approval, Confirmed Approval, To Be Approved, Disputed, Waived, Confirmed and Approved.  
Call Type | The default values selected will be _Anticipated Demand_ and _Demand_. By clicking the drop-down, _No Action_ is also made available. The user has the option to select one, multiple or all the values.  
Agreement Name | Enter all or part of an Agreement Name. An asterisk (*) can be used as a wild card. The field is case insensitive.  
Responsibilities | A list of responsibilities that are defined within [reference data](<reference_related_data.md#agreement-responsibility-group>). When a responsibility is selected, the _Groups_ drop-down selection field will become disabled. The data returned will be based upon the user's [Agreement Scope and Responsibilities](<understand_scope_responsibility.md>).  
Groups | A list of groups that are defined within [reference data](<reference_related_data.md#agreement-group>). When a group is selected, the _Responsibility_ drop-down selection field will become disabled. The data returned will be based upon the user's [Agreement Scope and Responsibilities](<understand_scope_responsibility.md>).  
Managing Location | A list of managing locations that are defined within [reference data](<reference.md#add-reference-data>).  
Business Line | The user has the ability to select one, multiple or all of the business lines. The values available are OTC, Repo, Securities Lending and Client Clearing.  
Principal | Enter all or part of the [Principal Name](<entities.md#overview>). An asterisk (*) can be used as a wild card. The field is case insensitive.  
Counterparty | Enter all or part of the [Counterparty Name](<entities.md#overview>). An asterisk (*) can be used as a wild card. The field is case insensitive.  
Include Descendants | This field will only be enabled when a Counterparty is specified. By checking this field, the search criteria will include descendant children of the counterparty entity.  
Currency | Select one, multiple or all of the currencies that are defined within [reference data](<reference_related_data.md#currencies-and-fx-rates>).  
Margin Type | The user has the ability to select one, multiple or all of the margin types. The values available are Guarentee, Lock Up, Surplus, and Variation.  
Calculation Date | The calls are automatically filtered on today's calculation date when they are in an _Unsent_ state or in progress. They can also be filtered on a date range.| Field| Description  
---|---  
Active Only| Displays the calls that are calculated today and the calls in progress. The field is checked by default. If unchecked, a calculation date range is required.  
From| When the Active Only field is disabled, a calculation start date is required for the start of the range.  
To| When the Active Only field is disabled, a calculation end date is required for the end of the range. | Call Amount | The calls can be filtered on the call amount.| Field| Description  
---|---  
Amount| Specify a quantity.  
Operator| Select an operator that will be applied to the quantity and the call amount on the margin calls.  
  
The values available are:  
Equal  
Greater Than  
Greater Than or Equal  
Less Than  
Less Than or Equal  
  
## Viewing the Margin Calls

Whether a filter is applied or not, margin calls are returned if they fall into the predefined filter that is selected. For example, if the [**To Be Started**](<margin_calls_workflow.md#to-be-started>) filter is selected, then only the calls that were generated today and need to be actioned will appear.

The fields displayed on the screen will persist across all predefined filters.

The default fields are the following:

Field | Description  
---|---  
Checkbox | When this box(es) are checked, the action button(s) will become available based on the call type, the state and the number of margin calls that are selected.  
View Icon | When this icon is selected, the [margin call details](<margin_calls_tabs.md>) can be viewed.  
![dotdotdot.jpg](Images/dotdotdot.jpg) | When this is clicked, the **View Agreements** can be selected and a new tab will open up to the [Agreement Details](<agreements_general.md>) for the agreement.  
Call Type | Indicates the type of the call. It can be a Demand, Antic Demand or No Action.  
[Grouped](<#grouped-demand-workflow>) | This field will have a green check mark when an Agreement (for OTC or Client Clearing Business Lines) is associated to a [Combined Business Lines Agreement Group](<reference_related_data.md#agreement-group>).  
Calc Status | Shows the status of the Margin Calculation task for the Agreement.  
  
| Symbol| Status| Desription  
---|---|---  
![completed_successfully_icon.jpg](Images/completed_successfully_icon.jpg)| Completed| Represents a successful Margin Calculation.  
![warning_icon_workflow.jpg](Images/warning_icon_workflow.jpg)| Warning| Represents that the call needs attention.  
![imported_status_symbol.jpg](Images/imported_status_symbol.jpg)| Imported| Represents that the call was imported.  
Status | The status of the last action that was performed on the call.  
  
| Symbol| Status| Desription  
---|---|---  
![completed_successfully_icon.jpg](Images/completed_successfully_icon.jpg)| Completed| Represents a successful action. By hovering over the icon, it will display 'Complete'.  
![rejected_status.jpg](Images/rejected_status.jpg)| Rejected| Represents a rejected action. By hovering over the icon, it will display the user id and timestamp along with the reject reason.  
![failed_icon.jpg](Images/failed_icon.jpg)| Failed| Represents a failed action. By hovering over the icon, it will display why the action failed.| ![warning_icon_mc.jpg](Images/warning_icon_mc.jpg)| Warning| Represents a warning. By hovering over the icon, it will display why the action has a warning.  
Workflow State | The state of the margin call in the workflow. The states are Unsent, Anticipated, No Action, Unsent SVA, To Be Reviewed, Agreed, Sent SVA, Awaiting Collateral, Pending Cpty, Sent, Waived Approval, Confirmed Approval, To Be Approved, Disputed, Waived, Confirmed and Approved.  
Margin Type | The type of margin of the call. It can be Guarantee, Lock Up, Surplus or Variation.  
Agreement Name | An identifier to the margin call.  
Ccy | The currency of the agreement and the currency used for the calculation of the call.  
Prin Call Amount | The Principal's calculated call amount. This is always represented as a negative amount for an Antic Demand.  
Agreed Total | The amount that the Principal or Counterparty, depending on who is calling, has agreed to pay.  
Calculation Date/Time | The date and time that the call was generated in the Principal's timezone.  
[Notification Time (Principal)](<agreements_marginterms.md#notificationtime>) | The time specified to notify the counterparty of the call in the Principal's timezone.  
Counterparty | The counterparty defined on the agreement.  
Principal | The principal defined on the agreement.  
Agreement Group | Associated agreement group if the agreement is covered.  
  
This display persists across all predefined filters (To Be Started, In Progress, Approvals, Disputed and Confirmed).

When a user clicks on the view icon ![view_icon.jpg](Images/view_icon.jpg) for a specific call, the [margin call details](<margin_calls_tabs.md#margin-call-details>) can be viewed.

## Grid Features

The margin call grid can be [sorted](<grid_features.md#sorting>), [paged](<grid_features.md#paging>), [exported](<grid_features.md#export-grid>), [reorder columns](<grid_features.md#reorder-columns>), and fields can be [disabled or resized](<grid_features.md#display-and-resizing-columns>).

## Processing Calls

When processing a single or multiple calls, the actions available for the call(s) will change depending on the number of calls selected and the state that the call(s) are in.

When multiple calls are selected between Grouped calls and Non Grouped calls, all actions become disabled.

The margin calls that can be viewed within the workflow are dependent on the [agreement scope](<understand_scope_responsibility.md#agreement-scope>) that the user has defined.

Please see [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md>) and [Understanding Workflow Filtering](<#search-criteria>) for more details.

### Demand Standard Workflow

Margin Calls for the Demand Standard Workflow are generated for Agreements in the OTC, Repo and Securities Lending Business Lines that are not assigned to an Combined Business Lines Agreement Group.

They are represented by ![demand_symbol.jpg](Images/demand_symbol.jpg) under the Call Type field.

Call Type | Workflow State | Actions Available  
on Single Call | Actions Available  
on Multiple Calls  
---|---|---|---  
Demand | Unsent | [Send Call(s)](<margin_calls_send_call.md#demands-unsent>)  
[Waive](<margin_calls_waived.md>)  
[Dispute](<margin_calls_disputes.md#dispute-on-a-demand>)  
[Already Notified](<margin_calls_already_notified.md#demand>)[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>)[Send Position Statement](<margin_calls_statements.md#position-statement>)[Send Custom Statement](<margin_calls_statements.md#custom-statement>)[View Call Notice](<margin_calls_statements.md#margin-call-notice>)[View Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) | [Send Call(s)](<margin_calls_send_call.md#demands-unsent>)  
[Waive](<margin_calls_waived.md>)  
[Already Notified](<margin_calls_already_notified.md#demand>)  
Demand | Sent | [Agree](<margin_calls_agree.md#agree-to-a-demand>)  
[Dispute](<margin_calls_disputes.md#dispute-on-a-demand>)  
[Resend Call(s)](<margin_calls_resend.md>)  
[Waive](<margin_calls_waived.md>)[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>)[Send Position Statement](<margin_calls_statements.md#position-statement>)[Send Custom Statement](<margin_calls_statements.md#custom-statement>)[View Call Notice](<margin_calls_statements.md#margin-call-notice>)[View Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) | [Resend Call(s)](<margin_calls_resend.md>)  
[Waive](<margin_calls_waived.md>)  
Demand | Agreed | [Send For Approval](<margin_calls_send_for_approval.md>) \- (movement(s) attached)  
[Waive](<margin_calls_waived.md>)  
[Create Movement](<margin_calls_movements.md>)  
[Reset Agreed Amount](<margin_calls_reset_agreed.md>)[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>)[Send Position Statement](<margin_calls_statements.md#position-statement>)[Send Custom Statement](<margin_calls_statements.md#custom-statement>)[View Call Notice](<margin_calls_statements.md#margin-call-notice>)[View Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) | [Waive](<margin_calls_waived.md>)  
Demand | Confirmed Approval  
  
Waived Approval | [Approve](<margin_calls_approve.md>) (See Note below)  
[Reject](<margin_calls_reject.md>)  
Approve - Second Level (See Note below)  
Reject - Second Level  
[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>)[Send Position Statement](<margin_calls_statements.md#position-statement>)[Send Custom Statement](<margin_calls_statements.md#custom-statement>)[View Call Notice](<margin_calls_statements.md#margin-call-notice>)[View Confirmation Notice](<margin_calls_statements.md#confirmation-notice>) (See Note below)[View Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) | [Approve](<margin_calls_approve.md>) (See Note Below)  
[Reject](<margin_calls_reject.md>)  
[Waive](<margin_calls_waived.md>)  
Demand | Disputed | [Reset Agreed Amount](<margin_calls_reset_agreed.md>) | None  
Demand | [Confirmed](<margin_calls_confirmed_demand.md>) | [Send Exposure Statement](<margin_calls_statements.md#exposure-statement>)[Send Position Statement](<margin_calls_statements.md#position-statement>)[Send Custom Statement](<margin_calls_statements.md#custom-statement>)[View Call Notice](<margin_calls_statements.md#margin-call-notice>)[View Confirmation Notice](<margin_calls_statements.md#confirmation-notice>)[View Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) | None  
  
**Note:**

  * Under the _Confirmed Approval_ state, the **Approve** button will only appear if the user approving the call(s) did not promote the call(s) to this state.
  * Under the _Waived Approval_ state, the _View Confirmation Notice_ is not available.



### Anticipated Demand Standard Workflow

Margin Calls for the Anticipated Demand Standard Workflow are generated for Agreements in the OTC, Repo and Securities Lending Business Lines that are not assigned to an Combined Business Lines Agreement Group.

All Anticipated Demands, including those for Agreements where the Principal is the Valuation Agent, are contained within the Anticipated Demands Workflow state.

It is common practice among bilateral collateral practitioners (with the exception of SVA Agreements) that Principal's do not pro-actively process and notify their Counterparts that they are entitled to Margin. Instead they are processed when the Counterparty makes a Margin Call on the Principal.

However, there can be situations where the Principal wishes to inform its Counterparts that it is entitled to call for margin, and wishes to record the response.

Thus, there are the following four scenarios of how Anticipated Demands can be processed.

  1. The Principal Agrees in Full to a Counterparty's Margin Call. [Example](<anticipated_demand_examples.md#principal-agrees-in-full-to-a-margin-call>)
  2. The Principal Agrees Partially to a Counterparty's Margin Call. [Example](<anticipated_demand_examples.md#principal-agrees-partially-to-a-margin-call>)
  3. The Principal has calculated an Anticipated Demand but the Counterparty has calculated that no Margin Amount is Due to them.
  4. The Principal has calculated an Anticipated Demand but the Counterparty has calculated that they are actually due to provide Margin to the Principal.



For the above scenarios, the amount of the Anticipated Demand that the Principal agrees to is recorded as an Agreed amount and the Counterparty's calculation of the call amount is recorded as the Cpty Call Amount. Additionally, the type of margin call can be recorded that the Counterparty has calculated. This is recorded as Cpty Call Type.

How these fields get populated determines how the Antic Demand will be further processed in the Workflow.

They are represented by ![antic_demand_symbol.jpg](Images/antic_demand_symbol.jpg) under the Call Type field.

Call Type | Workflow State | Actions Available  
on Single Call | Actions Available  
on Multiple Calls  
---|---|---|---  
Anticipated Demand | Anticipated | [Agree](<margin_calls_agree.md#agree-to-a-anticipated-demand>)  
[Dispute](<margin_calls_disputes.md#dispute-on-an-anticipated-demand>)[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>)[Send Position Statement](<margin_calls_statements.md#position-statement>)[Send Custom Statement](<margin_calls_statements.md#custom-statement>)[View Call Notice](<margin_calls_statements.md#margin-call-notice>)[View Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) | None  
Anticipated Demand | Unsent SVA | [Send Call(s)](<margin_calls_send_call.md>)  
[Already Notified](<margin_calls_already_notified.md#anticipated-demand-or-no-action>)[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>)[Send Position Statement](<margin_calls_statements.md#position-statement>)[Send Custom Statement](<margin_calls_statements.md#custom-statement>)[View Call Notice](<margin_calls_statements.md#margin-call-notice>)[View Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) | [Send Call(s)](<margin_calls_send_call.md>)  
[Already Notified](<margin_calls_already_notified.md#anticipated-demand-or-no-action>)  
Anticipated Demand | Agreed | [Create Movement](<margin_calls_movements.md>)  
[Reset Agreed Amount](<margin_calls_reset_agreed.md>) | None  
Anticipated Demand | Agreed  
(movement(s) attached) | [Send For Approval](<margin_calls_send_for_approval.md>)  
[Create Movement](<margin_calls_movements.md#create-movements-on-a-margin-call>)  
[Reset Agreed Amount](<margin_calls_reset_agreed.md>) | None  
Anticipated Demand | Sent SVA | [Agreed](<margin_calls_agree.md#agree-anticipated-demand>)  
[Dispute](<margin_calls_disputes.md#dispute-on-an-anticipated-demand>)  
[Resend Call(s)](<margin_calls_resend.md>) | None  
Anticipated Demand | Confirmed Approval | [Approve](<margin_calls_approve.md>) (See Note below)  
[Reject](<margin_calls_reject.md>)  
[Approve Pending Counterparty](<margin_calls_approve_pending_cpty.md>) | [Approve](<margin_calls_approve.md>) (See Note below)  
[Reject](<margin_calls_reject.md>)  
[Approve Pending Counterparty](<margin_calls_approve_pending_cpty.md>)  
Anticipated Demand | Disputed | [Reset Agreed Amount](<margin_calls_reset_agreed.md>) | None  
Demand | [Confirmed](<margin_calls_confirmed_anticdemand.md>) | None | None  
  
**Note:** The **Approve** button will only appear if the user approving the call(s) did not promote the call(s) to this state.

### No Action Standard Workflow

No Action calls are represented by ![no_action_symbol.jpg](Images/no_action_symbol.jpg) under the **Call Type** field.

There are currently five types of _No Action_ distinguished in the system:

  * [Non Valuation Day](<valuation_frequency.md>) \- the Margin Calculation was run on a date which is not defined as a valuation date according to the agreement.


  * Missing FX Rate - The Margin Calculation results could not be successfully generated as FX rate information necessary for the calculation was not available in the system. 
  * [Holiday](<agreements_marginterms.md#holidays>) \- The Margin Calculation has been run on a date that is defined as a Holiday in a Holiday Calendar that has been defined on the Agreement.
  * [Monitor](<agreements_general.md#status>) \- If an Agreement has an agreement status of Monitor, a margin calculation result of No Action is generated always.
  * [Unilateral Agreements](<misc.md#understanding-posting-party-on-an-agreement>) \- If an agreement has the posting party defined as either Principal or Counterparty, it is deemed as Unilateral. Only margin calls which are valid according to which party is obliged to post collateral are generated. 

For example, if the Posting Party is defined as Principal and the margin calculation results in a _Deliver to Principal_ margin requirement, this will be generated as a No Action call with a Unilateral Agreement No Action type. See [Understanding Posting Party](<misc.md#understanding-posting-party-on-an-agreement>) for more details.


Call Type | Workflow State | Actions Available  
on Single Call | Actions Available  
on Multiple Calls  
---|---|---|---  
No Action | No Action | [Dispute](<margin_calls_disputes.md#dispute-on-a-no-action>)[Send Exposure Statement](<margin_calls_statements.md#exposure-statement>)[Send Position Statement](<margin_calls_statements.md#position-statement>)[Send Custom Statement](<margin_calls_statements.md#custom-statement>)[View Call Notice](<margin_calls_statements.md#margin-call-notice>)[View Exposure Trades](<margin_calls_statements.md#viewing-exposure-statements>) | None  
No Action | Unsent SVA | Send Calls  
  
[Already Notified](<margin_calls_already_notified.md#anticipated-demand-or-no-action>) | None  
No Action | Disputed | [Reset Agreed Amount](<margin_calls_reset_agreed.md>) | None  
Demand | Confirmed | None | None  
  
### Grouped Demand Workflow

The Grouped calls are represented by ![group_symbol.jpg](Images/group_symbol.jpg) under the Grouped field. The Call Type field will determine the direction of the call.

Call Type | Workflow State | Actions Available  
on Group Call | Actions Available  
on Grouped Calls  
---|---|---|---  
Demand | Unsent | Send Grouped Calls  
[Waived](<margin_calls_waived.md>)  
[Already Notified](<margin_calls_already_notified.md#grouped>)  
[View Grouped Call Sheet](<grouped_reports.md#group-margin-call-summary-sheet>)  
[Send Exposure Statement](<grouped_reports.md#exposure-statements-from-grouped-margin-calls>)  
[Send Position Statement](<grouped_reports.md#collateral-position-details-from-grouped-margin-calls>)  
[View Call Notice](<grouped_reports.md#grouped-margin-calls-summary-notice>)  
[View Exposure Trades](<grouped_reports.md#exposure-statements-from-grouped-margin-calls>) | Send Grouped Calls  
[Waived](<margin_calls_waived.md>)  
[Already Notified](<margin_calls_already_notified.md#grouped>)  
Demand | Sent | Agree  
Dispute  
Send For Approval  
[Waive](<margin_calls_waived.md>)  
Resend Call(s) | Send For Approval  
[Waive](<margin_calls_waived.md>)  
Resend Call(s)  
Demand | Sent (Agreed) | Send For Approval  
[Waive](<margin_calls_waived.md>)  
Resend Call(s)  
Create Movement  
[Reset Agreed Amount](<margin_calls_reset_agreed.md>) | Send For Approval  
[Waive](<margin_calls_waived.md>)  
Resend Call(s)  
Demand | Partial Agree |  |   
Demand | Partial Agree  
(movement(s) attached) |  |   
Demand | Confirmed Approval | Approve Pending Counterparty  
Reject  
Approve (See Note below) | Approve Pending Counterparty  
Reject  
Approve (See Note below)  
Demand | Disputed |  |   
Demand | Confirmed |  |   
  
### Central Clearing Workflow

The Agreements of the [Central Clearing](<agreements_define.md#define-central-clearing-agreement>) Business Line [import Margin Calls](<central_clearing_import.md>) that have been originated from Central Clearing Parties.

Call Type | Workflow State | Actions Available  
on Single Call | Actions Available  
on Multiple Calls  
---|---|---|---  
Demand | [To Be Reviewed](<central_clearing_reviewed.md>) | [Accept](<central_clearing_reviewed.md#actions-permissible>) |   
Demand | [Awaiting Collateral](<central_clearing_awaiting_collateral.md>) | [Send For Approval](<central_clearing_awaiting_collateral.md#sending-margin-grouped-margin-calls-for-approval>)  
Set To Be Reviewed  
[Create Movement](<central_clearing_awaiting_collateral.md#create-movements>) | Set To Be Reviewed  
Demand | [To Be Approved](<central_clearing_tobeapproved.md>) | [Approve Send to Settlements](<central_clearing_tobeapproved.md#actions-permissible>)  
Reject | Reject  
Demand | [Confirmed](<central_clearing_confirmed.md>) | [View Confirmation Notice](<central_clearing_confirmed.md#view-collateral-confirmation-notice>) |   
Anticipated Demand | [To Be Reviewed](<central_clearing_reviewed.md>) | Accept |   
Anticipated Demand | [Awaiting Collateral](<central_clearing_awaiting_collateral.md>) | Set To Be Reviewed  
[Create Movement](<central_clearing_awaiting_collateral.md#create-movements>) |   
Anticipated Demand | [To Be Approved](<central_clearing_tobeapproved.md>) | Approve Send to Settlements  
Reject | Reject  
Anticipated Demand | [Confirmed](<central_clearing_confirmed.md>) | [View Confirmation Notice](<central_clearing_confirmed.md#view-collateral-confirmation-notice>) |   
No Action | [To Be Reviewed](<central_clearing_reviewed.md>) | [Accept](<central_clearing_reviewed.md#actions-permissible>) | 
