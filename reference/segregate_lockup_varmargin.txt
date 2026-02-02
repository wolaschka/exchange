# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/segregate_lockup_varmargin.html

# Working with OTC Agreements that Segregate Lock Up and Variation Margin

## Auto Allocating Agreements

It is common practice in the OTC Collateral Market not to explicitly define whether collateral held is to meet Lock Up Margin or Mark-to-Market (variation) requirements. The rationale behind this is approach is that collateral held is implicitly expected to be allocated first against any Lock-Up Margin Requirement to determine whether a demand for Lock Up margin is needed. Should sufficient collateral be in place, any surplus is then "auto allocated" to the MTM requirement.

OTC Agreements of this form are set up in TLM® Collateral Management with a Collateral Allocation value of "Auto Allocate".

## Segregated Lock Up and Variation Margin Agreements "Non Auto Allocate"

It is increasingly common in the OTC market for collateral agreements to explicitly define that collateral posted is to meet Lock Up Margin requirements only. Any excess collateral of this type is not automatically considered for the MTM/Variation requirement. In essence, the "pool" of collateral received is segregated into variation and lock up elements.

OTC Agreements of this form are set up in TLM Collateral with a Collateral Allocation value of "Segregating Lock Up and Variation"

## Features of Segregated Collateral Allocation Agreements

  1. Margin Calculations Result in a minimum of two margin call requirements.

For Agreements where variation and lock up requirements are segregated, the Margin Calculation results in a Margin Call with separate call requirements for the Lock Up and for the Variation elements. This means that there are always at least two margin call requirements generated for a single margin call. A Lock up requirement and a Variation requirement. Depending on the various inputs into the Margin Calculation, this can result in any of the following scenarios:

     * Requirements of the same call type.
     * Requirements of opposing call types.
     * Requirements of zero generate No Actions.
  2. Individual margin "requirements", although legally and technically part of the same margin call, are treated independently in the margin call Workflows.




That is, each requirement can independently:
