# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/validation_margin_calculation_task.html

# Validations Performed when running Margin Calculation Task

During the Margin Calculation the system performs a series of validations.

## Exposure Amount Validations

During the Margin Calculation the system checks whether all trades being included in the calculation have an Exposure Amount. If a trade has been imported with a NULL value this will be treated as a zero for the purpose of the margin calculation and a "Warning" validation message will be given. ([validation message number 126](<validation_messages.md#126>)). The Margin Calculation Result for the affected agreement(s) will be displayed with a warning status.

## Credit Ratings for Ratings Related OTC Agreements

If any of the margin terms for an Agreement are credit ratings related, and the field All specified ratings required is checked on the Ratings Based Margin Terms screen, the system will check to ensure that a credit rating for the parties has been received from all the credit agencies specified. If not, a warning will be generated ([209 Not All Ratings Required Present](<validation_messages.md#209>)) and a zero value will be used for margin calculation purposes for any margin parameters that have been defined as credit rating related. The Margin Calculation Result for the affected agreement(s) will be displayed with a warning status.

Similar to the above if any of the margin terms for an Agreement are credit ratings related, the system will check to ensure that a credit rating for the parties is recorded for all the credit agencies specified in the Ratings Based Margin Terms Screen. If no credit ratings exist at all for the parties, a warning will be generated ([208 NoRatingsPresent](<validation_messages.md#208>)) and a zero value will be used for margin calculation purposes for any margin parameters that have been defined as credit rating related for the affected Agreement. The Margin Calculation Result for the affected agreement(s) will be displayed with a warning status.

## Price Source, Quote Type and Price Date Adjustment existence

The system then checks whether a dirty price exists for the collateral positions and collateral movements associated to each agreement.

How this check is undertaken differs slightly according to the Agreement's Business Line.

For OTC Agreements, the system checks items that should be used in calculating collateral Values.

  * Price Source
  * Price Quote Type
  * For Repo and Securities Lending Agreements, the system checks
  * Price Adjustment
  * Price Source
  * Price Quote Type



The system then checks whether those instruments in which the agreement has a position or movement have a dirty price for the same price source, price quote type, (and for Repo / Securities Lending Agreements - price adjustment) combination as defined on the Agreement. Should there be a mismatch between the values specified on the agreement and those on the Instrument Price record, the price will be regarded as missing.

Should a price for an instrument be missing, and the instrument be eligible, validation message 197, will be raised for that agreement, and a zero market value will be used for margin calculation purposes for any affected movements or positions, otherwise the system will value collateral positions and movements using the latest dirty prices for the instruments. For example, if an Agreement specifies a Price source of Bloomberg and Price Quote Type of Mid for prices, and a position exists on the agreement for an instrument which has Reuters price source and Bid prices the system will raise a price missing error during calculations.

Additionally, Repo / Securities Lending Agreements have a defined Price adjustment date. If an Agreement specified price source of Bloomberg, Price Quote type of Mid and Price Adjustment of T+2 and a position exists on the agreement for an Instrument with which has Bloomberg price source, Mid Quote type but Price Adjustment of T, the price will be assumed to be missing, and the system will raise validation message 197 and use a zero price for the instrument on the Margin Calculation.

## Collateral Movement Integrity

The system checks the eligibility of collateral movements and positions. If the instrument is found to be ineligible - e.g. it is not defined as a eligible instrument or covered under an eligible bucket via the basic eligibility tab of the agreement, by definition there will be no applicable valuation percentage to use for adjusting the collateral value. Should this be the case, [validation message 201](<validation_messages.md#201>) will be raised and the system will use a zero valuation percentage for the affected collateral movement(s) or position(s); effectively giving them a market value of zero for margin calculation purposes.

Assuming valuation percentages exist for the instrument, then they will be used for collateral valuation purposes according to the following.

Movement Type | Value taken from below field for collateral bucket / instrument in Basic Eligibility Tab of Agreement.  
---|---  
Deliver to Principal | Held Valn%  
Return to Principal | Posted Valn%  
Deliver to Cpty | Posted Valn %  
Return to Cpty | Held Valn%  
  
## Basic Eligibility Evaluation

Similar to the above, the system will raise [validation message 202](<validation_messages.md#202>) if a collateral position or movement exists for an instrument that can fall into 2 or more eligible collateral buckets on the Basic Eligibility tab for the agreement. In this situation the system is unable to determine which of the numerous eligible buckets should be used. It therefore will not associate the collateral instrument to any of the eligible buckets and will use a zero valuation percentage for the affected collateral movement(s) or position(s); effectively giving them a market value of zero for margin calculation purposes.

The system also checks that all required exchange rates are available in the system. The required rates are those needed to convert the following:

  * Exposure Amount Currency to [System Currency](<system_currency.md>) ([validation message number 128](<validation_messages.md#128>)).
  * Exposure Amount in [System Currency](<system_currency.md>) to Agreement Currency ([validation message number 127](<validation_messages.md#127>)).
  * Additional Margin Currency to [System Currency](<system_currency.md>) ([validation message number 168](<validation_messages.md#168>)).
  * Lock Up Margin Currency to [System Currency](<system_currency.md>) ([validation message number 169](<validation_messages.md#169>)).
  * If any of these exchange rates are missing the margin calculation will not occur for the affected agreement(s). A "No Action" Margin Calculation Result will be generated and be displayed with a failed status.



**Note:** In order for these currency conversions to take place correctly, the [system currency](<system_currency.md>) must load an FX rate of 1.

## Advanced Eligibility Evaluation

The system checks an agreement's collateral positions and movements against any advanced eligibility rules that are defined. Should a collateral position fail an advanced eligibility rule, [validation message 202](<validation_messages.md#202>) will be raised, and the system will assign a zero valuation percentage to the affected collateral positions. Identically to basic eligibility check above,this will effectively assign any such positions a zero market value for the purposes of margin calculations.

## Ratings Based Eligibility Evaluation

The system checks collateral positions and movements for each agreement against any ratings based eligibility rules that are defined. If the movement or position fails that rule evaluation, [validation message 202](<validation_messages.md#202>) will be raised, and the system will assign a zero valuation percentage to the affected collateral positions. Identically to basic eligibility check above, this will effectively assign any such positions a zero market value for the purposes of margin calculations.

## Wrong Way Risk Eligibility Evaluation

The system checks collateral positions and movements for each agreement against any wrong way risk eligibility rules that are defined. If the movement or position fails that rule evaluation, [validation message 202](<validation_messages.md#202>) will be raised, and the system will assign a zero valuation percentage to the affected collateral positions. Identically to basic eligibility check above, this will effectively assign any such positions a zero market value for the purposes of margin calculations.

## Lock Up Collateral Position Integrity Check

Lock Up requirements are always netted into a single positive or negative result in the system. It is assumed therefore that Lock Up requirement will always be in a single direction - either in favor of the Principal or Counterparty but never both simultaneously.

Consequentially, it is always assumed that Lock Up collateral positions will always be either held or posted, never both simultaneously.

If Lock Up collateral is both held and posted, it is assumed to be a booking error, and the system will raise [validation message 244](<validation_messages.md#244>) and a warning icon will be placed beside the affected agreement's margin calculation results in the margin call grids. Moreover, if lock up collateral is both held and posted, the margin calculation result for the affected agreement will not be correct.

**Note:** Should this error be raised, it is strongly recommended that to correct the collateral positions with Manual Movements and then recalculate the affected Agreements to generate corrected Margin Calculation Results.

## Lock Up Exposure Check

Following on from the above, as Lock Up exposure is always assumed to be in one party's favor at any one time, the system checks this when an agreement is subject to the margin calculation task. If during the task, the system identifies that an agreement has lock up exposure (whether on OTC trades, as a defined margin requirement, or part of a ratings based margin parameter,) in favor of the Counterparty and Principal, then [validation message 246](<validation_messages.md#246>) is raised, and a warning icon will be placed beside the affected agreement's margin calculation results in the margin call grids.

The assumption made here is that it is a booking error, and that the user should investigate and resolve the underlying issue. However, unlike the above scenario regarding simultaneous held and posted lock up collateral, should lock up exposure exist in both parties favor, the margin calculation will not be incorrect.

## Pending Approval Checks

Virtually all fields for an Agreement are subject to approval. That is, if value(s) are added/changed, the updated value(s) are set to a Pending Approval status, until they are either approved or rejected.

If a Margin Calculation is run for an Agreement that has any Pending Approval values for Agreement Data, then [validation message 262](<validation_messages.md#262>) is raised, and the calculation uses the corresponding values prior to the change. In short - Pending Approval values are not used in margin calculations.

If there are any pending changes for any contact associated to any agreement subject to the Margin Calculation Task then [validation warning 348](<validation_messages.md#348>) is raised - Agreement has pending unapproved changes.

It is also possible to view the [history of the task](<task_status.md#history-of-the-task>).
