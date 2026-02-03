# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/assetpools.html

# Asset Pools

## What is an Asset Pool?

In the most simple form, an Asset Pool is a collection of assets (securities, cash).

They are comprised of four data elements:

  * Asset Pool Name
  * Instrument Reference
  * Instrument Balance
  * Effective Date



**Note:** An Instrument balance can be negative.

## Asset Pool Creation and Usage

Asset Pools are created outside TLM Collateral Management in the TLM Collateral Manager web application.

When an Asset Pool is created it is associated to a Principal.

**Note:** An Asset Pool can be associated only to a single Principal. However, a single Principal can have multiple Asset Pools associated to it. The Asset Pool to Principal association process is also performed within the TLM Collateral Manager web application.

Asset Pool instrument balances are imported into TLM Collateral Management for a given effective date.

Once imported, they are then potentially available to be used by the associated Principal's to satisfy their collateral obligations.

In this sense, Asset Pool balances are conceptually very similar to Rehypothecatable Collateral.

For example, assets in an Asset Pool with positive balances can be used by the associated Principal's Agreements to satisfy their collateral delivery obligations on Anticipated Demands and Substitutions.

There are a couple of key differences

  * Balances for Asset Pools, unlike items of Rehypothecatable collateral, have not been sourced from the Counterparties to the Collateral Agreements
  * Moreover, Asset Pool Balances for a defined effective date are not carried forward to subsequent effective dates, and are regarded as having a zero balance on any non defined effective dates.



The following simplified diagram gives a high level overview of collateral inventory for a fictional Principal M Bank.

![InventorySummary.jpg](Images/InventorySummary.jpg)

In order that a collateral movement can make reference to an asset pool the following conditions must be met:

  * The movement is being booked on a Collateral Agreement with a Principal to which the asset pool has been associated.
  * The collateral movements has a direction of Deliver to Counterparty or Return to Principal.



Collateral Movements that reference an asset pool, adjust asset pool balances in the following ways:

  * **Deliver to Counterparty** movements that have a defined Asset Pool decrement the asset pool balance for the Instrument on the movement by the notional amount of the movement for the defined settlement date.
  * **Return to Principal** movements that have a defined Asset Pool increment the asset pool balance for the Instrument on the movement by the notional amount of the movement for the defined settlement date.



## Available Notional for Asset Pool

The system keeps track of the current available notional amount of each Instrument in an Asset Pool per effective date.

Available notional for an effective date for an Asset Pool Instrument is calculated as:

The sum of the last imported balance for the Instrument on the Asset Pool for the effective date minus the following two groups of items to account for usage.

  1. The sum of the notional amounts on settled Posted Positions for the same Instrument for the same Asset Pool.
  2. The sum of the notional amounts on all unsettled Deliver to Counterparty movements which reference the same Instrument and same Asset Pool, and which have a settlement date equal to or before the effective date of the corresponding Asset Pool balance.



Where the available notional for an Instrument as a result of the above calculation yields a positive number, it can be used for asset allocation for that effective date.

## Asset Pool Balances and Asset Allocation

Asset Pool balances are available for allocation to Antic Demands within the Margin Call Workflow and similarly for Substitutions within the Substitution workflow.

However, in order that an asset pool balance can be shown as available to be allocated, the following conditions apply:

  * The security in the asset pool must have a positive available notional balance for one or more of the effective dates shown in the asset allocation screen.
  * The security must be eligible to be posted for the Collateral Agreement that is being processed.



## Asset Pools and P&L Import

As part of the P&L import, collateral movements are created. During the import process the system evaluates whether to create the P&L collateral movements with a delivery or return direction. This evaluation is based on the current held or posted collateral positions for the Agreement in question.

See [Understanding How Collateral Movements are Created from P&L import](<understanding_p_and_l.md>) for more details on this process.

The key point to note is that posted positions on an Agreement that have been sourced from an asset pool are ignored for this evaluation.

For example, consider the Agreement A Bank's Collateral Positions:

Agreement | Held/Posted | Instrument | Notional | Asset Pool  
---|---|---|---|---  
A Bank | Posted | USD | 10,000,000 | Pool1  
A Bank | Posted | USD | 500,000 |   
  
For the purposes of creating P&L movements the system will determine that A Bank has a posted position of 500,000 USD.

## Asset Pools and the Settle Movements Task

**Note:** When movements are rolled into positions via the settle movements task, that the movements are rolled into positions uniquely per Agreement, Agreement Margin Type, Instrument and Asset Pool.

This is exemplified below.

Consider the following Agreement's collateral positions and movements.

Positions

Agreement | Margin Type | Held/Posted | Instrument | Notional | Asset Pool  
---|---|---|---|---|---  
C Bank | Variation | Posted | USD | 10,000,000 | Pool1  
C Bank | Variation | Posted | USD | 500,000 |   
C Bank | Variation | Posted | GBP | 250,000 | Pool 1  
  
Collateral Movements

Agreement | Margin Type | Movement | Instrument | Notional | Asset Pool  
---|---|---|---|---|---  
C Bank | Variation | Deliver to Cpty | GBP | 1,000,000 | Pool1  
C Bank | Variation | Deliver to Cpty | GBP | 500,000 |   
  
Once, the collateral movements have been rolled into positions via the settle movements task, the following collateral position will exist.

Agreement | Margin Type | Held/Posted | Instrument | Notional | Asset Pool  
---|---|---|---|---|---  
C Bank | Variation | Posted | USD | 10,000,000 | Pool1  
C Bank | Variation | Posted | USD | 500,000 |   
C Bank | Variation | Posted | GBP | 1,250,000 | Pool 1  
C Bank | Variation | Posted | GBP | 500,000 |   
  
## Viewing Assets

Assets can be viewed on the _Asset Allocation_ tab on Anticipated Demands and Substitutions where they apply.

Field Name | Description  
---|---  
Instrument Ref | Primary ID of the Instrument available for Allocation.  
Issuer | The Instrument Issuer.  
Mkt Val (Agmt) <_T_ > | The Market Value for the corresponding <_AvailableNotional_PerSettlementDate_ > field.  
  
(The  suffix on the column label indicates which business day (T, T+1 etc) the date shown in the corresponding <_AvailableToAllocateNotional_PerSettlementDate_ > field represents.)  
  
Market Value is calculated as <_AvailableNotional_PerSettlementDate_ > * Price * Valuation Percentage * FX Rate as applicable.  
  
Note the price used in the calculation is per the price source of the Agreement that the collateral is being selected for allocation to. If there is no price for this price source, then the price source defined on the Collateral Agreement that the collateral was received from is used.  
**Note:** Five days worth of AvailableNotional_PerSettlementDate and Mkt Val (Agmt) are shown by default, with the date increasing 1 business day from left to right. | The date of settlement is indicated by the value in bold.  
Maturity Date | Maturity Date of the Instrument.  
Instrument Type | The Type category of the Instrument.  
Description | The Instrument Description.  
Ccy | The Ccy of the Instrument.  
Bucket Name | The Eligible Bucket for the available collateral Instrument. This Eligible Bucket is from the perspective of the Agreement that the collateral is being allocated to - that is, the Agreement on the Antic Demand.  
Valuation Percentage | The system will populate this field with the appropriate Valuation percentage for the collateral item as defined in the Basic Eligibility tab of the Agreement that the collateral will be allocated to.  
Mkt Val (Instr) | The Market Value of the Instrument - calculated as:  
  
Available Notional * Price.  
  
Note the price used in the calculation is per the price source of the Agreement that the collateral is being selected for allocation to. If there is no price for this price source, then the price source defined on the Collateral Agreement that the collateral was received from is used.  
Cost of Funding | The cost of Funding value recorded on the Instrument.  
Minimum Lot | The minimum amount of the Instrument which can be transferred.  
Lot Increment | The incremental amount which the Instrument can be transferred in.  
Asset Pool | This field denotes the source of the available collateral balance for an Instrument:  
  
\- A blank Asset Pool field denotes that the collateral's source is from the rehypothecatable inventory.  
  
\- Collateral balances that originate from an asset pool, are clearly denoted with the Asset Pool name in the field  
  
Kindly note that available assets are grouped by instrument and asset pool. Therefore an asset listed several times can be seen, each sourced from a differing Asset Pool.  
  
**Note:** Asset Pools are created in the external TLM Collateral Manager Web application.  
  
If the application is not used, asset pool field will be blank.  
Priority | This field denotes the numeric priority preference, as defined in the [Collateral Ladder's](<collateral_ladders.md>) rule sets., for allocating this instrument to the Agreement's requirement  
  
Note: [Collateral Ladders](<collateral_ladders.md>) and their rule sets are created in TLM Collateral Manager Web application and dynamically queried when this screen is opened. Should TLM Collateral Manager not be used, this functionality will not be available.  
Next Coupon Date | The next coupon date for the Instrument.  
Next Dividend Date | The next dividend date recorded on the Instrument.  
  
## Calculating Available Amounts to Allocate

Within the Anticipated Demand and Substitution workflows, the Asset Allocation screen shows calculated Available to Allocate collateral amounts across a five settlement date range. Whilst the actual calculation process differs depending on whether the collateral originates from a Rehypothecatable or Asset Pool source, an "optimistic" approach is used in both cases. That is, qualifying state (see definition below) collateral movements that are coming in or out are considered in the available to allocate calculations.

Specifically, available to allocate amounts are calculated as follows:

**For Rehypothecatable Source Collateral Positions (i.e Available entries where the Asset Pool field is blank):**

  1. Those Agreements within the user's Agreement Scope that have held collateral positions (or qualifying state Deliver to Principal Collateral Movements) that are eligible (that is eligible in terms of the basic eligibility of the Agreement with the Antic Demand, or the Agreement executing the Substitution) are selected.
  2. From the Agreement selection produced in step 1), any positions/movements for those Agreements that have an Available for Rehypothecation value of None are discarded.
  3. From the selection in step 1), any positions/movements with a margin type of Lock Up are discarded if the Agreement has an Available for Rehypothecation value of Variation Only.
  4. From the same selection, any positions/movements with a margin type of Variation are discarded if the Agreement has an Available for Rehypothecation value of Lock Up Only.
  5. From the selection of Agreements in step 1), any positions/movements with a margin type of variation are discarded if a Tri-Party Custodian for variation collateral is defined. Similarly, should any Agreements have a Tri-Party Custodian for Lock up collateral defined, any collateral position/movement with a margin type of Lock Up is discarded.
  6. This leaves a "pool" of eligible collateral for agreements within the user's Agreement Scope which have consented that their held collateral positions/movements, which have a Margin Type that matches their available for rehypothecation criteria, are potentially available to be rehypothecated / allocated for the Principal's use on the settlement date.

This "pool" is then subject to some adjustments to account for collateral already used.

a. Any qualifying state of **Return to Counterparty** Collateral Movements are subtracted from the calculated Pool.

b. The current posted amounts are calculated by @summing the following three groupings:

     * Any collateral that has been posted
     * Plus any qualifying state Deliver to Counterparty Collateral Movements
     * Minus any qualifying state Return to Principal Collateral Movements (i.e current posted amounts are reduced by returns to the Principal) 

c. The current posted amounts calculated above are then subtracted from the calculated "internal pool".

The collateral positions left at the end of this calculation are Available to be allocated, and are summed by Instrument Reference and displayed in the corresponding Available Notional by Settlement Date field.




**For an Asset Pool Sourced Balance (entries where the Asset Pool field is populated):**

  1. Select Asset Pools associated to the Principal on the Agreement which has the Anticipated Demand / Is executing the Substitution.
  2. From each asset pool produced in the above step, select the Asset Pool imported balances where the effective date for the imported balance equals the settlement date being calculated.  
  
Note: Asset pool balances are only considered when the effective date of the balance is equal to the date shown on the top available to allocate column.
  3. From the population from step 2), select those Asset Pool Balances for Instruments that are eligible. Eligible in terms of the basic eligibility of the Agreement with the Antic Demand or Substitution.
  4. For each Asset Pool and Instrument from step 3), determine the current used (i.e. posted) amounts by calculating an @sum per Instrument Notional/Asset Pool for the following items:
     * Posted Collateral Positions.
     * Qualifying State Deliver to Counterparty Movements.
     * Qualifying State Return to Principal Movements.
  5. Subtract the @summed posted amount results from step 4) from the corresponding asset pool balances from step 3).



The collateral positions left per Asset Pool at the end of this calculation are Available to allocated, and are listed by Instrument Reference.

**Note:** This calculation can result in a negative amount.

**Qualifying Collateral Movements Definition:**

For the purposes of calculating available to allocate notional, a qualifying state Collateral Movement must meet all of the following criteria:

  * Have a Settlement Date less than or equal to the effective date balance being calculated.
  * Not be in an end settlement state.



Where End Settlement State is defined as the following Settlement Statuses for all Collateral Movement Types

  * Cancelled
  * Ignored
  * Rejected Replaced
  * Settled



Additionally, for Collateral Movements with a type of Manual or Substitution, the settlement status of Rejected is also considered an end state

**Note:** Collateral Positions/Movements as defined above refers to debt, equity and cash instruments . Letters of Credit are also excluded from the available for allocation calculations.
