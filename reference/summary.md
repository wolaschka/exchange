
# Summary

## Overview

The summary page consists of tiles which allows users to oversee their day-to-day operations using data based on [user scope and responsibility](<understand_scope_responsibility.md>) to depict a summary through various visual representation.

The summary page is the first screen that is presented to the user after logging into the system. ![summary_page_1](Images/summary_page_1.jpg)

A user can click within a graph, except for the Notification Times graph as it does not have any links, and the user will be taken to the screen where the specific data can be viewed in more detail.

Workflows can be excluded from the total count by clicking on the words. They can be re-enabled by clicking once more on the word.

1) [**Summary Bar**](<#summary-bar>) tile displays the following information:

  * Calls To Be Started - The total number of margin calls to be started for the day.

  * In Progress Calls - The total number of active calls that are in progress.

  * Active Approvals - The total number of pending approvals for margin calls, interest, substitutions, manual movements and pending cancellations.

  * Interests To Be Started - The total number of cash interest payments to be started for the day.

  * In Progress Interest - The total number of active cash interest payments in progress.




2) [**Calls To Be Started**](<#calls-to-be-started>) tile gives a breakdown of how many Demands, Anticipated Demands and No Actions.

3) [**Interest Summary**](<#interest-summary>) tile gives the interests due to the principal and interests due to the counterparty.

4) [**Approvals Summary**](<#approvals-summary>) tile gives the sum of all pending approvals (margin calls, interest, substitutions and movements)

6) [**Notification Times**](<#notification-times>) tile gives the number of calls needed to be sent before or within a specified time window.

7) [**In Progress Calls**](<#in-progress-calls>) tile gives the total count of all margin calls that are in progress in the Sent and Agreed states.

[Video Demonstration](<video_summary.md#SummaryOverview>)

## Summary Bar

The **Summary Bar** gives the user an overview of all the margin calls, approvals and interest that need to be managed. On the landing page, the Summary Bar is located on the top part of the page and displays a summation of the following information:

![summary_bar_tile.jpg](Images/summary_bar_tile.jpg)

  * **Calls to Be Started** \- This is the summation of the number of calls that have been generated today. These calls can be viewed under the Margin Calls Workflow or specifically the [To Be Started](<margin_calls_workflow.md#to-be-started>) set filter.

  * **In Progress Calls** \- This is the summation of the number of calls that are in progress (sent or received). They can be viewed under Margin Calls or the specific set filter of [Active](<margin_calls_overview.md#viewing-the-margin-calls>).

  * **Active Approvals** \- This is the summation of the number of events awaiting [Approval](<margin_calls_overview.md#approvals>) (margin calls, interest, substitution workflows and manual movements).

  * **Interest To Be Started** \- This is a summation of the number of cash interest payments that are in the initial state of the [Interest](<margin_calls_overview.md#Interest>) workflow. 

  * **In Progress Interest** \- This is a summation of the number of cash interest payments that have been initiated and are in the process of completion.




**Note:** The summary bar and the landing page tiles displays information based on [user scope and responsibility](<understand_scope_responsibility.md>).

## Calls To Be Started

The calls on the **To Be Started** tile displays calls which have yet to be acted upon today. It has the total count of Unsent Demands, Anticipated Demands and No Actions which is visually represented by a pie chart. This includes OTC, Repo, Sec Lending and Client Clearing business lines.

![to_be_started_tile.jpg](Images/to_be_started_tile.jpg)

  * The Demands represents the total count of calls in the Unsent Demands state.

  * The Antic Demands represents the total count of calls in the Unsent SVA and Anticipated Demands states.

  * The No Actions represents the total count of calls in the Unsent SVA and No Actions states.




Hovering over the pie chart will also give the total count of each workflow.

![to_be_started_tile_hover.jpg](Images/to_be_started_tile_hover.jpg)

**Note:** If a user clicks in a section on the pie chart, the user will be taken to the **To Be Started** state of the section that was chosen.

Workflows can be excluded from the total count by clicking on the words. In this example, Antic Demands are not included in the total count. The workflow can be re-enabled by clicking on it.

![to_be_started_tile_remove_workflow.jpg](Images/to_be_started_tile_remove_workflow.jpg)

[Video Demonstration](<video_summary.md#calls-to-be-started>)

## Interest Summary

The **Interest Summary** tile displays a graphical representation of the total count of the principal and counterparty cash interest payments that are waiting to be started and ones that are active.

![interest_summary_tile.jpg](Images/interest_summary_tile.jpg)

  * **To Be Started** is the total count of cash interest payments that are waiting to be started. They are categorically divided by payments due to principal and payments due to counterparty.

    * Due to Prin is indicated in the blue color. This is the sum of expected to be received payments which includes interest due to principal for roll in, distribution and groups.

    * Due to Cpty is indicated in the orange color. This is the sum of active payments which includes interest due to counterparty for roll in, distribution and groups.

  * **Active** is the total count of payments that are in progress. They are categorically divided by payments due to principal and payments due to counterparty.

    * Due to Prin is indicated in the blue color. This is the sum of the total in progress payments to be received which includes interest due to principal for roll in, distribution and groups.

    * Due to Cpty is indicated in the orange color. This is the sum of the total of active payments which includes interest due to counterparty for roll in, distribution and groups.




Hovering over the bar chart will also give the total count of each party per status.

![interest_summary_tile_hover.jpg](Images/interest_summary_tile_hover.jpg)

**Note:** If a user clicks in a section on the bar chart, the user will be taken to the appropriate state of the section chosen.

The graph can be adjusted to remove the interest due to Principal, due to Counterparty or both. However, this will not effect the workflow itself. This is just a graphical representation.

![interest_summary_remove_calls.jpg](Images/interest_summary_remove_calls.jpg)

[Video Demonstration](<video_summary.md#interest-summary>)

## Approvals Summary

The **Approvals Summary** tile displays the total count of approval actions that is awaiting approval based on the [user's scope and responsibility](<understand_scope_responsibility.md>).

The approvals tile is comprised of the following:

![approvals_summary_tile.jpg](Images/approvals_summary_tile.jpg)

  * [Margin Calls](<margin_calls_workflow.md#approvals>) \- the sum of all the _To Be Approved_ , _Confirmed Approval_ and/or _Waived Approval_ workflow states from Demands and Antic Demands.

  * [Substitutions](<substitutions_workflow.md#agreed>) \- the sum of all Substitutions that requires approval and are in an _Agreed - To Be Approved_ workflow state.

  * [Interest](<interest_workflow.md#approvals>) \- the sum of all Distribution and Roll-In payments that are in an _Agreed - To Be Approved_ workflow state.

  * [Manual Movements](<movements.md#approve-or-reject-manual-movements>) \- the sum of all Manual Movements that are in an _To be Approved_ status.

  * [Pending Cancellations](<movements.md#approve-movements-that-are-pending-cancellation>) \- the sum of all Movements with a status of _Settled_ and has _Pending Cancellation_ checked under the _Transition History_.

**Note:** See [Collateral Movements Approval](<system_configuration.md#collateral-movement>) to allow Pending Cancellations.




By hovering over each section of the chart, the user can see how many approvals are needed per section.

A user will be taken to the screen where the specific data can be viewed when the specific part of the graph is selected.

[Video Demonstration](<video_summary.md#approvals-summary>)

## Notification Times

The **Notification Times** tile is a graphical display on the number of calls needing action before or within a specified time period.

![notification_times_tile.jpg](Images/notification_times_tile.jpg)

Calls that are in the following states will show a visual representation in the Notification Times grid:

  * Demands - Unsent
  * Antic Demand - Unsent SVA
  * No Actions - Unsent SVA



**Note:** Unsent SVA in the No Actions state will appear in the EOD grouping only.

As the day progresses, the grid will update accordingly based upon the time of day and the expiration time when the screen is refreshed.

The data categories of the bar graph's horizontal axis are 0-15min, 15-30min, 30-60min, 1-2H, 2-4H, 4-8H, 8-24H, EOD (no notification time specified) and Expired (notification time has elapsed).

The scale of the bar graph's vertical axis reflects the number of calls needed to be sent. By hovering over each bar, the number of calls that need to be sent can be seen.

![notification_times_tile_hover.jpg](Images/notification_times_tile_hover.jpg)

[Video Demonstration](<video_summary.md#notification-times>)

## In Progress Calls

The **In Progress Calls** tile displays the in progress calls for Demands, Anticipated Demands and Disputes which are further categorized as Today's (T) calls, represented in the color blue, or Outstanding calls (T-n), represented in the color orange. T is based on calculation date.

  * The bar for [Demands](<margin_calls_workflow.md#demands_sent>) represent the active calls that are in the Sent state.

  * The bar for [Antic Demands](<margin_calls_workflow.md#antic_agreed>) represent the active calls that are in the Agreed state. Additionally, calls in the Pending Counterparty state are also counted in the total for the active Antic Demand calls.

  * The Disputes displays the total counts for Full disputes and Partial disputes in the workflow that day. Each of these numbers contains the sum of Demands, Antic Demands and No actions for each accordingly.




If a user clicks in a section on the pie chart, the user will be taken to the appropriate state of the section selected.

![active_tile.jpg](Images/active_tile.jpg)

[Video Demonstration](<video_summary.md#in-progress-calls>)
