# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/margin_calls_group_disputes.html

# Grouped Margin Calls Disputes State

## Grouped Margin Calls Disputes State

Margin Calls get transitioned into the Disputes Workflow Queue in one of two ways:

  1. The Margin Call was partially agreed to, and the difference between the amount agreed and the Call Amount was greater than the [dispute tolerance](<dispute_tolerance.md#dispute_tolerances>).
  2. The Margin Call was disputed in entirety. That is the Agreed Amount will be zero.



In this case of 1) two things will have occurred:

  * A partial dispute item was created and placed in the Disputes Workflow State
  * The partially agreed Margin Call will exist elsewhere in the Grouped Margin Calls Workflow



In the case of 2) The Margin Call will reside in the Disputes Workflow Queue only.

When a Margin Call has been transitioned into the Disputes state, it will have been appended with one or more Dispute Categories and a Dispute Comment.

**Note:** It is possible to amend the dispute categories and comments. See the [Dispute Categories and Dispute Comments](<#dispute-categories-and-dispute-comments>) for details.

## Reset Agreed Amount Manually

It is possible that an incorrect Agreed Amount has been recorded on a Margin Call or recorded on the wrong Margin Call. In either case, this can result in one of the following scenarios occurring:

  * A Full Dispute has been created for a Margin Call.
  * A Partial dispute has been created for a Margin Call, and a Partially Agreed Margin Call is being further processed.



Irrespective of the scenario, it is necessary to be remedy the situation so that the correct Margin Calls can be processed.

A [Reset Agreed Amount](<margin_calls_reset_agreed.md>) function exists to facilitate this remedy for full disputes and partial disputes. For partial disputes, the process to do this is outlined below.

## Reset Agreed Amount on a Partial Disputed Call

Unlike a Margin Call that is Fully Disputed, a Margin Call that is partially disputed has two elements:

  * A Partially Agreed element (which may have been further processed) which is still elsewhere in the Grouped Calls Workflow.
  * A Partial dispute which is in the Dispute State.



Depending on the state of the partially agreed element, it may not be possible to reset the agreed amount without first removing any attached Collateral Movements.

**Procedure**

  1. Click the partially disputed Margin call that the agreed amount needs to be reset.
  2. Select the **More** drop down and select the **Reset Agreed Amount**.
  3. A prompt wil appear asking the following:  
"Are you sure you want to clear the agreed amount on this call? Any movements on this call will be set to ignored."
  4. Click the **OK** button. What happens next depends whether the Partially Agreed element of the Margin Call has advanced further than the Grouped Calls Sent state.
  5. If the Partially Agreed Margin Call has progressed further, then the user will be prompted with the following message:  
"Cannot reset agreed amount as Margin Call has "Approved" or "To Be Approved" movements.  
The Agreed Amount will not be able to be reset until the Partially Agreed Margin Call is moved back to the **Sent** state.
  6. If the Partially Agreed Margin Call is still in Sent state.



The Partially Disputed record in the Disputes state is removed.

The partially Agreed Margin Call Workflow state is updated to Sent.

Any Collateral Movements attached to the former partially agreed Margin Call are set to a settlement state of Ignored.

Dispute Comments and Categories are removed.

## Dispute Categories and Dispute Comments

Within this workflow dispute state, it is possible to alter the Dispute Categories and Dispute Comments that have been recorded on a Margin Call:

  1. Select the call that needs modification by clicking on the call to bring up the details. Select the [Dispute Info](<margin_calls_tabs.md#dispute-info-tab>) tab and then click on the **Edit** button.

  2. The Counterparty Details and Dispute Information form opens. 

  3. Make the required changes to Dispute Categories by clearing the check boxes of any dispute categories that need to be deselected. Check the boxes for the categories that need to be recorded for the dispute.

  4. Edit the Dispute Comments as required and click the **Save** button to commit the changes.




Specific validations are performed on the contents of the dispute form.

  * At least one Dispute Category check box must be selected. If no categories are selected, the **Save** button will not become visible.
  * Dispute Comments must be entered. If no comment is entered, the **Save** button will not become visible.



**Note:** The following important considerations applicable in this Workflow state:

  1. Disputed and Partially disputed Margin Calls exist in this state only on the day in which they were transitioned into this state. Once the date in the Agreement's Principal Managing Location (ML) has rolled onto the next day, ( i.e. Date Time for that Agreements Principal Entity Managing Location is > than dispute date) then that item will no longer viewable from this screen, but can be seen by selecting the calculation date of the call through the [calculation date filter](<margin_calls_overview.md#calculationdatefilter>).
  2. Note that the local time/date may not be same as Principal ML time/date. During the day, items are visible with differing dates to the local time zone and items expiring.
  3. Items in this state are affected by recalculations on the same day. The affect differs depending on whether the Agreement is defined as eligible for Intraday Margining or not. For Non Intraday Eligible Agreements see [Recalculations for Grouped Margin Call Workflow](<margin_calls_grouped_recalc.md#recalculations-for-grouped-margin-call-workflow>), for Intraday Eligible Agreements see [Intraday Margin Calculations](<intraday_mc.md#intraday-margin-calculations>).
  4. Items displayed to the user in this workflow state are subject to applied filters.



## Understanding Dispute Amount Calculation

When Margin Calls that are calculated by the Principal are processed in Margin Call Workflow, several key pieces of information are recorded.

This information determines how the calls are further progressed in respective workflow states.

Specifically, the following information can be recorded on a margin call record:

  1. What the Counterparty's corresponding calculation of the type of Margin Call is. Namely, have they calculated the same type (Demand, Anticipated Demand, No Action) of Margin Call (accounting for perspective) as the Principal. This is recorded as Cpty Call Type.
  2. What the Counterparty's corresponding calculation of the amount of the Margin Call is. This is recorded as the Cpty Call Amount.
  3. Finally, and crucially, how much of the call that can be agreed to by the parties is recorded. This is known as the Agreed Amount.



Disputes occur on a Margin Call when the party that is called for margin either:

  * Disagrees in entirety with the call, and can agree to provide nothing. This is known as a full dispute.
  * Agrees to only a partial amount of the margin call, and the difference between what was requested and agreed exceeds a predefined tolerance limit. This is known as a partial dispute.



The amount disputed is recorded as the difference between what was called for, and what was agreed.

However, such a methodology does not account for situations where not only is the Margin Call amount disputed, but moreover, that the two parties have calculated opposite margin call types. (for example, both parties believe that they are entitled to margin)

The system allows the recording of the Cpty Call Type for all margin calls, and uses this in calculation of certain Dispute Amounts.

The rationale being that where the call types calculated between the two parties are opposite, the true dispute amount is the total difference between each parties calculation of what the call amount should be.

In TLM Collateral Management, Call Amounts for Demands are always represented as positive numbers; while those for Anticipated Demands are negative numbers.

What is important to appreciate is that if the signage differs between Prin Call Amount and Cpty Call Amount, then the two parties have calculated opposite call types.

Bearing this in mind, Dispute amount is therefore calculated as follows:

Workflow | Calculation  
---|---  
Demands | Dispute Amount = Principal's Call Amount minus Agreed Amount.  
  
Unless the Cpty Call Type is recorded as Antic Demand  
  
i.e. Cpty has calculated that they can make a demand on the Principal  
  
In this case, Dispute Amount = Principal's Call Amount plus ABS(Cpty Call Amount)  
Antic Demands | Dispute Amount = Counterparty's Call Amount minus Agreed Amount.  
  
Unless the Cpty Call Type is recorded as Demand  
  
i.e. Cpty has calculated that they should be called for Margin by the Principal  
  
In this case, Dispute Amount = ABS(Principal's Call Amount) plus Cpty Call Amount  
No Actions | For No Actions, the Principal cannot agree to any call amount. The Counterparty may have calculated that they can be called, or that they can call the Principal.  
  
Therefore, Dispute Amount = ABS(Cpty Call Amount)
