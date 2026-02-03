
# Tri-Party Custodians

An increasing trend among collateral practitioners is to elect to use an independent third party (a Tri-Party) to hold the collateral on behalf of the Collateral Agreement parties.

The thinking behind this trend is that should one of the parties on the Collateral Agreement become insolvent, the collateral held at the Tri-Party will be safeguarded from insolvency proceedings.

The system allows users to define whether an Agreement uses Tri-party custodians to hold collateral.

There are some implications involved when defining the Tri-Party custodian.

  * Collateral that is held at Tri-Party Custodians is not included in assets available for allocation to [antic demands](<margin_calls_tabs.md#asset-allocations>) or [substitutions](<substitutions_detail.md#asset-allocation>). It is treated as being not rehypothecatable, [irrespective of how the Agreement rehypothecation flag is set](<basiceligibility.md#rehypoth>).
  * Defining a Tri-Party Custodian for Collateral will block the inheritance of SSI Records that is set at the Entity Level for the corresponding collateral types. See [Understanding SSI hierarchy and derivation](<agreements_settleinstr.md#understanding-ssi-hierarchy>) for more details.



**Procedure**

  1. Select a Tri-Party Custodian.
  2. Click on the drop-down and select a third party custodian that collateral movements for this agreement will settle through. 
  3. Click the **Save** button to commit the changes.



**Note:**

  * Lock Up Collateral Tri-Party field will be disabled unless collateral allocation method on the agreement is defined as segregated lock up and variation.
  * If a Tri-Party Custodian is selected, then any collateral held for the agreement is excluded from the available assets calculation. This is irrespective of the value set on the Available for rehypothecation flag on the Eligibility Tab. Defining a TriParty custodian can block the inheritance of entity SSI records for the corresponding Margin Type onto an Agreement.

For example, if an Entity SSI record is set up with a collateral type of Lock Up (i.e. it is applicable to collateral movements for lock up margin type) and the Client Clearing Agreement has a margin type of Lock Up, then setting a Tri-Party Custodian for the Agreement will block the entity SSI records for Lock Up Margin Type from being inherited.


Agreement Type | Comments  
---|---  
OTC | If the agreement has a collateral allocation type of Segregate Lock Up and Variation or Lock Up Only, then it is possible that a Tri-Party custodian can be used for Lock Up collateral movements.  
  
Click beside Lock Up Collateral field and then to find and select the Tri-Party Custodian that lock up collateral movements for this agreement will settle through.  
  
**Note:** If a Tri-Party Custodian is selected, then any collateral held for the corresponding margin type is excluded from the available assets calculation. This is irrespective of the value set on the Available for rehypothecation flag on the Eligibility Tab.  
  
Example:  
If a Tri-Party Custodian is defined for Variation collateral, then any variation collateral held for this agreement will not be included in calculating available assets even if the Available for Rehypothecation flag indicates that variation collateral is eligible for rehypothecation.  
  
Defining a TriParty custodian can block the inheritance of entity SSI records onto an agreement.  
  
Example:  
If an Entity SSI record is set up with a collateral type of Lock Up (i.e. it is applicable to collateral movements for lock up margin type) and the Agreement is set up with a Tri-Party Custodian for Lock Up collateral, then the entity SSI record will not be inherited.  
Client Clearing | Any collateral held for the agreement is excluded from the available assets calculation. This is irrespective of the value set on the Available for rehypothecation flag on the Eligibility Tab. Defining a TriParty custodian can block the inheritance of entity SSI records for the corresponding Margin Type onto an Agreement.  
  
Example:  
If an Entity SSI record is set up with a collateral type of Lock Up (i.e. it is applicable to collateral movements for lock up margin type) and the Client Clearing Agreement has a margin type of Lock Up, then setting a Tri-Party Custodian for the Agreement will block the entity SSI records for Lock Up Margin Type from being inherited.  
Securities Lending | These do not separate collateral into lock up and variation "pools". All collateral is treated as variation margin type and the Lock Up Collateral field is disabled.  
  
If a Tri-Party Custodian is selected, then any variation collateral held for this Agreement is excluded from calculations of collateral available for rehypothecation. This is irrespective of the value set on the Available for rehypothecation flag on the Eligibility Tab. Selecting a Variation Tri-Party Custodian blocks the inheritance of Entity SSI records onto the agreement. See [Understanding SSI hierarchy and derivation](<agreements_settleinstr.md#understanding-ssi-hierarchy>) for more information.
