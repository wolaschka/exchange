# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/central_clearing_collat_held_posted.html

# Understanding Collateral Held and Posted Values on Central Clearing Agreements

## Background

Typically when the margin calculation task is run, the value of collateral positions on the agreement in question is calculated and forms part of the margin calculation result.

However, for the Central Clearing business line, Margin Calls are imported directly from the Central Clearing Counterparty (CCP).

These imported margin calls include the values of collateral positions as per the CCP's books and records. These imported values are recorded in the system in the Collateral Held per CCP and Collateral Posted per CCP fields.

However, it is also possible that collateral positions and movements have been applied to central clearing Agreements directly (either by importing positions, or booking movements) via the system. These are known as "In House Positions" and their values are recorded as Collateral Held and Collateral Posted.

While these In House positions are not taken into consideration in the imported margin calls, they nevertheless have importance:

  1. In House Collateral positions that are used when calculating any autobooked movements.
  2. In House positions need to be correctly valued for reporting or comparison purposes.
  3. In house position values are viewable within the grids of the Central Clearing Margin Call Workflow.



## Valuation Methodology for In House Collateral

The valuation calculation for in house positions is performed during the Margin Calls Import

Specifically, for the following fields that appear in the central clearing margin call workflow grids and the All tab:

**Collateral Held** is calculated as:

The sum of current settled held positions plus (In transit deliver to prin movements) minus (In Transit return to cpty movements.)

If no in house positions exist, then this is recorded as 0.00

Conversely, **Collateral Posted** is calculated as:

The sum of current settled posted positions plus (In transit deliver to cpty movements) minus (In Transit return to prin movements)

Again, if no in house positions exist, then this too is recorded as 0.00

## Validations

Certain validations are performed during the calculation.

  1. If the collateral value cannot be determined at the time of the Margin Call Import: 

(for example due to no valid pricing being available, or eligibility failures)

     * The Margin call is imported and appears in the workflow 
     * Collateral Value is shown as blank, not 0.00 
  2. If the Agreement is locked at the time of the import, the values are calculated. 

     * The Margin call is imported and appears in the workflow 


