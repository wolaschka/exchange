
# Understanding Dates and Times

## Background

TLM® View Collateral displays dates and times in various places throughout the application:

  * Margin Call Workflow
  * Interest Payment Workflow
  * Substitution Workflow



The time and date that are displayed are, unless stated otherwise, always from the perspective of the Principal Managing Location on the Agreement in question.

Typically, the collateral Analyst will be in the same timezone as the Principal Managing Location of Agreements under their Agreement Group, in which case the times and dates displayed will very likely match their local time.

However, this may not always be the case, and so it is important to understand how dates and times are arrived at to avoid any confusion.

## Examples

**Example 1**

**Scenario**

The user is a collateral analyst physically located in Amsterdam (GMT+1 hr)

The TLM Collateral Management Database is in London (GMT)

The TLM Collateral Management Application Server is in London (GMT)

The user is responsible for managing 3 Agreements, each with a differing Principal Managing Location (Principal Location):

**Abc Bank Csa** \- Prin Loc New York (GMT -5hrs)

**Demo Interest Distribute** \- Prin Loc London (GMT)

**A Bank** \- Prin Loc Tokyo (GMT+9hrs)

The user executes the Margin Calculation Task for the 3 Agreements at 18:58 local time on 20th January.

It may be useful to refer to the following time-line diagram to ease understanding of the following sections.

![TimeLineView.jpg](Images/TimeLineView.jpg)

**Explained Outcome**

The Margin Calculation Task was initiated in Amsterdam at 18:58 (GMT+1) but executed on the Database/Application server at 17:58 (GMT) London Time on the 20th January.

The Margin Calculation Task calculates the Margin Requirements for the 3 Agreements using the time/date as per the Principal Managing Location of the Agreements involved.

That is, the time-stamp for the Margin Calculation used per Agreement is the equivalent time/date per the Agreement Principal Managing Location of the time of the task executing - that is 17:58 GMT.

This therefore gives the following calculation dates and times for the three Agreements.

Tokyo = 20th Jan 17:58 GMT + 9hours = 21st Jan 02:58

London = 20th Jan 17:58 GMT + 0hours = 20th Jan 17:58

New York = 20th Jan 17:58 GMT 5 hours = 20th Jan 12:58

Setting times and dates per the Principal Managing Location for an Agreement is used extensively throughout the Workflow - for example the time-stamp applied when Margin Notices are sent, when Margin Movements are agreed or rejected etc.

Additionally, for those Workflow states where the items expire after one day (Unsent, Waived, and Dispute states), the item is expired when the date per the Principal Managing Location changes to the next day.

This may mean that the user sees items "expiring" from the state during their local day if they are in a different timezone to the Agreement Principal Location.

**On Hold Margin Calls**

This functionality is to handle asynchronous managing location timezones. Specifically, where date boundaries may cause the call to expire before the principal has a chance to respond. The impacted scenario is where the Principal Managing Location has an earlier timezone than the Counterparty Managing Location.

Under this scenario the active expiry timestamp for an Anticipated Demand or No Action margin call is set to be the end of the next business day for the principal. Now a user who has calculated a margin call in an earlier timezone can now action a corresponding margin call received from their counterparty who had calculated and sent the call in later timezone.

This is optional functionality which needs to be configured. A configuration key would be added to the web and windows service configurations, (key is add key="OnHoldMarginCallTimezoneThreshold" value="25:00:00"). For further information, please refer to the installation guide.

**Example 2**

The collateral analyst is physically in Tokyo (GMT+9 hr)

The TLM Collateral Management Database is in Tokyo (GMT+9 hr)

The TLM Collateral Management Application Server is in Tokyo (GMT+9 hr)

The analyst is responsible for managing an agreement where the Principal Managing Location is Tokyo (GMT+9 hr) and the Counterparty Managing Location is New York (GMT -5hr).

![TimeLineViewOnHold.jpg](Images/TimeLineViewOnHold.jpg)

The analyst executes the Margin Calculation Task for the agreement at 08:00 Tokyo time on 20th January, that produces an Anticipated Demand.

The counterparty calculates and sends their Demand at 08:00 New York time on 20th January, which is 22:00 Tokyo time on 20th January.

The system extends expiration time for Anticipated Demands and No Actions where the Principal Managing Location is in an earlier timezone than the Counterparty Managing Location.

The analyst is then able to respond to the counterparty Demand on 21st January at 08:00 as the call will expire at 23:59 Tokyo time on 21st January.

Amending Principal Managing Location: Considerations

As Principal Managing Location governs the time stamps applied to Margin Calls and Interest Calculations, caution is recommended if the user wishes to change it when open margin calls / Interest Payments exist.

Should the Managing Location change and a Margin Calculation Result is in the Margin Workflow - the Calculation Date / Time on the Margin Call item will update automatically to reflect the revised Principal Managing Location. This may mean that the item is expired from certain queues, depending on where in the Workflow it happens to be.

The behavior for Interest Payments / Accruals is somewhat different. If the Principal Managing Location is amended on an Agreement after the Interest Calculation Task has been run, the revised Principal Managing Location time-stamps are not applied. It is therefore necessary to manually recalculate Interest Accruals/Payments for the affected Agreement to update the Interest item correctly.
