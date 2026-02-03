# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/understanding_p_and_l.html

# Understanding How Collateral Movements are Created from P&L import

## Background

The system allows the [import](<task_imports.md>) of Profit and Loss (P&L) information for an Agreement.

Specifically, six types of P&L can be imported.

  * Cash Flow
  * CCP Fee
  * Clearing Member Fees
  * Consideration
  * Coupon
  * Price Aligned Interest



P&L type refers to the amount of P&L and the Party to whom the P&L should be paid. When a P&L type is successfully imported, a collateral movement for the corresponding collateral agreement is created in the system. The Collateral Movement is created with a movement direction that reflects which party is the recipient of the P&L amount and is based upon the Agreement's current collateral positions at the time of the P&L import.

During the import process, the system applies the following logic to determine in which direction collateral movements for an Agreement are created.

  1. Determine whether the Agreement currently has a Held or a Posted Collateral cash position in the Currency of the P&L record being imported.

**Note:**

a. Posted positions on an Agreement with a defined Asset Pool are ignored for this determination.

In the below example, A Bank would be determined as having a posted position of USD $500,000 only.

Agreement | Held/Posted | Instrument | Notional | Asset Pool  
---|---|---|---|---  
A Bank | Posted | USD | 10,000,000 | Pool1  
A Bank | Posted | USD | 500,000 |   
  
b. If an Agreement has both a held and a posted cash position, P&L amounts for that currency and agreement cannot be imported.

Consider that in the below example, A bank would be deemed to have only a held USD position.

Agreement | Held/Posted | Instrument | Notional | Asset Pool  
---|---|---|---|---  
A Bank | Posted | USD | 10,000,000 | Pool1  
A Bank | Held | USD | 700,000 |   
  
Contrast with B Bank which would be considered to have both a held and a posted USD position.

Agreement | Held/Posted | Instrument | Notional | Asset Pool  
---|---|---|---|---  
B Bank | Posted | USD | 20,000,000 |   
B Bank | Held | USD | 800,000 |   
  2. If the current cash collateral position is Held.

a. Process all the P&L Movements that are in the Favor of the Counterparty (ApplyTo Party is Counterparty) as Deliver to Principal Movements to increase the Held Position.

b. Process all the P&L Movements that are in Favor of the Principal (ApplyTo Party is Principal) as Return to Counterparty Movements to reduce the Held Position.

c. If during step b) a Return to Counterparty Movement for a P&L amount is greater than the current Held position, split that P&L amount into two movements:

     * a return to counterparty movement with a notional amount that will reduce the held position to zero.
     * a deliver to counterparty movement with a notional equal to the residual amount of the split P&L amount.

d. Continue to Process any remaining P&L amounts that are in Favor of the Principal as Deliver To Counterparty Movements.

In summary, if the Total Amount of P&L that is in Favor of the Principal is greater than the sum total of Current Held cash position and Total P&L in Favor of the Counterparty, then:

     * The final collateral position will "flip" from Held to Posted.
     * Two collateral movements will be created for the "single" P&L amount which causes the collateral position to change direction.
  3. If the current cash collateral position is Posted.

a. Process all the P&L Movements that are in the Favor of the Principal ( ApplyTo Party is Principal) as Deliver to Counterparty Movements to increase the Posted Position.

b. Process all the P&L Movements that are in Favor of the Counterparty (ApplyTo Party is Counterparty) as Return to Principal Movements to reduce the Posted Position.

c. If during step b) a Return to Principal Movement for a P&L amount is greater than the current Posted position, split that P&L amount into two movements.

     * A return to Principal movement with a notional amount that will reduce the held position to zero.
     * A deliver to Principal movement with a notional equal to the residual amount of the split P&L amount.

d. Continue to Process any remaining P&L amounts that are in Favor of the Counterparty as Deliver To Principal Movements.

In summary, if the Total Amount of P&L that is in Favor of the Counterparty is greater than the sum total of Current Held cash position and Total P&L in Favor of the Principal, then:

     * The final collateral position will "flip" from Posted to Held.
     * Two collateral movements will be created for the P&L amount which causes the collateral position to change direction.

There are some worked examples at the end of this topic that show the movement creation process.

  4. The Collateral Movements that are created are based on the following fields from the P&L import record

Collateral Movement Field | Value derived from | Comments  
---|---|---  
Settlement Date | SettlementDate on P&L Import. | Settlement date is a mandatory field on P&L import  
Agreement Name | AgreementName on P&L import. | Agreement is also mandatory on P&L Import  
Type | Profit and Loss. | All movements created as a result of P&L import are type Profit and Loss  
Status | This is set as In Transit. | In Transit movements are taken into consideration on Margin Calculations.  
Eligibility | Calculated. | P&L records on the import are specified in a Currency which is equated to the corresponding Cash instrument for that currency. For example, specifying GBP on the P&L import will mean the P&L amount will be assumed to be a notional in GBP Cash instrument.  
  
When collateral movements for a P&L amount are created they are done so with a cash instrument of the specified currency. The eligibility of this cash instrument on the Agreement is then evaluated.  
Direction | System calculated during Import Process. | Movement direction is calculated according to the logic outlined in steps 1) to 3) above.  
Instrument Ref | This is the Primary ID of the [Cash Instrument](<instruments.md#create-instruments>) that has a currency value equivalent to Currency defined on the P&L import. | Currency is mandatory on P&L import.  
Instrument Description | Taken from description field of [Cash Instrument](<instruments_cash.md>) in Instrument Ref. |   
Notional | This is P&L amount specified in one of six fields on the P&L import. | There are six P&L types that can be defined on a single row on the P&L import.  
  
\- Cash Flow  
\- CCP Fee  
\- Clearing Member Fees  
\- Consideration  
\- Coupon  
\- Price Aligned Interest  
  
A collateral movement is created for each P&L type when the corresponding field has a non zero value. The numeric value of the P&L type field forms the notional of the movement.  
  
**Note:** If the processing of the P&L records, will cause a collateral position to change direction,the P&L amount will be split into one return collateral movement and one delivery collateral movement. The sum of the notional amounts on these two movements will equal the P&L amount.  
  
See steps 1) to 3) above.  
Ccy | Taken from currency field of the Instrument ref. |   
Mkt Val (Agmt Ccy) | Calculated. | The market value of the collateral movement in agreement Ccy, as calculated: [Notional * Price * Valuation % tage * FX conversion Rate]  
  
For Cash Instruments price is fixed at 1.  
Mkt Val (Instr Ccy) | Calculated. | The market value of the collateral movement in the Ccy of the actual instrument.  
  
[Notional * Price * Valuation % tage *]  
  
For Cash Instruments price is fixed at 1.  
User | Derived. | This is the user account that is used by the AlgoWinServicePrimary service.  
Created Date/Time | Derived. | The time / date stamp of when the P&L import ran and the collateral movement was created.  
Reason | < Blank > | This field is populated only when a movement is cancel/replaced.  
Reviewed By | < Blank > | Populated only when a movement has been approved. Collateral Movements generated from P&L imports do not require approval.  
Reviewed Date/Time | < Blank > | as above  
Margin Type | This is set to Variation. | Margin Type is always set to variation.  
  
P&L can be imported for Agreements of the following Business Lines.  
  
1\. Central Clearing  
2\. Client Clearing  
3\. OTC  
  
But only Central Clearing and Client Clearing where the Margin Type on the Agreement is set as Variation.  
  
**Note:** OTC Agreements that segregate Variation and Lock Up can have collateral movements with a type of Variation or Lock Up. However, collateral movements created for P&L imports are always set to be Margin Type of Variation.  
Physical Settlement | This is set to No. | P&L movements are assumed to be non physical settlement.  
P&L Type | Taken from P&L Import. | The value specified here corresponds to which of the Six P&L types specified on the P&L import row created a movement.  
  
**P &L Import Field > P&L Type**  
  
CashFlow > Cash Flow  
  
CCPFee > CCP Fees  
  
ClearingMemberFees > Clearing Member Fees  
  
Consideration > Consideration  
  
Coupon > Coupon  
  
PriceAlignedInterest > Price Aligned Interest  
Exchange Trade Reference | Taken from ExchangeTradeReference on P&L Import. | This field is optional on P&L import.  
Trade Reference | Taken from TradeReference on P&L Import. | Again, this field is not mandatory on import.  
Margin Call Id | < Blank > | Movements created from P&L imports are not assigned to a Margin Call. Therefore this field is blank.  
Tri-Party Custodian | < Blank > |   
Movement Id | System Generated. | Movement ID is an automatically generated unique reference when a collateral movement is generated.  



**Note:**

  1. The system does not validate the posting party defined on an Agreement when creating P&L related collateral movements.

It is not expected, nor recommended, that P&L will be imported for Unilateral (Single Posting Party) Agreements as collateral movements could potentially be created with a direction of deliver to the Posting Party. In such a situation, it is a possibility that anomalies could occur in Margin Calculations.

  2. When the system calculates what the current held or posted position is, only certain future dated in transit movements are considered.

     * Those that are returns for the same Agreement & Currency.
     * Those that are delivers that occur on the earliest settlement date in the P&L import file for that Agreement and Currency.



This can result in situations where when future dated movements are settled a Held and Posted Position is created.
