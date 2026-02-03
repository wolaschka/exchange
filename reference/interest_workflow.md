# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/interest_workflow.html

# Interest Workflow

## Overview

Interest Payments once created, are treated in one of two ways:

  * Rolled: The agreed Interest Payment will be added to (or Rolled In to) the corresponding cash collateral balance in the system.

  * Distributed: The agreed Interest Payment will physically be paid to the owed party.




This behavior is governed by the [Distribution Preference](<agreements_interest.md#distribution-preference>) value that is defined at the agreement level.

There are 5 preset filters defined in the system for Interest. 

All Interest payments can initially be found in the preset filters of **All** or the **To Be Started**.

  * [**All**](<#all>) \- all interest payments created, [completed](<interest_workflow_actions.md#view-interest-payments>), or need further action which includes distributions, roll ins and groups.
  * [**To Be Started**](<#to-be-started>) \- interest payments waiting to be initiated
  * [**In Progress**](<#in-progress>) \- interest payments that have been initiated and waiting for payment
  * [**Approvals**](<#approvals>) \- interest payments waiting for the payment(s) to be approved
  * [**Confirmed**](<#confirmed>) \- interest payments waiting for settlement



The Interest Payments that are available and actionable in all the Interest Workflow states are based upon the user's assigned [agreement responsibilities](<understand_scope_responsibility.md>) and the agreements that fall within the Agreement Scope that the user is assigned to.

## All

When in the **All** state, the system provides the user a single point of reference to find and view all interest payments which include created interest payments for distributions and roll ins and completed payments.

They can be [filtered](<interest.md#search-criteria>) to find a specific payment or reduce the amount of data returned after selecting the Search button.

## To Be Started

The first stage of processing Interest Payments is to provide the Counterparty with an Interest Statement for the Interest Period which shows the cash balances and Index rates for the period and calculates an Interest Payment that they should receive.

To send the statement, click the checkbox or click on the interest payment to send the statement. This will enable the **Send** button. Clicking the button will send the notice and promote the payment to the next workflow state of "**Sent** ".

Once the Send button has been clicked, three things occur:

  1. The transition will validate if a cash collateral Movement(s) has been recently [created](<movements.md#create-a-manual-movement>) or [cancelled](<movements.md#cancel-a-manual-movement>) for a settlement date within the Interest Payment period.

The Interest Payment Send transition process will determine if a cash collateral movement(s) affects the Interest Payment when:

     * the cash Movement is for the same Agreement Name as the Interest Payment
     * the cash Movement is for the same Instrument as the Interest Payment
     * the cash Movement Type is for the same Position Type of the Interest Payment - i.e. Held (Deliver to Principal, Return to Counterparty) or Posted (Deliver to Counterparty, Return to Principal)

**Note:** When an Agreement's Net Held and Posted Interest Payments indicator is checked, i.e. Held and Posted Interest Payments are netted, Movement Type is not validated against the Interest Payment Position Type - as all Movement Types will impact the Interest Payment.

     * the cash Movement is for the same Collateral Margin Type as the Interest Payment
     * the cash Movement Settlement Date is less than or equal to the Period End Date of the Interest Payment
     * the cash Movement was last edited after the Calculation Date/Time of the Interest Payment

When all of the above criteria have been met, the Send transition will fail and the Interest Payment(s) will remain in the … to be Sent filter.

Interest Payments that fail the transition can be identified through the the status column.

In order to advance the Interest Payment(s) failing for an impacting cash collateral movement, the Interest Payment(s) needs to be recalculated.

Before recalculating the failing Interest Payment(s), it is strongly recommended to:

     * Identify the underlying movement(s) impacting the Interest Payment
     * Progress the movement(s) to an In Transit or Settled state
     * Verify all the movements within the Payment Period are accurate

**Note:** The last edited time on a Movement changes with each settlement state progression. Therefore, it is strongly recommended that any underlying movement affecting the transition of an Interest Payment is progressed to an In Transit state prior to recalculating the Interest Payment. Progressing the movement to a Settled state is recommended if your organization requires the Settlement Task to run more frequently than on an end of Principal Managing Location basis.

  2. The system will send, or attempt to send, a PDF and a CSV Interest Statement for the Interest Payment in step 1), via email to all the contacts that are defined on the agreement as being eligible to receive Interest Statements for that Margin Type. A contact will need to be defined as eligible to receive interest statements of the same margin type as the interest payment selected in step 1).

If a contact is eligible to receive Variation Interest statements, but the interest payment selected in step 1) is for margin type Lock up, then the contact will not receive the statement. Only those contacts defined on this agreement with Lock Up Interest Statement eligibility would receive the statement.

The email will be sent from the email address defined in the agreement group and the subject line will be Interest Accrual Notification <_Principal Entity_ > <_Agreement_ > <_COB Date_ >.

The CSV file attached will allow the file to be consumed for reconciliation purposes.

  3. The Interest Payment Item selected in step 1) will be advanced to the next Interest Workflow filter: 

For Interest Distribution and Roll In Payments, they are transitioned to In Progress




## In Progress

When the notice has been sent to the **Sent** or **Sent - to be Agreed** state, the user has several options. 

The user can do one of the following:

  * [Resend](<interest_workflow_actions.md#resend>) the Interest Statement
  * [Distribute](<interest_workflow_actions.md#distribute>) or [Roll In](<#roll-in>) to the Interest Amount
  * Process the payment as a [Roll In](<interest_workflow_actions.md#changing-distribution-preferences>)
  * [Recalculate](<interest_workflow_actions.md#recalculate>) based on changes that could occur since the time the even was created
  * Change the payment to a [Gross](<interest_workflow_actions.md#changing-a-payment-to-net-or-gross>) calculation
  * Extend the [End Date](<interest_workflow_actions.md#extend-end-date>)
  * Cancel an [Ad-Hoc Payment](<interest_workflow_actions.md#cancel-ad-hoc-payment>)
  * View the [Interest Statement](<interest_workflow_actions.md#view-statement>)



After the interest payment is agreed, it will move to the preset filter of **Approvals** and a Workflow state of **Agreed - To Be Approved**.

**Note:** Additional Considerations

  * Items in this state do not expire at the end of the day. They can be removed from this state by being either rejected or Approved. The exception is for Ad Hoc payments, which can be [manually cancelled](</interest_workflow_actions.md#cancel-ad-hoc-payment>).
  * Rejected items will be transitioned with a Transition Status of Rejected. Approved items get transitioned to Approved to be Distributed state.
  * Items in this state can be subject to Interest Payment Recalculation, if recalculation results in a different payment. If so they will be removed from the grid if the Payment Recalculation generates a different Payment amount. See [How to Recalculate Multiple Interest Payments and Identifying Recalculated Interest Payments](<interest_workflow_actions.md#recalculate-interest-payments>) for more information.
  * It is not possible to Approve or Reject Interest Movements from the Movements Screen.



## Approvals

This next stage of the Workflow process is for a different user, who has approval privileges, to either Approve the Payment or Reject it. 

The user who promoted the payment does not have privileges to approve the payment but does have permission to reject it and send the payment back to a state of **Sent - To Be Agreed**.

To Approve the payment, a user can click on the check box for the interest payment that needs approval or click on the payment to drill down and view the payment. 

By selecting the payment(s), the **Approve** and the **Reject** * buttons become available.

Along with the **Approve** button, there are other actions that can be taken in this state. The user can Process as a **Roll In** or if the payment was a Roll In, it can be [processed as a distribution](<interest_workflow_actions.md#changing-distribution-preferences>). The user can also [Extend End Date](<interest_workflow_actions.md#extend-end-date>) and also cancel an [Ad-Hoc](<interest_workflow_actions.md#cancel-ad-hoc-payment>) if the payment was created as an Ad-Hoc.

## Confirmed

Interest Distribution Payments are moved into this Workflow state of Approved - to be Distributed or Approved - to be Rolled in once they have been approved.

Interest Payments remain in this Workflow state until the corresponding Interest Movement is fully settled. The Agreed Interest Payment is physically made to the Principal or Counterparty, and the Collateral Movement that constitutes that physical payment is updated to a final settlement state.

While in this state, the collateral movements that constitute the Interest Payment movement are in an In Transit state. In Transit Movements for Distributions are not included in Collateral Balances.
