
# Collateral Web Application Help Guide

TLM® Collateral Management Web Application is an end-to-end Collateral and Margin Management Platform utilizing an event driven, rules based workflow. It is designed to offer a streamlined, 'best-practice' approach for all key margining tasks.

## Collateral Management

SmartStream's TLM Collateral Management is a comprehensive, automated data management solution that helps financial institutions reduce operational risks associated with collateral management programs. It offers a variety of functions to support the increasing use of collateral within the local and global banking community, with coverage for cleared and non-cleared over-the-counter (OTC) Derivatives Margining, Repo Margining and Securities Lending Margining.

TLM Collateral Management helps reduce credit and operational risk with best practice approaches for comprehensive collateral management. The solution is ideal for all types of financial institutions including banks, asset managers, hedge funds, custodians, central clearers, and service providers. TLM Collateral Management offers an event-driven, exceptions-based workflow to manage the end-to-end activities and processes associated with collateral management.

The solution is an integral component of SmartStream's TLM platform servicing downstream liquidity and control. The solution is able to take advantage of SmartStream's global reconciliations and exception management solutions, as well as being available as an integral part of the Reference Data Utility. The TLM platform architecture offers a wide range of deployment options.

TLM Collateral Management delivers:

  * Anticipation and mitigation of operational risk and credit risk - allows risk officers and collateral managers to proactively plan risk mitigation strategies

  * Helps reduce regulatory capital - apply the benefits of collateral in ways that can lower regulatory capital charges

  * Powerful intuitive interface - enhances risk-informed decision making by presenting clear and logical paths for users

  * Comprehensive and flexible data management - automated data capture and analysis to help meet the diverse needs of multiple collateral management programs

  * Streamlined back office workflow - automation of key tasks associated with margin call processing, including data capture, validation, calculation and processing

  * Collateral optimization - enables automated selection of collateral assets to enhance automation and reduce funding costs

  * Interaction with regulators - such as Dodd-Frank, EMIR and Basel III, who require banks to manage capital reserves and collateral when entering derivatives trades




## About SmartStreams Technologies Inc.

SmartStream is a global software and managed services provider that in challenging markets conditions has outpaced its rivals in the financial markets sector, creating an impressive base of more than 1,500 customers. This includes more than 70 of the world's top 100 banks alongside the world's leading asset managers, custodians and broker dealers.

At the heart of this success is the ability to react to client, market and regulatory changes through innovative solutions. That is why, even in challenging market conditions, the company continues to invest more than 20% of revenue back into research and development.

The combination of SmartStream's post-trade processing solutions, together with its unique Data Management Services, creates a real-time and pre-emptive approach to reducing trade failures while also accelerating and automating trade processes.

## What's New in 5.17  
  
---  
Added functionality to view all the related [movements](<movements.md#related-movements>) that are part of a single substitution or a single margin call.  
Added functionality to view the associated [margin call, substitution, or interest workflow](<movements.md#view-details>) on a movement while viewing the movement details.  
Added a [link on the margin calls](<margin_calls_overview.md#viewing-the-margin-calls>) to open agreement details in a new tab.  
Added a link in the movements screen under the **Action** column to open the details of workflow item based on the type of movement. The type of movements are [Margin Call, Substitution, or Interest Payment](<movements.md#view-movements>).  
Added the ability to [delete a rejected movement](<movement_actions.md#delete-a-movement>) from a margin call.  
Added the ability to override an [OTC, Central Clearing, Client Clearing](<agreement_actions.md#exposure-trade-overrides>) or [Repo Exposure Trades](<agreement_actions.md#repo-exposure-trade-overrides>) from Agreements. This will allow a user to adjust exposures that may require a recalculation of a margin call.  
Added a [warning to the Agreements](<agreement_actions.md#create-agreements>) module that signifies changes will be lost when canceling out of the screen or navigating to a different module.  
Margin Calls Exposure Tab| Added the [3 Day Difference trade analysis](<margin_calls_tabs.md#3-day-exposures>) details on the Exposures tab within the margin calculation.  
---  
Added the [trades analysis detail tab](<margin_calls_tabs.md#margin-call-trades-tab>) to provide further detail of what is driving the trade exposure for a margin call.  
Added remaining integration with Acadia's substitution workflow.| [Send and resend](<messaging_substitution_messages.md#proposed>) substitution and recall proposal requests to my counterparty.  
---  
[Accept and Reject](<messaging_substitution_messages.md#proposed>) recall proposal requests to and from my counterparty.  
[Approve and Reject](<messaging_substitution_messages.md#approvals>) substitutions from my counterparty.  
Process [accept and reject](<messaging_substitution_messages.md#pending-cpty>) substitution responses from my counterparty.  
[Add replacements](<messaging_substitution_messages.md#in-progress>) to accepted recall proposals to and from my counterparty.  
[Update and Amend](<messaging_substitution_messages.md#proposed>) substitution and recall proposal requests to and from counterparty.  
[Cancel](<messaging_substitution_messages.md#proposed>) substitution and recall proposal requests to and from my counterparty.  
  
## Prior Versions

#### 5.16  
  
---  
Port [Interventions Error Dashboard](<interventions.md>) to TLM View Collateral.  
Reordered the side bar menu.  
Enhanced the side bar menu to allow a Ctrl+Click to open another window in the browser.  
Added the ability to view eligibility breaches on [Agreements](<agreements.md#view-eligibility-breaches>), [Margin Calls](<margin_calls_tabs.md#live-positions-and-movements>), [Movements](<movements.md#view-eligibility-breaches>) and [Substitutions](<substitutions_workflow.md#view-eligibility-breaches>).  
Added the ability to view Principal and Counterparty Concentration Results on an [agreement](<agreements.md#view-concentration-results>) and [movement](<movements.md#view-concentration-results>).  
Added the ability to view concentration status for both held and posted collateral on a [margin call](<margin_calls_tabs.md#live-positions-and-movements>) and [substitutions](<substitutions_workflow.md#positions-and-movements>).  
Added the ability to [edit a movement on a Margin Call](<margin_calls_tabs.md#edit-collateral-movement>).  
Added the ability to open a new tab from the [movements](<movements.md#grid-features>), [margin calls positions](<margin_calls_tabs.md#positions-used-for-calculations>) screen to view the instrument details of the position or movement selected.  
Enhanced Substitutions to include more [preset filters](<substitutions_workflow.md#overview>), more [workflow states](<substitutions_workflow.md#overview>), [allow edits of the substitution](<substitutions_detail.md#edit-movements>), allow [proposals to be sent to the counterparty](<substitutions_workflow_actions.md#propose>) or [send the substitution for approval](<substitutions_workflow_actions.md#send-for-approval>), allow [rejection of the proposal](<substitutions_workflow_actions.md#reject>), allow [multiple return and deliver movements](<substitutions_workflow_actions.md#add-return-movement>) to be added to the substitution and [allow creation and add to a substitution](<substitutions_workflow_actions.md#add-substitute-movement>) from the same screen.  
Added the ability to view [historical substitutions](<substitutions.md#search-criteria>).  
Added the ability to view Instrument Details on [Positions and Movements on Substitutions](<substitutions_detail.md#positions-and-movements-grid>), [Collateral Positions on Agreements](<agreements.md#view-collateral-positions>), [Positions and Movements on Margin Calls](<margin_calls_tabs.md#positions-used-for-calculations>) and on [Movements](<movements.md#grid-features>).  
Added the ability to view Settlement Instructions for movements on a [margin call](<margin_calls_tabs.md#view-settlement-instructions>), on [Substitutions](<substitutions_detail.md#positions-and-movements-grid>), [Short Positions](<shortpositions.md#movements>) and on [Interest Distributions](<interest.md#interest-grid-view>).  
Added the ability to set ratings to be treated as [not provided if missing](<reference_related_data.md#rating-agency>) and allow a user to curate their incoming data to prevent any false positives where ratings may not be provided.  
Added the ability to [add additional columns](<grid_features.md#display-and-resizing-columns>) to the Margin Calls, Interest, Substitutions, Movements, and Agreements grids to view more data.  
Added the ability to create incoming [substitution and recall events](<messaging_margincalls.md#516>).  
  
#### 5.15  
  
---  
Added the ability to [create](<task_margin_calc.md#create-new-task>), [edit](<task_margin_calc.md#edit-task>), and [delete](<task_margin_calc.md#delete-task>) a [Standard and/or Grouped Margin Calculation task configuration](<task_margin_calc.md>).  
Added the ability to [create](<task_interest_calc.md#create-new-task>), [edit](<task_interest_calc.md#edit-task>), and [delete](<task_interest_calc.md#edit-task>) a [Standard and/or Grouped Interest Calculation task configuration](<task_interest_calc.md>).  
Added the ability to create, edit, and delete a [Settle Movement task configuration](<task_settle_movements.md>).  
Added the ability to create, edit, and delete a [Collateral Eligibility Extract](<task_extract.md>).  
Added the ability to create and edit an [Exposure Statement Extract](<task_extract.md>).  
Added the ability to create, edit, and delete a [Margin Calculation Analysis task configuration](<task_margincalc_analysis.md>).  
Added the ability to create and edit an [Import Configuration](<task_imports.md>).  
Added the ability to run the following tasks from the configuration page.  
\- [Standard Margin Calc](<task_margin_calc.md#run-task>)  
\- [Grouped Margin Calc](<task_margin_calc.md#run-task>)  
\- [Standard Interest](<task_interest_calc.md#run-task>)  
\- [Grouped Interest](<task_interest_calc.md#run-task>)  
\- [Margin Calculation Analysis](<task_margincalc_analysis.md#run-task>)  
\- [Settlement Movement](<task_settle_movements.md#run-task>)  
\- [Extract Task (Exposure Statement and Collateral Eligibility)](<task_extract.md#run-task>)  
\- [Import tasks](<task_imports.md#run-task>)  
Added the ability to [copy an agreement](<agreements.md#new-from>) from an existing agreement.  
Added the ability to view and search for [Upcoming Dividends](<upcomingdividends.md>).  
Added the ability to create [substitutions from the Upcoming Dividends screen](<upcomingdividends.md#create-substitution>).  
Added the ability to view instrument details from the [Upcoming Dividends](<upcomingdividends.md#grid-view>) screen.  
Added the ability to view and search for [Upcoming Maturities](<upcomingmaturities.md>).  
Added the ability to create [substitutions from the Upcoming Maturities screen](<upcomingmaturities.md#create-substitution>).  
Added the ability to view instrument details from the [Upcoming Maturities](<upcomingmaturities.md#grid-view>) screen.  
Added the ability to view and search for [Upcoming Coupons](<upcomingcoupons.md>).  
Added the ability to create [substitutions from the Upcoming Coupon screen](<upcomingcoupons.md#create-substitution>).  
Added the ability to view instrument details from the [Upcoming Coupon](<upcomingcoupons.md#grid-view>) screen.  
Added the ability to view and search for [Short Positions](<shortpositions.md>).  
Added the ability to [identify any existing Demands](<shortpositions.md#current-demands>) in the workflow which could be used to help resolve a short position.  
Added the ability to view [movements with regards to resolving a short position](<shortpositions.md#movements>).  
Added the ability to [view positions available for substitution](<shortpositions.md#available-for-substitution>) for Short Positions then select and [create a substitution](<shortpositions.md#substitute>) based on a position.  
Added the ability to view instrument details from the [Short Positions](<shortpositions.md#grid-view>) screen.  
Added the ability to [view SSIs related to a movement](<movements.md#view-ssi>).  
Added the ability to define [Dispute Tolerance on an Organization Type](<reference_related_data.md#organization-type>).  
Added the ability to uncheck the [physical settlement flag](<margin_calls_movements.md#physicalsettle>) for movements, substitutions and margin calls when the Settlement Date is in the past.  
Added the ability to modify the [display order for Dispute and Waive Categories](<reference_related_data.md#dispute-category>).  
Added the ability to filter margin calls based on the [counterparty descendants](<margin_calls_overview.md#search-criteria>).  
Added the ability to [run control reports](<reports.md>).  
Added the ability to add, delete, edit, filter, run [Global Concentration Limits](<global_concentration.md>) and [view collateral positions](<global_concentration.md#collateral-positions>) used in the calculation.  
Added a reject comment when hovering over a reject icon in [margin calls](<margin_calls_overview.md#viewing-the-margin-calls>), [interest](<interest.md#interest-grid-view>) and [substitution](<substitutions.md#substitutions-grid-view>) workflows.  
Added the ability to extract the [Full Eligibility and Concentration report](<reports.md#eligibility-and-concentration-breaches>).  
Added the ability to [view collateral positions](<agreements.md#view-collateral-positions>) on an agreement.  
Added delete warning messages to the following areas under Agreements:  
  
[Agreement Margins](<agreements.md#delete-a-grid-row>)  
[Specific Trade Coverage](<agreements.md#delete-a-grid-row>)  
[Contacts](<agreements.md#delete-a-grid-row>)  
[Eligible Collateral](<agreements.md#delete-a-grid-row>)  
[Advanced Eligibility Rule](<agreements.md#delete-a-grid-row>)  
[Ratings Based Eligibility Rule](<agreements.md#delete-a-grid-row>)  
[Wrong Way Risk Rule](<agreements.md#delete-a-grid-row>)  
[Concentration Rules](<agreements.md#delete-a-grid-row>)  
[Trade Assignment](<agreements.md#delete-a-grid-row>)  
[Aliases](<agreements.md#delete-a-grid-row>)  
[SSIs](<agreements_settleinstr.md#deleting-an-ssi>)  
Added delete warning message to the [Instrument Ratings](<instruments_debt.md#adddelete-instrument-ratings>) under Instruments.  
Added delete warning messages to the following areas under Entities:  
  
[Credit Ratings](<entities_general.md#credit-ratings>)  
[Aliases](<entities_general.md#delete-an-alias>)  
[Branches](<entities_general.md#delete-branches>)  
[Branch Aliases](<entities_general.md#delete-branches>)  
[Standard Settlement Instructions](<entities_general.md#delete-ssi>)  
Added delete warning messages to the [Collateral Buckets](<collateral_groups.md#delete-collateral-groups>) and [Groups](<buckets.md#delete-buckets>).  
Added the ability to [view exposure trades](<agreements.md#view-exposure-trades>) on an agreement.  
Added the ability to run an [Agreement or Internal margin calculation](<agreements.md#run-single-margin-calculation>) from the Agreements page for Repo and Securities Lending.  
  
#### 5.14  
  
---  
Added the ability to allow a user to [select/de-select columns, resize columns, reorder the columns, paging data and reorder data in the grid in ascending or descending order](<grid_features.md>).  
Added the ability to run a [single margin calculation](<agreements.md#run-single-margin-calculation>) from the Agreements screen.  
Added Database, Server and Client version information to the application. It can be seen by clicking on the user then selecting [System Info](<#system-information>).  
Added the ability view [Task Configurations](<task_configurations.md>) in read-only mode which includes Imports, Interest and Margin Calculations, Margin Calculation Analysis, Settle Movements and Extracts.  
Added the ability to run [Tasks and view the resulting status](<task_status.md>).  
Moved the [Approval Module](<approvals.md>) from the TLM Collateral Management Self Service Portal application to TLM View Collateral application.  
Moved the [Security Module](<security.md>) from the TLM Collateral Self Service Platform application to TLM View Collateral application.  
  
#### 5.13  
  
---  
Added the ability to transition, add movements, approve and reject [Central Clearing Margin Calls](<margin_calls_overview.md#central-clearing-workflow>) through the workflow.  
Added the ability to [view](<entities.md>), [create](<entities.md#creating-entities>) and [edit](<entities.md#editing-entities>) Entities.  
Added the ability to [view](<instruments.md>), [create](<instruments.md#create-instruments>) and [edit](<instruments.md#edit-instruments>) Instruments.  
Added the ability to search for [Movements](<movements.md#search-criteria>) by Movement Filters, Movement ID or Pending Cancellation.  
Enhanced the search criteria for [Substitutions](<substitutions.md#search-criteria>) to include Agreement Name, Positions, Margin Type, Business Line and Principal Managing Location.  
Added a tab on Margin Calls to show the [positions](<margin_calls_tabs.md#positions-used-for-calculations>) used in the calculation.  
Enhanced the [search criteria on Interest Workflows](<interest.md#search-criteria>) by providing more fields available for filtering data.  
Added the ability to send updates for recalculated or canceled [Interest Payments](<messaging_margincalls.md#513>).  
  
#### 5.12  
  
---  
Added the ability to [view](<audit.md#data>) and [filter](<audit.md#filters>) Audit details.  
Added the ability to [view](<interest_open_accruals.md#viewing>) Open Accruals.  
Added [create payment](<interest_open_accruals.md#create-payment>) option for Open Accruals.  
Added the ability to [view interest statements](<interest_workflow_actions.md#view-statement>) from Open Accruals.  
Added the ability to [view historical interest payments](<interest.md#filtering>).  
Added the ability to [reopen an interest payment](<interest_workflow_actions.md#reopen-payment>) from a closed period.  
Added the ability to add external links to the navigation pane.  
Added the ability for the system to adjust the [Default Settlement Date](<understand_date_times.md#settlement-date-defaults>) for holidays.  
Added the ability to publish [interest payment](<messaging_interest.md>) notification messages for selected items.  
Added the ability to update and transition interest payments based upon [matched and finalized](<messaging_interest.md#mismatched-or-disputed>) interest payment updates from Acadia.  
Added the ability to adjust the COB on an incoming Acadia margin call that falls on a holiday for an agreement to [match a valid business date](<messaging_margincalls.md#margin-call-matching-criteria>).  
Added the ability to publish [distribution/roll ins](<messaging_interest.md>) and [grouped](<messaging_interest_grouped.md>) interest payments to Acadia.  
Added the ability to send [interest payments](<messaging_understanding_interest_payment.md>) to Acadia and poll for updates of finalized statements.  
Added the ability to poll interest payments from Acadia with a state of [Mismatched or Disputed](<messaging_interest.md#mismatched-or-disputed>) get published to the interventions module to be viewed by the user.  
  
## System Information

The Database, Server and Client version numbers can be viewed. 

Select the user in the top right corner of the screen and a drop down menu will appear. 

Select **System Info** and a popup screen will appear with the relevant information.

## Notices

**DISCLAIMER**

SmartStream Technologies makes no representations or warranties regarding the contents of this document. We reserve the right to revise this document or make changes in the specifications of the product described within it at any time without notice and without obligation to notify any person of such revision or change.

**COPYRIGHT NOTICE**

2000-2022 Copyright of SmartStream Technologies. All rights reserved. No part of this publication may be reproduced, stored in a retrieval system, or transmitted in any form or by any means - electronic, mechanical, photocopying, recording, or otherwise - without the prior written permission of SmartStream Technologies Limited.

**INTELLECTUAL PROPERTY WARNING**

The contents of this document and the software it describes are the intellectual property of SmartStream Technologies Limited. The ideas contained in this document must not be disclosed to any third party.

**TRADEMARK NOTICE**

TLM® is a registered trademark of SmartStream Technologies Ltd. All rights reserved.

Other trademarks recognized and property of their respective owner.

**DOCUMENT INFORMATION**

Edition: December 2022
