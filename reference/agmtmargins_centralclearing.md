
# Central Clearing Margin Terms

## Overview

Margin Calls for Central Clearing Agreements are imported into TLM® Collateral Management as opposed to being calculated.

However, it is possible to define Agreement Margins on a Central Clearing Agreement either manually via the GUI, or by [importing](<import_agreement_margins.md>) them.

These agreement margins are not used in the margin calculation for the agreement, they can be used for comparison purposes.

TLM Collateral Management standard report suite contains comparison reports which:

Compare Lock Up Amount per CCP on the Margin Call Import vs Agreement Margin Lock Up Amounts on a Central Clearing Agreement.

Please see TLM Collateral Management Reporting Guide for more information on the specific reports.

Field | Description  
---|---  
Type | This field is defaulted to Lock Up and cannot be changed.  
Amount Method | This is set to **Flat**. The number entered into the corresponding Amount field is treated as an absolute amount in the currency specified.  
Amount | Enter the amount of the Margin Requirement.  
  
Permissible entry is a positive number between zero and 9,999,999,999,999.99 The short cut keys of b (billion), m (million) and k (thousand) can be used entering amount when Flat is chosen.  
Currency | Select the currency in which the amount is quoted.  
Due To | Select the party to which the agreement margin is due, that is Counterparty or Principal.  
Coverage | This is a text field which allows the user to input information about the coverage of the agreement level margin.  
  
Example: It could indicated that the trade type is to cover or that it is a total portfolio requirement. A maximum of 100 characters is allowed.  
  
This information is currently not used in any calculations within the application.  
Method | This is a text field which allows the user to input information about how the agreement level margin has been calculated. For example, VAR or NOP. A maximum of 100 characters is allowed.  
  
This information is currently not used in any calculations within the application.  
  
Multiple requirements can be added for the same agreement. Requirements which have been entered manually are shown with the word "manual" in the Source column. It is also possible to import Agreement Margins. Any imported amounts are also shown in this grid and will displayed with the name of the Import Configuration as the source.

Consider the following:

  * It is only possible to define Additional Margins for Central Clearing Agreements that have a Margin Type of Lock Up.
  * Margin Terms will be disabled and not visible when the Central Clearing Agreement has a Margin Type of Variation.
  * Unlike bilateral OTC Agreements, for Central Clearing Agreements, the user can only create an Agreement Margin with a Type identical to the Margin Type of the Agreement.
  * It is possible to Import Agreement Margins for Central Clearing Agreements.


