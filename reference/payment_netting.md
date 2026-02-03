
# Payment Netting

## Overview

Typically, Collateral Market Practice is that each collateral movement booked in a collateral system such as TLM® View Collateral will generate a single payment instruction to transfer assets between the parties on an Agreement:

However, there are certain drawbacks to this practice:

  * Settlement Failure Risk is increased.
  * Transaction fees are payable per individual movement.
  * Operational overhead may be increased by the requirement to reconcile individual movements.



By netting collateral movements (by Cash Currency, Instrument Class and Settlement Date) these factors can be somewhat mitigated. 

  * Definition of netting parameters on Combined Business Lines Agreement groups. 
  * Preview mechanism to see how the application of these netting parameters would affect selected collateral movements in the Grouped Margin Call Workflow. 
  * To apply (and re-apply) these parameters to selected collateral movements and send a collateral summary notice with these netted movement details. 
  * To save netting payment information for collateral movements, and expose this information via service calls. 



## Eligibility

In order for a collateral movement to be eligible for payment netting ("Netting Eligible")the following criteria must be true:

  * The Collateral Movement must be booked on an Agreement which is covered by a Combined Business Lines Agreement Group where Netting Parameters for the underlying Collateral Movement's Instrument Class are defined.
  * The Collateral Movement must be in an In Transit settlement state.
  * The Collateral Movement must be in the Grouped Margin Calls Workflow - Confirmed Sent to Settlements Queue.



## Netting Rules

Netting Rules are applied to "Netting Eligible" movements when they are included on and sent on a Collateral Confirmation Notice

Netting rules are:

  * Only movements with the same instrument ID, Margin Type and Settlement Date can be netted together. 
  * If Net Variation with Lock Up is enabled in Netting Combination then movements with the same Instrument ID and Settlement Date can be netted together.



## Application of Netting Rules

Netting Rules are applied when a user selects Margin Calls for inclusion on the Collateral Confirmation Summary Notice

For those Margin Calls selected for inclusion the system performs the following processes:

  * Establish whether Collateral Movements for the selected Margin Calls are Netting Eligible or not.
  * Apply Netting Rules to "Netting Eligible" movements to establish single net movements.

    * Check the Netting Combination value for the Agreement Group.
    * If Netting Combination is enabled then:
      * Group together those netting eligible collateral movements where Instrument ID and Settlement date are identical
      * Apply a single common Netting ID to each of the underlying collateral movements within each group. (if a netting ID already exists, it is overwritten)
      * Net together the movements in i) and calculate a net payment and direction.
      * Include this net payment information on the Collateral Summary Notice.
    * If Netting Combination is not enabled, then:
      * Group together those netting eligible collateral movements where Instrument ID, Settlement date and Margin Type are identical
      * Apply a single common Netting ID to each of the underlying collateral movements within each group .from i) ( (if a netting ID already exists, it is overwritten)
      * Net together the movements in i) and calculate a net payment and direction.
      * Include this net payment information on the Collateral Summary Notice.

**Note:** Even if there is a single Netting Eligible movement per "group" it will still get a netting ID applied.

    * Ensure that Netting Rules are not applied to any Collateral Movements that are not eligible for Netting.

      * Any existing Netting ID that may exist on these movements is removed.
      * If the Movements had previously been grouped together for payment netting purposes, they are removed from the group.

(this allows for changes to an Agreement Group to alter netting options from enabled to disabled to propagate down to movements)



