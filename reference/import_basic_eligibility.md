
# File Format for Basic Eligibility

Basic Eligibility refers to the assignment of [collateral buckets and instruments](<basiceligibility.md#adding-a-bucket-or-instrument>) to an agreement.

When importing Basic Eligibility no records are deleted when a new import is run. The import is done on an insert and update basis only. There are some specific checks which are done to determine whether an update of a collateral bucket is allowed based on whether any Advanced Eligibility rules for that Agreement are already using that bucket and which parties that bucket is eligible for. Where conflicts arise an exception is raised and the record is not imported. [Validation message number 102](<validation_messages.md#102>). If there are no conflicts the record is loaded and the database is updated according to the data in the file.

Instruments are not used in Advanced Eligibility rules and therefore the data on the file for instruments is always updated.

In addition, any buckets which are not being used in Advanced Eligibility rules will always be updated.

**Note:** This import is designed to be used in conjunction with Agreements for the following Business Lines:

  * Client Clearing 
  * Central Clearing 
  * OTC 
  * Repo 
  * Securities Lending 

Display Name | Mapping File Column Name | Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Agreement Name | AgreementName | Yes | Char (255) | ABC Bank Csa | The name of the collateral agreement to which the instrument or collateral bucket should be assigned.  
  
This must correspond to a valid agreement in the database.  
  
[Validation message number 28](<validation_messages.md#28>)  
  
**Note:** If the Agreement is [Locked for Approval](<agreements_approvals.md>), [validation message 263](<validation_messages.md#263>) will be raised, and the record for the corresponding agreement will not be imported.  
  
If the name defined is for an Agreement within the Central Clearing Business Line that has a Margin Type of Surplus or Guarantee, then [validation message 323](<validation_messages.md#323>) and the record will not be imported.  
Name | EligibleCollateralIdentifier | Yes | Char (255) | 912795VR9  
  
US-GOVTBOND RE<1 | This is either the Instrument Identifier or the Collateral Bucket Name and must exist in the database.  
  
[Validation message number 25](<validation_messages.md#25>)  
  
[Validation message number 78](<validation_messages.md#78>)  
  
The same EligibleCollateralIdentifier can only be supplied for the same Agreement once.  
  
[Validation message number 88](<validation_messages.md#88>)  
Type | EligibleCollateralType | Yes | Char (20) | Bucket | This indicates whether the EligibleCollateralIdentifier supplied is either a Bucket or an Instrument. These are the only available choices.  
  
[Validation message number 77](<validation_messages.md#77>)  
Held Valn %  
  
(only when Margin Type is **Guarantee**) | GuaranteeHeldValuationPct | No - but see below notes | Number (6,3) | 125 | This is the valuation percentage that will be applied to the Eligible Collateral Bucket or Instrument for Collateral Balances **Held** by the Principal when the Margin Type of the collateral balance is **Guarantee**.  
  
That is, Guarantee collateral balances **held** by the Principal.  
  
Only Certain Agreements can have a collateral balances with a Guarantee Margin Type:  
  
**Central Clearing** Agreements with a Margin Type defined as **Guarantee**.  
  
In terms of values on the data file:  
  
It needs to be specified as a number between 0 and 100. 3 Decimal places can be included.  
  
If the value is not defined as such then [Validation message 325](<validation_messages.md#325>) is raised, and the value will be set to Null and not imported.  
Posted Valn %  
  
(only when Margin Type is **Guarantee**) | GuaranteePostedValuationPct | No - but see below notes | Number (6,3) | 125 | This is the valuation percentage that will be applied to the Eligible Collateral Bucket or Instrument for Collateral Balances **Posted** by the Principal when the Margin Type of the collateral balance is **Guarantee**.  
  
That is, Guarantee collateral balances **posted** by the Principal.  
  
Only Certain Agreements can have a collateral balances with a Guarantee Margin Type:  
  
**Central Clearing** Agreements with a Margin Type defined as **Guarantee**.  
  
In terms of values on the data file:  
  
It needs to be specified as a number between 0 and 100. 3 Decimal places can be included.  
  
If the value is not defined as such then [Validation message 326](<validation_messages.md#326>) is raised, and the value will be set to Null and not imported.  
Lock Up Held Valn % | LockUpHeldValuationPct | No - but see below notes | Number (6,3) | 125 | This is the valuation percentage that will be applied to the Eligible Collateral Bucket or Instrument for Collateral Balances **Held** by the Principal when the Margin Type of the collateral balance is **Lock Up**.  
  
That is Lock Up collateral balances **_Held_** by the Principal.  
  
Only Certain Agreements can have a collateral balances with a **Lock Up** Margin Type:  
  
1\. OTC Agreements where the collateral allocation method is defined as "_segregate lock up and variation_ " or "_Lock Up Only_ "  
2\. Client Clearing Agreements with a Margin Type of Lock Up.  
3\. Central Clearing Agreements with a Margin Type of Lock Up.  
  
In terms of values on the data file:  
  
It needs to be specified as a number between 0 and 100. 3 Decimal places can be included.  
  
If the value is not defined as such then [Validation message 269](<validation_messages.md#269>) is raised, and the value will be set to Null and not import.  
Lock Up Posted Valn % | LockUpPostedValuationPct | No - but see below notes | Number (6,3) | 75 | This is the valuation percentage that will be applied to the Eligible Collateral Bucket or Instrument for **Posted** Collateral Balances of Margin Type "**Lock Up** "  
  
That is collateral balances **_posted_** by the Principal where Margin Type is Lock Up.  
  
Only Certain Agreements can have a collateral balances with a **Lock Up** Margin Type:  
  
1\. OTC Agreements where the collateral allocation method is defined as "_segregate lock up and variation_ " or "_lock up only_ ".  
2\. Client Clearing Agreements with a Margin Type of Lock Up  
3\. Central Clearing Agreements with a Margin Type of Lock Up.  
  
In terms of values on the data file:  
  
It needs to be specified as a number between 0 and 100. 3 Decimal places can be included.  
  
If the value is not defined as such then [Validation message 270](<validation_messages.md#270>) is raised, and the value will be set to Null and not import.  
Held Valn %  
  
(only when Margin Type is **Surplus**) | SurplusHeldValuationPct | No - but see below notes | Number (6,3) | 125 | This is the valuation percentage that will be applied to the Eligible Collateral Bucket or Instrument for Collateral Balances **Held** by the Principal when the Margin Type of the collateral balance is **Surplus**.  
  
That is Surplus collateral balances **_Held_** by the Principal.  
  
Only Certain Agreements can have a collateral balances with a **Surplus** Margin Type:  
  
**Central Clearing** Agreements with a Margin Type defined as **Surplus**.  
  
In terms of values on the data file:  
  
It needs to be specified as a number between 0 and 100. 3 Decimal places can be included.  
  
If the value is not defined as such then [Validation message 327](<validation_messages.md#327>) is raised, and the value will be set to Null and not imported.  
Posted Valn %  
  
(only when Margin Type is **Surplus**) | SurplusPostedValuationPct | No - but see below notes | Number (6,3) | 125 | This is the valuation percentage that will be applied to the Eligible Collateral Bucket or Instrument for **Posted** Collateral Balances for a **Central Clearing** Agreements with a Margin Type defined as **Surplus**.  
  
That is Surplus collateral balances **_Posted_** by the Principal.  
  
Only Certain Agreements can have a collateral balances with a **Surplus** Margin Type:  
  
**Central Clearing** Agreements with a Margin Type defined as **Surplus**.  
  
In terms of values on the data file:  
  
It needs to be specified as a number between 0 and 100. 3 Decimal places can be included.  
  
If the value is not defined as such then [Validation message 328](<validation_messages.md#328>) is raised, and the value will be set to Null and not imported.  
Variation Held Valn% | VariationHeldValuationPct | No - but see below notes | Number (6,3) | 85 | This is the valuation percentage that will be applied to the Eligible Collateral Bucket or Instrument for **Held** Collateral Balances of Margin Type "**Variation** ".  
  
That is variation collateral balances **_held_** by the Principal.  
  
Only Certain Agreements can have a collateral balances with a **Variation** Margin Type:  
  
1\. OTC Agreements where collateral allocation type <>"_lock up only_ ".  
2\. Repo Agreements  
3\. Securities Lending Agreements  
4\. Client Clearing Agreements with a Margin Type of Variation  
5\. Central Clearing Agreements with a Margin Type of Variation  
  
In terms of values on the data file:  
  
It needs to be specified as a number between 0 and 100. 3 Decimal places can be included.  
  
If the value is not defined as such then [Validation message 187](<validation_messages.md#187>) is raised, and the value will be set to Null and not imported.  
Variation Posted Valn% | VariationPostedValuationPct | No - but see below notes | Number (6,3) | 625 | This is the valuation percentage that will be applied to the Eligible Collateral Bucket or Instrument for **Posted** Collateral Balances of Margin Type "**Variation** ".  
  
That is variation collateral balances **_posted_** by the Principal.  
  
Only Certain Agreements can have a collateral balances with a **Variation** Margin Type:  
  
1\. OTC Agreements where collateral allocation type <>"_lock up only_ ".  
2\. Repo Agreements  
3\. Securities Lending Agreements  
4\. Client Clearing Agreements with a Margin Type of Variation  
5\. Central Clearing Agreements with a Margin Type of Variation.  
  
In terms of values on the data file:  
  
It needs to be specified as a number between 0 and 100. 3 Decimal places can be included.  
  
If the value is not defined as such then [validation message 188](<validation_messages.md#188>) is raised, and the value will be set to Null and not import.  
  
**Note:**

  1. Although Valuation % fields are not mandatory, at least one must be defined on the mapping file, and included on the data file otherwise [Validation message 273](<validation_messages.md#273>) will be raised and the record will not import.
  2. Collateral buckets / eligible instrument that are referenced in other eligibility rules on the same agreement cannot be imported with a Null Valuation Percent, as this would affect the other eligibility rule. If this occurs, [validation message 274](<validation_messages.md#274>) will be raised and the record will not import.


