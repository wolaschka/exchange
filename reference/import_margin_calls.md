# Source: https://qceqatwapp101.sd01.unicreditgroup.eu:5443/docs/import_margin_calls.html

# File Format for Margin Calls

## Background

Currently the Margin Call import capability is restricted to Agreements within the Central Clearing Business Line.

It is worth noting that the import of Margin Calls is somewhat different to other import tasks in TLM Collateral Management.

Namely, the import of Margin Calls performs the following four tasks:

  * Processing and validating the actual Margin Call Import file.
  * Assigning imported Margin Calls to their corresponding Agreements and inserting calls into the Margin Calls table.
  * Placing successfully assigned imported Margin Calls directly into the Central Clearing Workflow.
  * Calculating the "in house" Collateral Held and Collateral Posted Values for the Agreement.



Conceptually it is important to understand that all 3 of the above processes happen collectively. It is not possible to import a margin call without it being assigned to an Agreement and then placed in the workflow.

Also, the following should be borne in mind when running this import:

When importing Margin Calls all current Margin Calls that exist in the Central Clearing: To be Reviewed Queue are deleted.

Margin Calls in other workflow queues in the Central Clearing workflow are not overwritten.

It is only possible to have one Margin call per Agreement per Business Day.

## Details

When the Margin Calls import task runs, the following processes occur:

  1. All existing margin calls in the in the Central Clearing: To be Reviewed Queue are deleted. 
  2. The system will attempt to match each Margin Call contained on the import file to a single Agreement under the “Central Clearing” business line using all the following matching criteria:

Principal

Counterparty

Clearing Client if included

Margin Type

Agreement Currency

_(Note that those Central Clearing Agreements with a status of Inactive are not considered in the eligible pool of Agreements to potentially match Margin Calls to)_

  3. If all matching criteria are met by a single Agreement , (and there are no validation violations), the Margin Call is assigned to that Agreement. 

  4. Simultaneously, the application looks to see if the matched Agreement is in a Central Clearing Agreement Group. 
  5. If found, the Central Clearing Agreement group is stamped into the Agreement group field of the Margin Call, which is then placed into the Central Clearing To Be Reviewed Workflow Queue. 

6) If the Matched Agreement is not a member of a Central Clearing Agreement group, then a validation message is thrown and the margin call is not imported.

**Note:** It is highly recommended therefore that Agreements created within the Central Business Line are associated to a Central Clearing Agreement Group.

7) The system calculates the "In house" Collateral Held and Collateral Posted values for the Agreement.

(see note 1 below)

  6. Validations performed during this process are listed at the bottom of this topic. 




The file format is as follows:

Display Name | Mapping | File Column Name Mandatory | Type, Length and comments | Example | Description  
---|---|---|---|---|---  
Expected Call Amount per CCP | CallAmount | Yes | Money | 4512000 | The amount required to fulfill the obligation.  
  
It can be zero (please see validations below)  
  
If more than two decimals are required it will be truncated to two decimals.  
  
Irrespective of the signage specified in the import file the value is applied to the Expected Call Amount field in TLM Collateral as follows  
  
Positive Value where Call Type is Demand  
  
Negative value where call type is Antic Demand.  
Call Type | CallType | Yes | Char (255) | Demand | Must be one of the following values  
  
Demand  
  
Anticipated Demand (or Antic Demand)  
  
No Action  
  
If none of these then [Validation Error 293](<validation_messages.md#293>) is raised.  
Clearing Client | ClearingClient |  | Char (255) |  | This is an optional field, so can be blank.  
  
However if defined, it must match an Entity that exists in the system with an entity type of Clearing Client.  
  
If the defined value is not, then [validation error 66](<validation_messages.md#66>) and the record will not be imported.  
Collateral Held | CollateralHeld |  | Money | 4500000 | The amount of collateral held.  
  
This should be expressed as an absolute amount.  
  
If expressed as a negative, it will be converted to an absolute during import  
  
This is applied to the Collateral Held Per CCP field on the margin call.  
Collateral Posted | CollateralPosted |  | Money | 12000000 | The amount of collateral held.  
  
This should be expressed as an absolute amount.  
  
If expressed as a negative, it will be converted to an absolute during import.  
  
This is applied to the Collateral Held Per CCP field on the margin call.  
Counterparty | Counterparty | Yes | Char (255) | Demo Client | This must be Entity Name or Alias that corresponds to an entity that is Counterparty and Central Counterparty in the system.  
  
If not, then validation error 66 is raised and the record is not imported.  
Agmt Ccy | Currency | Yes | Char(3) | GBP | The three letter code of the currency.  
  
This is assumed to be the currency for  
  
\- Agreement Currency  
\- collateral held amount  
\- collateral posted amount  
\- call amount  
\- exposure amount  
\- Lock Up amount  
  
The currency must exist in the system otherwise validation message 18 is raised and the record discarded.  
Net Exposure Amount Per CCP | ExposureAmount |  | Money | 87234567 | The value of the trade portfolio underlying this margin call as calculated by the CCP.  
  
**Note:** The signage determines how the value is interpreted.  
  
A positive number means in favor of the Principal; whereas negative means in Favor of Counterparty.  
Lock Up Amount per CCP | LockUpAmount |  | Money | 10000 | The amount of Lock Up requirement required by the CCP  
  
Again, note that the signage determines how the value is interpreted.  
  
A positive number means in Lock Up in favor of the Principal; whereas negative means in Lock Up in Favor of Counterparty  
Margin Type | MarginType | Yes | Char(255) | Variation | The Margin Type of the Call.  
  
Must be one of the following values:  
  
Variation  
  
Lock Up  
  
If not, then [validation error 150](<validation_messages.md#150>) is raised and the record is not imported.  
Principal | Principal | Yes | Char(255) | Prin Bank | This must be Entity Name or Alias that corresponds to an entity that is Principal and Clearing Member in the system.  
  
If not, then [validation error 66](<validation_messages.md#66>) is raised and the record is not imported.  
  
## Validations Performed

The following validations are performed when Margin Calls are imported.

Validation Performed | Message Raised if Validation Failure | Record Loaded / Comments  
---|---|---  
Entities defined on file match existing entities of the correct type in the system. Namely:  
  
Principal is for existing entity type of Principal and Clearing Member.  
  
Counterparty matches existing entity with type of Counterparty and Central Counterparty.  
  
Clearing member defined matches existing entity of Clearing Member. | [validation error 66](<validation_messages.md#66>) | Record Not imported.  
Agreement Currency defined on file exists in TLM Collateral. | [validation message 18](<validation_messages.md#18>) | Record discarded.  
Margin Type defined is one of following values  
  
Variation  
  
Lock Up | [validation error 150](<validation_messages.md#150>) | Record discarded.  
That a single matching agreement in Active state is found. | [validation message 295](<validation_messages.md#295>) | Margin Call is not imported.  
That the single matching Agreement is assigned to a Central Clearing Agreement Group. | [Validation Message 340](<validation_messages.md#340>) | Margin Call is not imported.  
Whether the Margin Call is duplicated on the import file. | [validation message 294](<validation_messages.md#294>) | None of the duplicates are loaded.  
  
Note a margin call is unique based on combination of the following values  
  
Principal  
  
Counterparty  
  
Clearing Client if included  
  
Margin Type  
  
Agreement Currency  
Margin Call Matches an agreement that has a status of Monitor | [validation message 298](<validation_messages.md#298>) | The Margin Call is loaded.  
Margin Call Matches an agreement that is locked for approval | [validation message 297](<validation_messages.md#297>) | Margin Call is imported.  
Margin Call Matches an agreement that currently has a margin call for today in another Central clearing workflow state. | [Validation Message 296](<validation_messages.md#296>) | Margin Call is not imported.  
Whether the Margin Call Amount on import file is defined as zero. | [validation message 301](<validation_messages.md#301>) | The Margin Call is imported, but Call type is altered to be No Action, irrespective of the corresponding value on the import file.  
Whether Margin Call has a defined lock up amount but doesn't have a Margin Type of Lock Up. | [validation message 300](<validation_messages.md#300>) The Margin Call is imported, but the Lock Up amount is set to null. |   
Margin Call has a defined exposure amount but doesn't have a Margin Type of Variation. | [validation message 299](<validation_messages.md#299>) | The Margin Call is imported, but the exposure amount is set to Null.  
**That a Price Source, Quote Type and Price Date Adjustment exist for any In House Collateral Positions and Movements.**  
  
Although In House Collateral Positions are not included in the actual imported margin call, their current value is calculated during the Margin Call Import.  
  
See [Understanding Collateral Held and Posted Values on Central Clearing Agreements](<central_clearing_collat_held_posted.md>). | [validation message 197](<validation_messages.md#197>) | The Margin Call is imported with a warning status and the corresponding collateral position / movement is assigned a zero value.  
Additionally, as part of calculating the market for In House Collateral Positions and Movements, a full eligibility check is run on any positions. | [validation message 202](<validation_messages.md#202>) | The Margin Call is imported with a warning status and the corresponding collateral position / movement is assigned a zero value.  
  
**Note:** Collateral values on the Margin call import file are imported into the corresponding Collateral Held per CCP and Collateral Posted per CCP fields. As part of the Margin Call Import process, the values for any in house held / posted positions are also calculated, and the values populated in the margin call grid into Collateral Held and Collateral Posted fields.

However, it should be recognized that these "in house" values are not used in the imported margin calculation result. They are informational only.
