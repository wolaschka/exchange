
# Understanding How Mkt Val (Agmt Ccy) is calculated and displayed

There are numerous areas in the system where the Market Value in Agreement Currency ( Mkt Val Agmt Ccy) of Collateral is displayed. Typically Mkt Val (Agmt Ccy) is calculated using Notional * Dirty Price * Valuation Percentage, and then converted back into Agreement Ccy if necessary.

In the event that a collateral position or movement exists for an ineligible instrument, that is the instrument in question is not defined as eligible on the Agreement, then the Valuation Percentage that is applied for valuation purposes is zero. This results in a zero Mkt Val Agmt Ccy. However, this is not the case for Substitution Movements. The system will allow the user to see the true market value of an ineligible collateral position when processing a substitution. The valuation percentage of zero for ineligible is not applied.

The formula for calculating the Mkt Val (Agmt Ccy) for an ineligible Collateral Movement for Substitutions is as follows:

Notional * Dirty Price and then converted back into Agreement Ccy if necessary. The Valuation percentage of zero is not applied.

The rationale behind this approach is to allow users to know how much collateral they must substitute for an existing ineligible position.

The below table summarizes how the Valuation percentage is applied to differing collateral movements.

Collateral Movement Type | Eligibility of Instrument | Valuation % applied to calculate Mkt Val (Agmt Ccy)  
---|---|---  
Substitution - return movement | Eligible | per agreement eligibility tab  
Substitution - return movement | Ineligible | Not applied  
Substitution - delivery movement | Eligible | per agreement eligibility tab  
Substitution - delivery movement | Ineligible | Not applied  
Collateral Movement entered via Workflow | Eligible | per agreement eligibility tab  
Collateral Movement entered via Workflow | Ineligible | 0%  
Manual Movement via movement screen | Eligible | per agreement eligibility tab  
Manual Movement via movement screen | Ineligible | 0%
