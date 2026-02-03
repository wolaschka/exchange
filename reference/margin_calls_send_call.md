# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/margin_calls_send_call.html

# Send Call(s)

## Demands - Unsent

Initially, all Demands are contained within the Unsent Demands workflow state.

**Procedure**

  1. To send a Margin Call Notice, select the call(s) by either selecting an individual call or by selecting the check box to the left of the margin call in the grid. Multiple calls can be sent at one time. To send all the calls for this workflow state, select the Select/Deselect All check box at the top left corner of the grid.

**Note:** The **Send Call(s)** button may not become enabled if different types of calls are selected. For example, an demand and anticipated demand or a Demand and a Grouped Demand.

  2. The call will transition to a **Sent** workflow state and the Margin Call Notice will be sent to the counterparty provided certain pre-requisites have been met. See [How to Define a Contact](<contactinfo.md#adding-new-contacts>) for more details.




It is possible to configure the system so that only individual items can be transitioned. See [Restricting Multiple Transitions in Workflow states](<restrict_multi_transitions.md>).

## Anticipated Demands - Unsent SVA

Initially, all Antic Demands Margin Calculation Results generated for Agreements where the Principal is set as the Valuation Agent, are contained within the Unsent SVA Anticipated Demands Workflow state.

It is possible to send a Margin Notice to the Counterparty notifying them that they can make a Margin Call on the Principal.

**Procedure**

  1. Click the check box to the left of the Margin Call in the grid that needs to be sent.
  2. More than one Margin Call can be sent at once by selecting the check boxes to the left of the corresponding agreements.
  3. Alternatively, to send all Margin Calls for this Workflow state, select the Select/ Deselect All check box. Clearing this check box will deselect all Agreement Names within this Workflow state.
  4. Click the Send Call(s) button to progress the call the Sent SVA state. A Margin Valuation Notice is emailed to the contacts for the Agreement of Margin Notice. The standard body of an email for an Anticipated Demand for an SVA will specify that the notice is for a Sole Valuation Notice.


