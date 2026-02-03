
# File Format for Agreement Replication

## Overview

TLM® Collateral Management allows an import configuration for the creation of a new Agreement(s) from an existing Agreement.

## Scope of Functionality

Agreement Replication supports:

  * All Business Lines
  * Defining a new Agreement Name
  * Defining a new Agreement Status
  * Defining a new Counterparty Name
  * Copying of all existing Agreement parameters except:

1) Source Reference

2) Agreement Name (sets newly defined name)

3) Agreement Status (sets newly defined status)

4) Counterparty Name (sets newly defined name)

5) Counterparty Credit Support Provider

6) Counterparty Managing Location

7) Notification Time

8) Status Detail

9) Documentation History details

10) Master Agreement details

11) Agreement Alias

12) Trade Coverage (new agreement will default Trade Types as per Agreement Type definition and Specific Trade Coverage will be set to NULL)

13) Notes

14) Contacts

15) Settlement Instructions

16) Agreement Margins




## Considerations of Functionality

  1. The Agreement Replication import processes data on an [Insert Only](<import_data_summary.md>) basis. This means no existing agreements can be updated via this import. 

All subsequent updates to a newly replicated agreement can be accomplished by:

     * Manual update via the UI Agreement form
     * [Agreements](<import_agreements.md>) and/or [Agreements Lock Up Only](<import_agreement_lock_up_only.md>) Imports
  2. Agreement Replication can only occur within the same Business Line. This means the terms of an OTC Agreement to a Client Clearing or OTC Lock Up Only Agreement cannot be replicated. If the existing agreement is an OTC Lock Up Only agreement, only a new OTC Lock Up Only agreement(s) can be created from the existing agreement.

  3. If an existing agreement being replicated is defined within an Agreement Group, the Agreement Group will be copied over to the new replicated agreement(s).
  4. Agreement extension data values will only copy over to a new agreement if the Agreement Extension Reference Data object has Copy On New From checked. If Copy On New From is not checked, then the extension value on the new agreement will be populated with the default value for the extension as defined on the Agreement Extension Reference Data object.
  5. Agreement(s) can only be replicated from an existing agreement within the system. Agreement(s) from a newly replicated agreement within the import file cannot be replicated.



For example, the import configuration file should look like this:

ExistingAgreementName | NewAgreementName | CounterpartyName | AgreementStatus  
---|---|---|---  
Big Bank LLC | ABC Bank Inc | ABC Inc | Active  
ABC Bank Inc | XYZ Investments LLC | XYZ LLC | Active  
  
Agreement XYZ Investments LLC will not be able to be created by replicating the agreement ABC Bank Inc because the ABC Bank Inc agreement is a replication of another agreement within the same import configuration file and the agreement ABC Bank Inc does not exist in the system yet.

## Data Mapping and Validations

Agreements Display Name | Mapping File Column Name | Mandatory | Type, Length and Comments | Example | Description  
---|---|---|---|---|---  
Counterparty Name (new) | CounterpartyName | Yes | Char(255) | ABC Bank Ltd. | The name of the new Counterparty to be assigned to the new agreement.  
  
The Counterparty Name must exist in the system.  
  
[Validation message number 370](<validation_messages.md#370>)  
  
The Counterparty Name must be defined as a valid Counterparty Entity within the system.  
  
[Validation message number 371](<validation_messages.md#371>)  
  
The Counterparty Name must be a valid Counterparty Entity for the Business Line of the agreement being imported.  
  
[Validation message number 372](<validation_messages.md#372>)  
Agreement Name (existing) | ExistingAgreementName | Yes | Char(255) | ABC Bank Csa | The name of the existing collateral agreement to be replicated.  
  
Agreement names must exist in the system.  
  
[Validation message number 369](<validation_messages.md#369>)  
  
Agreement names cannot be the same as new Agreement names.  
  
[Validation message number 373](<validation_messages.md#373>)  
  
**Note:** If the Agreement is [Locked for Approval](<agreements_approvals.md>), [validation message 263](<validation_messages.md#263>) will be raised, and the new agreement will not be imported.  
Agreement Name (new) | NewAgreementName | Yes | Char(255) | XYZ Bank Csa | The name of the new collateral agreement to be created.  
  
Agreement names must be unique.  
  
[Validation message number 378](<validation_messages.md#378>)  
  
Agreement names cannot be the same as an existing agreement alias.  
  
[Validation message number 141](<validation_messages.md#141>)  
  
Agreement names cannot already exist in the system.  
  
[Validation message number 376](<validation_messages.md#376>)  
  
Agreement Name cannot be the same as an existing Agreement Name within the import file.  
  
[Validation message number 373](<validation_messages.md#393>)  
Agreement Status | NewAgreementStatus | No | Char(100) | Active  
  
Inactive  
  
Monitor | Determines whether the Agreement will be subject to the Margin Calculation Task, and whether the margin calculation will be fully applied.  
  
**Active** \- All Margin Calls will be generated.  
  
**Inactive** \- Agreement will not be included in Margin calculation tasks.  
  
**Monitor** \- Agreement will be included in Margin Calculation task but only No Action Margin Calls will be generated irrespective of margin parameters.  
  
The value on the data file must match a value defined in the database, otherwise [validation message number 375](<validation_messages.md#375>) is raised.  
  
If the value is not supplied within the import file, the value will be defaulted to Inactive and [validation message number 374](<validation_messages.md#374>) is raised.  
  
**Note:** When new agreements are inserted into the database, the data that is being copied onto the new agreement undergoes all the existing validations even though the data is not specifically defined in the import configuration file. Should a validation error occur during the processing of this copied data, [validation message number 377](<validation_messages.md#377>) is raised and displayed in the task status screen as Agreement Name + exception message. The exception message can be any of the [validation messages](<validation_messages.md>) defined.
