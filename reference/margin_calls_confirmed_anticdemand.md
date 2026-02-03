# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/margin_calls_confirmed_anticdemand.html

# Antic Demands Workflow - Confirmed State

## Background

Antic Demands are moved into this Workflow state once a user has input the required collateral movements in the Antic Demands Workflow - Agreed state and clicked on the Send to Settlements or approved the movements in the Antic Demands Workflow - Confirmed Pending Cpty Response state and clicked on the Counterparty Accepts button.

Antic Demands remain in this Workflow state until they are fully completed.

Once an Antic Demand has been transitioned into this state, the agreed amount entered that was input in the Antic Demands Workflow - Anticipated Demands state is no longer taken into consideration in any subsequent Margin Calculations.

Instead the current market value of the collateral movements that have been entered on the margin call are taken into consideration as in Transit collateral.

The value of the collateral movements is calculated as follows:
    
    
    Price of Instrument * Notional * Valuation Percentage * FX conversion rate (if applicable).
    

Settled Collateral Positions are also taken in consideration in any margin calculations.

## Completion process

An Antic Demand is only fully completed when all the collateral movements have been updated to a settled (or failed or cancelled) state - this is done by the Settle Movements task. Once all the collateral movements for a particular Antic demand Margin Call have been marked as settled/failed/cancelled then the item will be removed from this state.

Once fully completed the Antic Demand margin call is viewable from the All tab with a status of completed, which is the end state for the call.

Considerations for OTC Agreements that segregate collateral requirements.

One exception to the completion process exists, and is applicable to these form.

As these form of agreements generate a margin call for the Lock Up requirement of the margin call and a separate margin call for the Variation element of the margin call, there are at least two margin call requirements per single call.

As these separate margin call requirements are processed separately through the workflows, each of the individual margin call requirements can reach a settled state independently.

This means, that although an individual call requirement is completed, the whole margin call may not be, until each margin call requirement reaches its final state.

**Note:** Items in this state are filtered according to the Agreement Scope and Agreement Responsibility Groups that the user is assigned to. See [Understanding Agreement Scopes and Agreement Responsibility Groups](<understand_scope_responsibility.md>).
